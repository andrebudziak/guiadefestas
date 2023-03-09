using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;


public partial class LerFoto : System.Web.UI.Page
{
    private string connstring = ConfigurationManager.AppSettings["ConnectionString"];

    protected void Page_Load(object sender, EventArgs e)
    {
        int width = Convert.ToInt32(Request.QueryString["w"]);
        int height = Convert.ToInt32(Request.QueryString["h"]); 

        SqlConnection MyConnection2 = new SqlConnection();
        MyConnection2.ConnectionString = connstring;
        if (Request.QueryString["file"] != null)
        {
            SqlCommand k = new SqlCommand("SELECT * FROM IMAGEM WHERE DESCRICAO = @NOME", MyConnection2);
            k.Parameters.Add("@NOME", SqlDbType.VarChar, 200);
            k.Parameters["@NOME"].Value = Request.QueryString["file"].ToString();
            k.Connection.Open();
            SqlDataReader dr = k.ExecuteReader();
            if (dr.Read())
            {
                if (dr.GetInt32(2) != 0)
                {
                    Response.ContentType = dr["tipo"].ToString();
                    Response.BinaryWrite((byte[])dr["imagem"]);
                }
            }

            k.Dispose();
            MyConnection2.Close();
        }
    }
    //função complementar 
    public bool ThumbnailCallback()
    {
        return true;
    } 


}
