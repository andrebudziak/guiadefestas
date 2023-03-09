using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class bonus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblData.Text = "Curitiba," + DateTime.Now.ToString();
            txtCodigoAnunciante.Visible = false;
            if (Request.QueryString["anunciante"] != null)
            {
               txtCodigoAnunciante.Text = Request.QueryString["anunciante"].ToString();
               //Alimenta Anunciantes
               WebService ws = new WebService();               
               DataSet dadosA = new DataSet();
               dadosA = ws.bonusAnunciante(Convert.ToInt32(txtCodigoAnunciante.Text));

               lblAnunciante.Text = dadosA.Tables[0].Rows[0]["descricao"].ToString();
               lblEndereco.Text = dadosA.Tables[0].Rows[0]["endereco"].ToString() + "</br>" + 
                                  dadosA.Tables[0].Rows[0]["bairro"].ToString()+ dadosA.Tables[0].Rows[0]["cidade"].ToString();
               imgBonus.Src = "~/bonus/" + dadosA.Tables[0].Rows[0]["bonus"].ToString() + "";

            }
        }
    }
    protected void btn_imprimir_Click(object sender, ImageClickEventArgs e)
    {
        if ((txtEmail.Text != "") && (txtNome.Text != "") && (txtFone.Text != ""))
        {
            string myScript = @"window.print();";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);

            WebService ws = new WebService();               
            if(ws.IncluirBonusRetorno(0,Convert.ToInt32(txtCodigoAnunciante.Text),txtNome.Text,txtFone.Text,txtEmail.Text,DateTime.Now) ==0 )
            {
               string myScript2 = @"alert('Erro ao gravar informacoes!');";
               ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript2 + "</script>", false);            
            }

        }
        else
        {
            string myScript = @"alert('Campos Nome, Telefone e Email sao obrigatorios!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }

    }
   
}
