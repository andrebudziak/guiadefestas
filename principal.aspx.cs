using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class principal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblHash.Visible = false;

            if (Request.QueryString["h"] != null)
            {
                lblHash.Text = Request.QueryString["h"].ToString();
            }
            else
            {
                Response.Redirect("loginnovo.aspx");
            }        
        }
    }


    protected void lbtnCliente_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_cliente.aspx";
    }
    protected void lbtnAnuncio_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_anuncio.aspx";
    }
    protected void lbtnFinanceiro_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_financeiro.aspx";
    }
    protected void lbtnBanner_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_banner.aspx";
    }
    protected void lbtnBonus_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_bonus.aspx";
    }
    protected void lbtnCategoria_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_categoria.aspx";
    }
    protected void lbtnCategoriaAnuncio_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_categoria_anuncio.aspx";
    }
    protected void lbtnLinkAnuncio_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_link.aspx";

    }
    protected void lbtnLogo_Click(object sender, EventArgs e)
    {
        ifPrincial.Attributes["src"] = "cadastro_logo.aspx";

    }

}
