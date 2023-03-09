﻿using System;
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

public partial class cadastro_categoria : System.Web.UI.Page
{
    private WebService ws = new WebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblCodigo.Visible = false;
            //  set the key names from my data class.
            grdCategoria.DataKeyNames = new WebService().PrimaryKeyColumnNames;
        }

    }

    private bool LoadDataEmpty
    {
        //  some controls that are used within a GridView, such as the calendar control, can cuase post backs.
        //  we need to preserve LoadDataEmpty across post backs.
        get { return (bool)(ViewState["LoadDataEmpty"] ?? false); }
        set { ViewState["LoadDataEmpty"] = value; }
    }

    protected void grdCategoria_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //  handle the save button on the footer row.
        if (e.CommandName == "Save")
        {
            ObjectDataSource1.Insert();
        }
        if (e.CommandName == "Update")
        {
            ObjectDataSource1.Update();
        }

    }

    protected void grdCategoria_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //  when binding a row, look for a zero row condition based on the flag.
        //  if we have zero data rows (but a dummy row), hide the grid view row
        //  and clear the controls off of that row so they don't cause binding errors
        if (LoadDataEmpty && e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Visible = false;
            e.Row.Controls.Clear();
        }
    }
    protected void ObjectDataSource1_Deleting(object sender, ObjectDataSourceMethodEventArgs e)
    {
        e.InputParameters["codigo"] = lblCodigo.Text;
    }

    protected void ObjectDataSource1_Inserting(object sender, ObjectDataSourceMethodEventArgs e)
    {
        //  on insert, pass the values from the footer controls.
        e.InputParameters["codigo"] = ((TextBox)grdCategoria.FooterRow.FindControl("txtCodigo")).Text;
        e.InputParameters["nome"] = ((TextBox)grdCategoria.FooterRow.FindControl("txtDescricao")).Text;
        e.InputParameters["tipocategoria"] = ((DropDownList)grdCategoria.FooterRow.FindControl("ddlTipoCategoria")).SelectedValue;
        e.InputParameters["observacao"] = ((TextBox)grdCategoria.FooterRow.FindControl("txtTexto")).Text;

    }

    protected void ObjectDataSource1_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        //  bubble exceptions before we touch e.ReturnValue
        if (e.Exception != null)
        {
            throw e.Exception;
        }

        //  get the DataTable from the ODS select mothod
        DataSet dataTable = (DataSet)e.ReturnValue;

        //  if rows=0 then add a dummy (null) row and set the LoadDataEmpty flag.
        if (dataTable.Tables[0].Rows.Count == 0)
        {
            dataTable.Tables[0].Rows.Add(dataTable.Tables[0].NewRow());
            LoadDataEmpty = true;
        }
        else
        {
            LoadDataEmpty = false;
        }

    }

    protected void ObjectDataSource1_Updating(object sender, ObjectDataSourceMethodEventArgs e)
    {
        e.InputParameters["codigo"] = ((TextBox)grdCategoria.Rows[grdCategoria.EditIndex].FindControl("txtCodigo")).Text;
        e.InputParameters["nome"] = ((TextBox)grdCategoria.Rows[grdCategoria.EditIndex].FindControl("txtDescricao")).Text;
        e.InputParameters["tipocategoria"] = ((DropDownList)grdCategoria.Rows[grdCategoria.EditIndex].FindControl("ddlTipoCategoria")).SelectedValue;
        e.InputParameters["observacao"] = ((TextBox)grdCategoria.Rows[grdCategoria.EditIndex].FindControl("txtTexto")).Text;
    }

    protected void grdCategoria_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int codigo = Convert.ToInt32(((Label)grdCategoria.Rows[index].FindControl("lblCodigo")).Text);
        lblCodigo.Text = codigo.ToString();
    }
}
