using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Common;
using System.Text;
using System.IO;

public partial class categoria : System.Web.UI.Page
{
    private int vTipoCategoria = 0;
    private string vCategoria = "";
    private WebService ws = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblCodigoCategoria.Visible = false;
        lblDescricao.Visible = false;
        lblTituloCat.Visible = true;      
        

        if (!IsPostBack)
        {
            if (Request.QueryString["tipo_categoria"] != null)
            {
                string palavras = "Curitiba,Guia de Festas Curitiba,Festas Curitiba,festas,";

                //MontaMenu 1
                /*
                DataSet dados = new DataSet();
                dados = ws.montamenu("1");
                grdMenu.DataSource = dados;
                grdMenu.DataBind();

                //MontaMenu 2
                DataSet dados2 = new DataSet();
                dados2 = ws.montamenu("2");
                grdMenu2.DataSource = dados2;
                grdMenu2.DataBind();
                */


                if (Request.QueryString["c"] == null)
                {
                    lblCodigoCategoria.Text = Request.QueryString["tipo_categoria"].ToString();
                    vTipoCategoria = Convert.ToInt32(Request.QueryString["tipo_categoria"].ToString());
                    lblDescricao.Text = "0";
                }
                else
                {
                    vTipoCategoria = 0;
                    lblCodigoCategoria.Text = "0";
                    lblDescricao.Text = Request.QueryString["c"].ToString();

                }

                //if (Request.QueryString["c"] == null)
                //{
                 //   lblDescricao.Text = "0";
               
                   //Alimenta Anunciantes
                    /*
                   DataSet dadosA = new DataSet();
                   dadosA = ws.ConsultaAnuncianteDescricao(Request.QueryString["c"].ToString());
                   dlAnunciante.DataSource = dadosA;
                   dlAnunciante.DataBind();
                     */

                //}
             
               /*
                #region MontaBannerLateral
                DataSet dados3 = new DataSet();
                dados3 = ws.montabannerlateral("2");
                dlPublicidade.DataSource = dados3;
                dlPublicidade.DataBind();
                #endregion
                */
                
                DataSet dados = new DataSet();
                dados = ws.descricaoCategoria(Convert.ToString(vTipoCategoria));
                if(dados.Tables[0].Rows.Count !=0)
                {
                    lblTituloCat.Text = dados.Tables[0].Rows[0]["descricao"].ToString();
                    frTopo.Attributes["src"] = "topo.aspx?tipo_categoria=" + vTipoCategoria.ToString();
                }                

                ws.Dispose();

            }
        }


    }

    protected void dlAnunciante_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DataRowView dbr = (DataRowView)e.Item.DataItem;
        /*
        DataRowView dbr = (DataRowView)e.Item.DataItem;
        if (Convert.ToString(DataBinder.Eval(dbr, "tipo")) == "application/x-shockwave-flash")
        {
            Label lbl = (Label)e.Item.FindControl("lblNome");
            lbl.Text ="<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' "+
                                    "codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' "+
                                    "width='120' height='100' title='casa'>"+
                                    "                   <param name='movie' value='LerFoto.aspx?img=1&file="+Convert.ToString(DataBinder.Eval(dbr, "nomeimagem"))+"'>"+
                                    "                   <param name='quality' value='High'>"+
                                    "                   <param name='_cx' value='3598'>"+
                                    "                   <param name='_cy' value='2540'>"+
                                    "                   <param name='FlashVars' value>"+
                                    "                   <param name='Src' value='LerFoto.aspx?img=1&file="+Convert.ToString(DataBinder.Eval(dbr, "nomeimagem"))+"'>"+
                                    "                   <param name='WMode' value='transparent'>"+
                                    "                   <param name='Play' value='-1'>"+
                                    "                   <param name='Loop' value='-1'>"+
                                    "                   <param name='SAlign' value>"+
                                    "                   <param name='Menu' value='-1'>"+
                                    "                   <param name='Base' value>"+
                                    "                   <param name='AllowScriptAccess' value>"+
                                    "                   <param name='Scale' value='ShowAll'>"+
                                    "                   <param name='DeviceFont' value='0'>"+
                                    "                   <param name='EmbedMovie' value='0'>"+
                                    "                   <param name='BGColor' value>"+
                                    "                   <param name='SWRemote' value>"+
                                    "                   <param name='MovieData' value>"+
                                    "                   <param name='SeamlessTabbing' value='1'>"+
                                    "                   <param name='Profile' value='0'>"+
                                    "                   <param name='ProfileAddress' value>"+
                                    "                   <param name='ProfilePort' value='0'>"+
                                    "                   <param name='AllowNetworking' value='all'>"+
                                    "                   <param name='AllowFullScreen' value='false'>"+
                                    "                   <embed src='LerFoto.aspx?img=1&file="+Convert.ToString(DataBinder.Eval(dbr, "nomeimagem"))+"' quality='High' "+
                                    "    pluginspage='http://www.macromedia.com/go/getflashplayer' "+
                                    "    type='application/x-shockwave-flash' width='120' height='96' wmode='transparent'></embed></object>";
        }
        else
        {
            Label lbl = (Label)e.Item.FindControl("lblNome");
            lbl.Text = "<img border='0' src='LerFoto.aspx?img=1&file=" + Convert.ToString(DataBinder.Eval(dbr, "nomeimagem")) + "' />";
        }
        */
        if (Convert.ToString(DataBinder.Eval(dbr, "logo")) != "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgLogo");
            btn.Src = "imagens/logos/" + Convert.ToString(DataBinder.Eval(dbr, "logo"));
            HyperLink lnk = (HyperLink)e.Item.FindControl("aLogo");
            lnk.Attributes["onclick"] = Convert.ToString(DataBinder.Eval(dbr, "site"));
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "bonus")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgBonus");
            btn.Src = "imagens/SEMBONUS.png";
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
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgSite");
            btn.Src = "imagens/SEMWEB.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
        }
        else
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aSite");
            lnk.Attributes["href"] = "http://"+Convert.ToString(DataBinder.Eval(dbr, "site"));     
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "email")) == "")
        {
            HtmlImage btn = (HtmlImage)e.Item.FindControl("imgEmail");
            btn.Src = "imagens/SEMEMAIL.png";
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
        }
        else
        { 
            HyperLink lnk = (HyperLink)e.Item.FindControl("aEmail");
            lnk.Attributes["href"] = "mailto:"+Convert.ToString(DataBinder.Eval(dbr, "email"));       
        }

        if (Convert.ToString(DataBinder.Eval(dbr, "orkut")) != "")
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aOrkut");
            lnk.Attributes["href"] = Convert.ToString(DataBinder.Eval(dbr, "orkut"));
        }
        if (Convert.ToString(DataBinder.Eval(dbr, "facebook")) != "")
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aFacebook");
            lnk.Attributes["href"] = Convert.ToString(DataBinder.Eval(dbr, "facebook"));
        }
        if (Convert.ToString(DataBinder.Eval(dbr, "twitter")) != "")
        {
            HyperLink lnk = (HyperLink)e.Item.FindControl("aTwitter");
            lnk.Attributes["href"] = Convert.ToString(DataBinder.Eval(dbr, "twitter"));
        }

    }
    protected void btnBusca_Click(object sender, ImageClickEventArgs e)
    {
        if (txtValor.Text != "")
        {
            //Busca Anunciantes
            lblCodigoCategoria.Text = "0";
            lblDescricao.Text = txtValor.Text;
            dlAnunciante.Dispose();
            ObjectDataSource1.Dispose();
            ObjectDataSource1.Select();
            /*
            DataSet dadosA = new DataSet();
            dadosA = ws.ConsultaAnuncianteDescricao(txtValor.Text);
            dlAnunciante.DataSource = dadosA;
            dlAnunciante.DataBind();
             */ 
        }
        else
        {
           string myScript = @"alert('Digite um conteudo para pesquisa!');";
           ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);        
        }

    }
    protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {
        e.InputParameters["codigo_categoria"] = lblCodigoCategoria.Text;
        e.InputParameters["nome_fantasia"] = lblDescricao.Text;
        
    }
}
