using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Service : System.Web.Services.WebService
{
    private string connstring = ConfigurationManager.AppSettings["ConnectionString"];

    public Service () 
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(Description = "Logar no sistema")]
    public String authenticateUser(string UserName, string Password)
    {
    
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connstring;
        con.Open();

        SqlCommand comm = new SqlCommand("select descricao, senha from usuario where descricao = @usuario AND senha = @senha", con);
        SqlParameter pUserName = new SqlParameter("@usuario", UserName);
        SqlParameter pPassword = new SqlParameter("@senha", Password);

        comm.Parameters.Add(pUserName);
        comm.Parameters.Add(pPassword);

        SqlDataReader r = comm.ExecuteReader();
        bool result = r.HasRows;
        con.Close();

		if (result == true)
		{
            return "Ok";
		}
		else
		{
            return "Usuário e/ou Senha Invalidos!";
		}

    }
    
}
