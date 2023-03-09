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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dlAnunciante_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DataRowView dbr = (DataRowView)e.Item.DataItem;
        if (Convert.ToString(DataBinder.Eval(dbr, "tipo")) == "application/x-shockwave-flash")
        {
            Label lbl = (Label)e.Item.FindControl("lblNome");
            lbl.Text = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' " +
                                    "codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' " +
                                    "width='120' height='100' title='casa'>" +
                                    "                   <param name='movie' value='LerFoto.aspx?img=1&file=" + Convert.ToString(DataBinder.Eval(dbr, "nomeimagem")) + "'>" +
                                    "                   <param name='quality' value='High'>" +
                                    "                   <param name='_cx' value='3598'>" +
                                    "                   <param name='_cy' value='2540'>" +
                                    "                   <param name='FlashVars' value>" +
                                    "                   <param name='Src' value='LerFoto.aspx?img=1&file=" + Convert.ToString(DataBinder.Eval(dbr, "nomeimagem")) + "'>" +
                                    "                   <param name='WMode' value='transparent'>" +
                                    "                   <param name='Play' value='-1'>" +
                                    "                   <param name='Loop' value='-1'>" +
                                    "                   <param name='SAlign' value>" +
                                    "                   <param name='Menu' value='-1'>" +
                                    "                   <param name='Base' value>" +
                                    "                   <param name='AllowScriptAccess' value>" +
                                    "                   <param name='Scale' value='ShowAll'>" +
                                    "                   <param name='DeviceFont' value='0'>" +
                                    "                   <param name='EmbedMovie' value='0'>" +
                                    "                   <param name='BGColor' value>" +
                                    "                   <param name='SWRemote' value>" +
                                    "                   <param name='MovieData' value>" +
                                    "                   <param name='SeamlessTabbing' value='1'>" +
                                    "                   <param name='Profile' value='0'>" +
                                    "                   <param name='ProfileAddress' value>" +
                                    "                   <param name='ProfilePort' value='0'>" +
                                    "                   <param name='AllowNetworking' value='all'>" +
                                    "                   <param name='AllowFullScreen' value='false'>" +
                                    "                   <embed src='LerFoto.aspx?img=1&file=" + Convert.ToString(DataBinder.Eval(dbr, "nomeimagem")) + "' quality='High' " +
                                    "    pluginspage='http://www.macromedia.com/go/getflashplayer' " +
                                    "    type='application/x-shockwave-flash' width='120' height='96' wmode='transparent'></embed></object>";
        }
        else
        {
            Label lbl = (Label)e.Item.FindControl("lblNome");
            lbl.Text = "<img border='0' src='LerFoto.aspx?img=1&file=" + Convert.ToString(DataBinder.Eval(dbr, "nomeimagem")) + "' />";
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "bonus")) == "")
        {
            Image btn = (Image)e.Item.FindControl("imgBonus");
            btn.ImageUrl = "imagens/SEMBONUS.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aBonus");
            lnk.Attributes["onclick"] = "";
        }
        else
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aBonus");
            lnk.Attributes["onclick"] = "javascript:window.open('bonus.aspx?anunciante=" + Convert.ToString(DataBinder.Eval(dbr, "codigo")) + "', null, 'left = 400, top = 100, height = 480, width = 500, status = no, resizable = no, scrollbars = no, toolbar = no, location = no, menubar = no'); void(0)";
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "site")) == "")
        {
            Image btn = (Image)e.Item.FindControl("imgSite");
            btn.ImageUrl = "imagens/SEMWEB.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
        }
        else
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
            lnk.Attributes["href"] = "http://" + Convert.ToString(DataBinder.Eval(dbr, "site"));
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "email")) == "")
        {
            Image btn = (Image)e.Item.FindControl("imgEmail");
            btn.ImageUrl = "imagens/SEMEMAIL.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
        }
        else
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
            lnk.Attributes["href"] = "mailto:" + Convert.ToString(DataBinder.Eval(dbr, "email"));
        }

    }
    protected void btnBusca_Click(object sender, ImageClickEventArgs e)
    {
        if (txtValor.Text != "")
        {
            //Busca Anunciantes
           // DataSet dadosA = new DataSet();
           // dadosA = ws.ConsultaAnuncianteDescricao(txtValor.Text);
           // dlAnunciante.DataSource = dadosA;
           // dlAnunciante.DataBind();
        }
        else
        {
            string myScript = @"alert('Digite um conteudo para pesquisa!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
    }
    protected void ddlFiltro_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
