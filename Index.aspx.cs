﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            /*
            WebService ws = new WebService();

            //#region MontaMenu
            
            DataSet dados = new DataSet();
            dados = ws.montamenu("1");
            grdMenu.DataSource = dados;
            grdMenu.DataBind();

            //#region MontaMenu
            DataSet dados2 = new DataSet();
            dados2 = ws.montamenu("2");
            grdMenu2.DataSource = dados2;
            grdMenu2.DataBind();

            #region MontaBannerPrincipal
            DataSet dados4 = new DataSet();
            dados4 = ws.montabannerlateral("2");

            dlPublicidade.DataSource = dados4;
            dlPublicidade.DataBind();
            #endregion

            ws.Dispose();
            */

        }

    }
    protected void btnBusca_Click(object sender, ImageClickEventArgs e)
    {
        if (txtValor.Text != "")
        {
            Response.Redirect("categoria.aspx?tipo_categoria=0&c=" + txtValor.Text);
        }
        else
        {
            string myScript = @"alert('Digite um conteudo para pesquisa!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }

    }
}
