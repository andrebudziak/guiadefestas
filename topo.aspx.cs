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

public partial class topo : System.Web.UI.Page
{
    private DataSet dadosBanner = new DataSet();
    private WebService ws = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            if (Request.QueryString["tipo_categoria"] != null)
            {
                int vTipoCategoria = Convert.ToInt32(Request.QueryString["tipo_categoria"].ToString());


                #region MontaBannerSuperior

                //banner lado esquerdo pequeno
                dadosBanner = ws.montaBannerSuperior(vTipoCategoria, 3);
                if (dadosBanner.Tables[0].Rows.Count > 0)
                {
                    Label lblBannerSE = new Label();
                    lblBannerSE.ID = "hplBannerSE";

                    lblBannerSE.Text = "<object classid='clsid:D27CDB6E-AE6D-11CF-96B8-444553540000' id='obj10' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' border='0' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "'>" +
                                       "<param name='movie' value='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "'>" +
                                       "<param name='quality' value='High'>" +
                                       "<embed src='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' name='obj10' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "' quality='High'></object>";


                    pnBannerEsquerdo.Controls.Add(lblBannerSE);
                    lblBannerSE.Visible = true;
                }

                //banner central
                dadosBanner = ws.montaBannerSuperior(vTipoCategoria, 4);
                if (dadosBanner.Tables[0].Rows.Count > 0)
                {
                    Label lblBannerCe = new Label();
                    lblBannerCe.ID = "hplBannerSE";

                    lblBannerCe.Text = "<object classid='clsid:D27CDB6E-AE6D-11CF-96B8-444553540000' id='obj10' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' border='0' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "'>" +
                                       "<param name='movie' value='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "'>" +
                                       "<param name='quality' value='High'>" +
                                       "<embed src='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' name='obj10' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "' quality='High'></object>";

                    pnBannerCentral.Controls.Add(lblBannerCe);
                    lblBannerCe.Visible = true;
                }

                //banner lado direito pequeno
                dadosBanner = ws.montaBannerSuperior(vTipoCategoria, 5);
                if (dadosBanner.Tables[0].Rows.Count > 0)
                {
                    Label lblBannerSD = new Label();
                    lblBannerSD.ID = "hplBannerSE";

                    lblBannerSD.Text = "<object classid='clsid:D27CDB6E-AE6D-11CF-96B8-444553540000' id='obj10' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' border='0' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "'>" +
                                       "<param name='movie' value='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "'>" +
                                       "<param name='quality' value='High'>" +
                                       "<embed src='banners/" + dadosBanner.Tables[0].Rows[0]["descricao"].ToString() + "' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' name='obj10' width='" + dadosBanner.Tables[0].Rows[0]["largura"].ToString() + "' height='" + dadosBanner.Tables[0].Rows[0]["altura"].ToString() + "' quality='High'></object>";

                    pnBannerDireito.Controls.Add(lblBannerSD);
                    lblBannerSD.Visible = true;
                }
                #endregion

            }

        }

    }
}
