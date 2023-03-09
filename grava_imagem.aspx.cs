using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class grava_imagem : System.Web.UI.Page
{  
    private string connstring = ConfigurationManager.AppSettings["ConnectionString"];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           tedCodigoAnunciante.Visible = false;
           tedCodigoImagem.Visible = false;
           tedCodigoAnunciante.Text = Request.QueryString["codigo_anunciante"].ToString();
           tedCodigoImagem.Text = Request.QueryString["codigo_imagem"].ToString();
        }
      
    }
    protected void cmdGravarImagem_Click(object sender, EventArgs e)
    {  
       string strTipo = fileImagemParaGravar.PostedFile.ContentType;
       int intTamanho = System.Convert.ToInt32(fileImagemParaGravar.PostedFile.InputStream.Length);

       byte[] byteImagem = new byte[intTamanho];
       fileImagemParaGravar.PostedFile.InputStream.Read(byteImagem, 0, intTamanho);

       SqlConnection MyConnection2 = new SqlConnection();
       MyConnection2.ConnectionString = connstring;

       SqlCommand MyCommand = new SqlCommand("sp_inclui_imagem", MyConnection2);
       SqlTransaction transacao;
       MyConnection2.Open();

       transacao = MyConnection2.BeginTransaction("iTransI");
       MyCommand.Connection = MyConnection2;
       MyCommand.Transaction = transacao;

       try
       {
          MyCommand.CommandType = CommandType.StoredProcedure;
          MyCommand.Parameters.Add("@codigo", SqlDbType.Int).Value = Convert.ToInt32(tedCodigoImagem.Text);
          MyCommand.Parameters.Add("@codigo_anunciante", SqlDbType.NVarChar).Value = Convert.ToInt32(tedCodigoAnunciante.Text);
          MyCommand.Parameters.Add("@descricao", SqlDbType.NVarChar).Value = tedDescricao.Text;
          MyCommand.Parameters.Add("@imagem", SqlDbType.Image).Value = byteImagem;
          MyCommand.Parameters.Add("@tamanho", SqlDbType.Int).Value = intTamanho;
          MyCommand.Parameters.Add("@tipo", SqlDbType.NVarChar).Value = strTipo;

          MyCommand.ExecuteNonQuery();

          transacao.Commit();
          lblMensagem.Text = "Imagem incluida com sucesso";


       }
       catch (Exception ex)
       {
           lblMensagem.Text = "Erro de gravação: " + ex.GetType();
           lblMensagem.Text = "  Mensagem: " + ex.Message;

           // Attempt to roll back the transaction.
           try
           {
               transacao.Rollback();
           }
           catch (Exception ex2)
           {
              lblMensagem.Text = "Exceção de Rollback : " + ex2.GetType();
              lblMensagem.Text = "  Mensagem: " + ex2.Message;
           }
       }       

    }
}
