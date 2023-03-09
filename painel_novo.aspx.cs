using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    private WebService ws = new WebService();
    private DataSet dadosCliente = new DataSet();
    private DataSet dadosAnuncio = new DataSet();
    private DataSet dadosFinanceiro = new DataSet();
    private DataSet dadosBanner = new DataSet();
    private DataSet dadosBonus = new DataSet();
    private DataSet dadosCategoria = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["h"] != null)
            {            

                txtCodigo_Cliente.Visible = false;
                txtCodigoAnuncio.Visible = false;
                txtCodigoBanner.Visible = false;
                txtCodigoBonus.Visible = false;
                txtCodigoCategoria.Visible = false;
                tcControle.ActiveTabIndex = 0;
                txtCodigo_Cliente.Text = "0";

                dadosCliente = ws.ConsultaCliente(0);
                grdCliente.DataSource = dadosCliente;
                grdCliente.DataBind();

            }
            else
            {
                Response.Redirect("loginnovo.aspx");
            
            }
        }

    }


    protected void grdCliente_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
            dadosCliente = ws.ConsultaCliente(0);
            txtCodigo_Cliente.Text = dadosCliente.Tables[0].Rows[0]["codigo"].ToString();
            ws.ExcluirCliente(Convert.ToInt32(grdCliente.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            dadosCliente = ws.ConsultaCliente(0);
            grdCliente.DataSource = dadosCliente;
            grdCliente.DataBind();
        }
        if (e.CommandName == "Alterar")
        {
            dadosCliente = ws.ConsultaCliente(Convert.ToInt32(grdCliente.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            txtCodigo_Cliente.Text = dadosCliente.Tables[0].Rows[0]["codigo"].ToString();
            txtRazaoSocial.Text = dadosCliente.Tables[0].Rows[0]["razao_social"].ToString();
            txtCnpj.Text = dadosCliente.Tables[0].Rows[0]["cnpj"].ToString();
            txtCpf.Text = dadosCliente.Tables[0].Rows[0]["cpf"].ToString();
            txtRg.Text = dadosCliente.Tables[0].Rows[0]["rg"].ToString();
            txtEndereco.Text = dadosCliente.Tables[0].Rows[0]["endereco"].ToString();
            txtCep.Text = dadosCliente.Tables[0].Rows[0]["cep"].ToString();
            txtBairro.Text = dadosCliente.Tables[0].Rows[0]["bairro"].ToString();
            txtCidade.Text = dadosCliente.Tables[0].Rows[0]["cidade"].ToString();
            txtEmail.Text = dadosCliente.Tables[0].Rows[0]["email"].ToString();
            txtResponsavel.Text = dadosCliente.Tables[0].Rows[0]["responsavel"].ToString();

        }

    }
    protected void btnIncluirCliente_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirCliente(0,txtRazaoSocial.Text,txtCnpj.Text,txtCpf.Text,txtRg.Text,txtEndereco.Text,txtCep.Text,txtBairro.Text,txtCidade.Text,txtEmail.Text,txtResponsavel.Text,txtTelefone.Text,"");
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao incluir Cliente!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro Salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtRazaoSocial.Text="";
            txtCnpj.Text="";
            txtCpf.Text="";
            txtRg.Text="";
            txtEndereco.Text="";
            txtCep.Text="";
            txtBairro.Text="";
            txtCidade.Text="";
            txtEmail.Text="";
            txtResponsavel.Text="";
        }

    }

    protected void btnIncluirAnuncio_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirAnuncio(0, Convert.ToInt32(txtCodigo_Cliente.Text), txtCepAnuncio.Text, txtBairroAnuncio.Text, txtCidadeAnuncio.Text, txtEnderecoAnuncio.Text, txtTelefoneAnuncio.Text, txtEmailAnuncio.Text, txtSiteAnuncio.Text,1,txtSenhaAnuncio.Text);
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao incluir anuncio!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
           
            string myScript = @"alert('Registro Salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtCodigoAnuncio.Text="";            
            txtEmpresa.Text=""; 
            txtCepAnuncio.Text=""; 
            txtBairroAnuncio.Text=""; 
            txtCidadeAnuncio.Text=""; 
            txtEnderecoAnuncio.Text=""; 
            txtTelefoneAnuncio.Text=""; 
            txtEmailAnuncio.Text=""; 
            txtSiteAnuncio.Text=""; 
            txtSenhaAnuncio.Text=""; 
        }

    }

    protected void grdAnuncio_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
            dadosBanner = ws.ConsultaBanner(0);
            ws.ExcluirBanner(Convert.ToInt32(grdBanner.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            dadosBanner = ws.ConsultaBanner(0);
            grdBanner.DataSource = dadosBanner;
            grdBanner.DataBind();
        }

        if (e.CommandName == "Alterar")
        {
            dadosAnuncio = ws.ConsultaAnuncio(Convert.ToInt32(grdDadosAnuncio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            txtCodigoAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["codigo"].ToString();
            txtEmpresa.Text = dadosAnuncio.Tables[0].Rows[0]["empresa"].ToString();
            txtCepAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["cep"].ToString();
            txtBairroAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["bairro"].ToString();
            txtCidadeAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["cidade"].ToString();
            txtEnderecoAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["endereco"].ToString();
            txtTelefoneAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["telefone"].ToString();
            txtEmailAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["email"].ToString();
            txtSiteAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["site"].ToString();
            txtSenhaAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["senha"].ToString();
            ddlStatus.SelectedValue = dadosAnuncio.Tables[0].Rows[0]["codigo_status"].ToString();
        }

    }

    protected void btnSalvarAnuncio_Click(object sender, EventArgs e)
    {
        if ((txtCodigo_Cliente.Text != "") && (txtCodigo_Cliente.Text != "0"))
        {
            int vNovoCodigo = ws.IncluirAnuncio(Convert.ToInt32(txtCodigoAnuncio.Text), Convert.ToInt32(txtCodigo_Cliente.Text), txtCepAnuncio.Text, txtBairroAnuncio.Text, txtCidadeAnuncio.Text, txtEnderecoAnuncio.Text, txtTelefoneAnuncio.Text, txtEmailAnuncio.Text, txtSiteAnuncio.Text, 1, txtSenhaAnuncio.Text);
            if (vNovoCodigo == 0)
            {
                string myScript = @"alert('Falha ao incluir anuncio!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            }
            else
            {
                string myScript = @"alert('Registro Salvo com Sucesso!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                txtCodigoAnuncio.Text = "";
                txtEmpresa.Text = "";
                txtCepAnuncio.Text = "";
                txtBairroAnuncio.Text = "";
                txtCidadeAnuncio.Text = "";
                txtEnderecoAnuncio.Text = "";
                txtTelefoneAnuncio.Text = "";
                txtEmailAnuncio.Text = "";
                txtSiteAnuncio.Text = "";
                txtSenhaAnuncio.Text = "";
            }
        }
        else
        {
           string myScript = @"alert('É necessário selecionar um cliente!');";
           ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);           
        
        }
    }

    protected void grdCategoriaAnuncio_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       if (e.CommandName == "Excluir")
       {
           DataSet dadosAnuncioCategoria = new DataSet();
           dadosAnuncioCategoria = ws.ConsultaAnuncioCategoria(Convert.ToInt32(txtCodigoAnuncio.Text));           
           ws.DeleteCategoriaAnunciante(Convert.ToInt32(txtCodigoAnuncio.Text),(Convert.ToInt32(grdCategoriaAnunciante.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text)));

           dadosAnuncioCategoria = ws.ConsultaAnuncioCategoria(Convert.ToInt32(txtCodigoAnuncio.Text));
           grdCategoriaAnunciante.DataSource = dadosAnuncioCategoria;
           grdCategoriaAnunciante.DataBind();
        }
    }

    protected void btnIncluirCategoriaAnuncio_Click(object sender, EventArgs e)
    {
        if ((txtCodigoAnuncio.Text != "") && (txtCodigoAnuncio.Text != "0"))
        { 
           
        
        
        }
    }

    protected void tcControle_ActiveTabChanged(object sender, EventArgs e)
    {
        if ((tcControle.ActiveTabIndex == 1) || (tcControle.ActiveTabIndex == 2))
        {
            if ((txtCodigo_Cliente.Text == "0"))
            {
                string myScript = @"alert('É obrigatório selecionar o cliente!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                tcControle.ActiveTabIndex = 0;
            }     
        }

        if (tcControle.ActiveTabIndex == 1)
        {
            DataSet dadosAnuncioCategoria = ws.ConsultaAnuncioCategoria(0);
            grdIncluiCategoriaAnuncio.DataSource = dadosAnuncioCategoria;
            grdIncluiCategoriaAnuncio.DataBind();

            DataSet dadosStatus = ws.ConsultaStatus();
            ddlStatus.DataTextField = "descricao";
            ddlStatus.DataValueField = "codigo";
            ddlStatus.DataSource = dadosStatus;
            ddlStatus.DataBind();

            dadosAnuncio = ws.ConsultaAnuncio(0);
            grdDadosAnuncio.DataSource = dadosAnuncio;
            grdDadosAnuncio.DataBind();               
        }
        
        if (tcControle.ActiveTabIndex == 2)
        {

            DataSet dadosMes = ws.ConsultaMes();
            ddlMes.DataTextField = "descricao";
            ddlMes.DataValueField = "codigo";
            ddlMes.DataSource = dadosMes;
            ddlMes.DataBind();

            dadosFinanceiro = ws.ConsultaFinanceiro(0);
            grdFinanceiro.DataSource = dadosFinanceiro;
            grdFinanceiro.DataBind();
        }

        if (tcControle.ActiveTabIndex == 3)
        {
            dadosBanner = ws.ConsultaBanner(0);
            grdBanner.DataSource = dadosBanner;
            grdBanner.DataBind();

            DataSet dadosLocalBanner = ws.ConsultaLocalBanner();
            ddlPosicaoBanner.DataTextField = "descricao";
            ddlPosicaoBanner.DataValueField = "codigo";
            ddlPosicaoBanner.DataSource = dadosLocalBanner;
            ddlPosicaoBanner.DataBind();

            DataSet dadosStatus = ws.ConsultaStatus();
            ddlStatusBanner.DataTextField = "descricao";
            ddlStatusBanner.DataValueField = "codigo";
            ddlStatusBanner.DataSource = dadosStatus;
            ddlStatusBanner.DataBind();
        }

        if (tcControle.ActiveTabIndex == 4)
        {
            dadosBonus = ws.ConsultaDadosBonus(0);
            grdDadosBonus.DataSource = dadosBonus;
            grdDadosBonus.DataBind();

            DataSet dadosStatusBonus = ws.ConsultaStatus();
            ddlStatusBonus.DataTextField = "descricao";
            ddlStatusBonus.DataValueField = "codigo";
            ddlStatusBonus.DataSource = dadosStatusBonus;
            ddlStatusBonus.DataBind();

            DataSet dadosPopAnunciante = ws.PopulaAnunciante();
            ddlAnuncianteBonus.DataTextField = "razao_social";
            ddlAnuncianteBonus.DataValueField = "codigo";
            ddlAnuncianteBonus.DataSource = dadosPopAnunciante;
            ddlAnuncianteBonus.DataBind();        
        
        }

        if (tcControle.ActiveTabIndex == 5)
        {
            dadosCategoria = ws.ConsultaDadosCategoria(0);
            grdDadosCategoria.DataSource = dadosCategoria;
            grdDadosCategoria.DataBind();      
        
        }
        
    }

    protected void btnSalvarCliente_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirCliente(Convert.ToInt32(txtCodigo_Cliente.Text), txtRazaoSocial.Text, txtCnpj.Text, txtCpf.Text, txtRg.Text, txtEndereco.Text, txtCep.Text, txtBairro.Text, txtCidade.Text, txtEmail.Text, txtResponsavel.Text, txtTelefone.Text,"");
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao salvar Cliente!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro Salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtRazaoSocial.Text = "";
            txtCnpj.Text = "";
            txtCpf.Text = "";
            txtRg.Text = "";
            txtEndereco.Text = "";
            txtCep.Text = "";
            txtBairro.Text = "";
            txtCidade.Text = "";
            txtEmail.Text = "";
            txtResponsavel.Text = "";
        }

    }
    protected void grdIncluiCategoriaAnuncio_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Selecao")
        {
            int categoria = Convert.ToInt32(grdIncluiCategoriaAnuncio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text);
            ws.IncluiCategoriaAnunciante(0, Convert.ToInt32(txtCodigoAnuncio.Text), categoria);
        }

    }
    protected void grdCategoriaAnunciante_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton MyButton = (LinkButton)e.Row.FindControl("cmdDelete2");
            MyButton.Attributes.Add("onclick", "javascript:return " +
            "confirm('Confirma a exclusão da categoria:  " +
            DataBinder.Eval(e.Row.DataItem, "descricao") + "?')");
        }

    }
    protected void grdBanner_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
            dadosAnuncio = ws.ConsultaAnuncio(0);
            txtCodigoAnuncio.Text = dadosAnuncio.Tables[0].Rows[0]["codigo"].ToString();
            ws.ExcluirAnuncio(Convert.ToInt32(grdDadosAnuncio.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            dadosAnuncio = ws.ConsultaAnuncio(0);
            grdDadosAnuncio.DataSource = dadosAnuncio;
            grdDadosAnuncio.DataBind();
        }

        if (e.CommandName == "Alterar")
        {
            dadosBanner = ws.ConsultaBanner(Convert.ToInt32(grdBanner.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            txtCodigoBanner.Text = dadosBanner.Tables[0].Rows[0]["codigo"].ToString();
            txtDescricaoBanner.Text = dadosBanner.Tables[0].Rows[0]["descricao"].ToString();
            ddlStatusBanner.SelectedValue = dadosBanner.Tables[0].Rows[0]["codigo_status"].ToString();
            txtLargura.Text = dadosBanner.Tables[0].Rows[0]["largura"].ToString();
            txtAltura.Text = dadosBanner.Tables[0].Rows[0]["altura"].ToString();
            ddlPosicaoBanner.SelectedValue = dadosBanner.Tables[0].Rows[0]["codigo_local_banner"].ToString();

            DataSet dadosCategoriaBanner = ws.ConsultaCategoriaBanner(Convert.ToInt32(txtCodigoBanner.Text));
            grdCategoriaBanner.DataSource = dadosCategoriaBanner;
            grdCategoriaBanner.DataBind();
        }

    }

    protected void grdBanner_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton MyButton = (LinkButton)e.Row.FindControl("cmdDelete9");
            MyButton.Attributes.Add("onclick", "javascript:return " +
            "confirm('Confirma a exclusão da categoria:  " +
            DataBinder.Eval(e.Row.DataItem, "descricao") + "?')");
        }
    }

    protected void grdDadosBonus_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
            dadosBonus = ws.ConsultaDadosBonus(0);
            txtCodigoBonus.Text = dadosBonus.Tables[0].Rows[0]["codigo"].ToString();
            ws.ExcluirAnuncio(Convert.ToInt32(grdDadosBonus.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            dadosBonus = ws.ConsultaDadosBonus(0);
            grdDadosBonus.DataSource = dadosBonus;
            grdDadosBonus.DataBind();
        }

        if (e.CommandName == "Alterar")
        {
            dadosBonus = ws.ConsultaDadosBonus(Convert.ToInt32(grdDadosBonus.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));
            txtCodigoBonus.Text = dadosBonus.Tables[0].Rows[0]["codigo"].ToString();
            txtDescricaoBonus.Text = dadosBonus.Tables[0].Rows[0]["bonus"].ToString();
            ddlStatusBonus.SelectedValue = dadosBonus.Tables[0].Rows[0]["codigo_status"].ToString();
        }

    }


    protected void grdDadosBonus_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton MyButton = (LinkButton)e.Row.FindControl("cmdDelete7");
            MyButton.Attributes.Add("onclick", "javascript:return " +
            "confirm('Confirma a exclusão da categoria:  " +
            DataBinder.Eval(e.Row.DataItem, "bonus") + "?')");
        }
    }
    protected void btnIncluirBonus_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirBonus(0, Convert.ToInt32(ddlAnuncianteBonus.SelectedValue), txtDescricaoBonus.Text, Convert.ToInt32(ddlStatusBonus.SelectedValue));
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao incluir Bonus!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro incluido com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }

    }
    protected void btnSalvarBonus_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirBonus(Convert.ToInt32(txtCodigoBonus.Text), Convert.ToInt32(ddlAnuncianteBonus.SelectedValue), txtDescricaoBonus.Text, Convert.ToInt32(ddlStatusBonus.SelectedValue));
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao salvar Bonus!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }

    }
    protected void grdDadosCategoria_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
            dadosCategoria = ws.ConsultaDadosCategoria(0);
            txtCodigoCategoria.Text = dadosCategoria.Tables[0].Rows[0]["codigo"].ToString();
            ws.ExcluirCategoria(Convert.ToInt32(grdDadosCategoria.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));

            dadosCategoria = ws.ConsultaDadosCategoria(0);
            grdDadosCategoria.DataSource = dadosCategoria;
            grdDadosCategoria.DataBind();
        }

        if (e.CommandName == "Alterar")
        {
            dadosCategoria = ws.ConsultaDadosCategoria(Convert.ToInt32(grdDadosCategoria.Rows[Convert.ToInt32(e.CommandArgument)].Cells[0].Text));
            txtCodigoCategoria.Text = dadosCategoria.Tables[0].Rows[0]["codigo"].ToString();
            txtDescricaoCategoria.Text = dadosCategoria.Tables[0].Rows[0]["descricao"].ToString();
            ddlTipoCategoriaCat.SelectedValue = dadosCategoria.Tables[0].Rows[0]["tipo_categoria"].ToString();
        }
    }
    protected void grdDadosCategoria_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton MyButton = (LinkButton)e.Row.FindControl("cmdDelete8");
            MyButton.Attributes.Add("onclick", "javascript:return " +
            "confirm('Confirma a exclusão da categoria:  " +
            DataBinder.Eval(e.Row.DataItem, "descricao") + "?')");
        }

    }
    protected void btnIncluirCategoria_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirCategoria(0,txtDescricaoCategoria.Text,Convert.ToInt32(ddlTipoCategoriaCat.SelectedValue),"");
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao incluir Categoria!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro incluido com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }
    }
    protected void btnSalvarCategoria_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirCategoria(Convert.ToInt32(txtCodigoCategoria.Text), txtDescricaoCategoria.Text, Convert.ToInt32(ddlTipoCategoriaCat.SelectedValue), "");
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao salvar Categoria!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }
    }
    protected void btnIncluirBanner_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirBanner(0,txtDescricaoBanner.Text,Convert.ToInt32(ddlPosicaoBanner.SelectedValue),Convert.ToInt32(txtLargura.Text),Convert.ToInt32(txtAltura.Text),Convert.ToInt32(ddlStatusBanner.SelectedValue));
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao incluir Banner!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro incluido com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }
    }
    protected void btnSalvarBanner_Click(object sender, EventArgs e)
    {
        int vNovoCodigo = ws.IncluirBanner(Convert.ToInt32(txtCodigoBanner.Text), txtDescricaoBanner.Text, Convert.ToInt32(ddlPosicaoBanner.SelectedValue), Convert.ToInt32(txtLargura.Text), Convert.ToInt32(txtAltura.Text), Convert.ToInt32(ddlStatusBanner.SelectedValue));
        if (vNovoCodigo == 0)
        {
            string myScript = @"alert('Falha ao salvar Banner!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
        }
        else
        {
            string myScript = @"alert('Registro salvo com Sucesso!');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
            txtDescricaoBonus.Text = "";
        }
    }
    protected void grdCategoriaBanner_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Excluir")
        {
        }
    }
    protected void grdCategoriaBanner_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton MyButton = (LinkButton)e.Row.FindControl("cmdDelete4");
            MyButton.Attributes.Add("onclick", "javascript:return " +
            "confirm('Confirma a exclusão da categoria:  " +
            DataBinder.Eval(e.Row.DataItem, "descricao") + "?')");
        }
    }
}
