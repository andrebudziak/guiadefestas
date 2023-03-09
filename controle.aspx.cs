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


public partial class controle : System.Web.UI.Page
{
    private string connstring = ConfigurationManager.AppSettings["ConnectionString"];
    private string vTipo_Acao;
    private string logado;
    private string vGrupo_Acao;
    private string vAnunciante_Id;

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Request.QueryString["tipo_acao"] != null)
            vTipo_Acao = Request.QueryString["tipo_acao"].ToString();
        if (Request.QueryString["grupo_acao"] != null)
            vGrupo_Acao = Request.QueryString["grupo_acao"].ToString();
        if (Request.QueryString["id_anunciante"] != null)
            vAnunciante_Id = Request.QueryString["id_anunciante"].ToString();
        if (!IsPostBack)
        {
            tblAnunciante.Visible = false;
            tblCategoria.Visible = false;
            tblBanner.Visible = false;            
            tbl_Selecionar.Visible = false;
            tbl_bonus.Visible = false;

            pnMenu.Visible = false;
            btnInserir.Enabled = false;
            btnSalvar.Enabled = false;
            btnDeletar.Enabled = false;
            tedCodigoImagem.Text = "0";
            tedCodigoImagem.Visible = false;
            tedCodigo_bonus.Visible = false;

            SqlConnection MyConnection = new SqlConnection();
            MyConnection.ConnectionString = connstring;

            if (Request.QueryString["logado"] != null)
            {
                logado = Request.QueryString["logado"].ToString();
            }
            else
                logado = "0";

            SqlCommand MyCommand2 = new SqlCommand("SELECT logado,descricao FROM USUARIO WHERE descricao='" + logado + "' ", MyConnection);

            MyCommand2.CommandType = CommandType.Text;
            MyCommand2.Connection.Open();

            SqlDataReader MyDataReader = MyCommand2.ExecuteReader();

            if (MyDataReader.Read())
            {

                if (MyDataReader.GetInt32(0) == 1)
                {
                    if (!IsPostBack)
                    {
                        if (vTipo_Acao == "1")
                        {
                            if (vGrupo_Acao == "1")
                            {
                                //inserir anunciante
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.DadosCategoria();
                                grdCategoriaAnunciante.DataSource = dados.Tables[0];
                                grdCategoriaAnunciante.DataBind();
                                ddlCategoriaPadrao.DataTextField = "descricao";
                                ddlCategoriaPadrao.DataValueField = "codigo";
                                ddlCategoriaPadrao.DataSource = dados;
                                ddlCategoriaPadrao.DataBind();
                                tblAnunciante.Visible = true;
                                btnInserir.Enabled = true;

                            }
                            pnMenu.Visible = true;

                        }
                        if (vTipo_Acao == "3")
                        {

                            if (vGrupo_Acao == "1")
                            {
                                //seleciona anunciante
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.RetornaDados("anunciante",0,"descricao");
                                grd_selecionar.DataSource = dados.Tables[0];
                                grd_selecionar.DataBind();                                
                                tbl_Selecionar.Visible = true;
                                pnMenu.Visible = true;
                                btnSalvar.Enabled = true;

                            }                        
                        }

                        if (vTipo_Acao == "5")
                        {
                            if (vGrupo_Acao == "2")
                            {
                                tblCategoria.Visible = true;
                                btnInserir.Enabled = true;

                            }
                            pnMenu.Visible = true;

                        }

                        if (vTipo_Acao == "7")
                        {

                            if (vGrupo_Acao == "2")
                            {
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.RetornaDados("categoria",0,"descricao");
                                grd_selecionar.DataSource = dados.Tables[0];
                                grd_selecionar.DataBind();
                                tbl_Selecionar.Visible = true;
                                pnMenu.Visible = true;
                                btnSalvar.Enabled = true;

                            }
                        }

                        if (vTipo_Acao == "9")
                        {
                            if (vGrupo_Acao == "3")
                            {
                                //inserir banner
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.DadosCategoria();
                                grdBannerCategoria.DataSource = dados.Tables[0];
                                grdBannerCategoria.DataBind();

                                tblBanner.Visible = true;
                                btnInserir.Enabled = true;
                            }
                            pnMenu.Visible = true;

                        }

                        if (vTipo_Acao == "11")
                        {

                            if (vGrupo_Acao == "3")
                            {
                                //seleciona banner
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.RetornaDados("banner",0,"descricao");
                                grd_selecionar.DataSource = dados.Tables[0];
                                grd_selecionar.DataBind();
                                tbl_Selecionar.Visible = true;
                                pnMenu.Visible = true;
                                btnSalvar.Enabled = true;

                            }
                        }

                        if (vTipo_Acao == "15")
                        {

                            if (vGrupo_Acao == "4")
                            {
                                //seleciona bonus
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.RetornaDados("bonus", 0, "bonus");
                                grd_selecionar.DataSource = dados.Tables[0];
                                grd_selecionar.DataBind();
                                tbl_Selecionar.Visible = true;
                                pnMenu.Visible = true;
                                btnSalvar.Enabled = true;

                            }
                        }

                        if (vTipo_Acao == "13")
                        {
                            if (vGrupo_Acao == "4")
                            {
                                //inserir bonus
                                WebService ws = new WebService();
                                DataSet dados = new DataSet();
                                dados = ws.RetornaDados("anunciante", 0, "descricao");
                                grd_selecionarAnunciante.DataSource = dados.Tables[0];
                                grd_selecionarAnunciante.DataBind();

                                tbl_bonus.Visible = true;
                                btnInserir.Enabled = true;
                            }
                            pnMenu.Visible = true;

                        }


                    }
                    MyConnection.Dispose();
                    MyConnection.ConnectionString = connstring;

                    #region MontaMenuControle

                    SqlCommand MyCommand = new SqlCommand(" select codigo,descricao from tipo_controle order by codigo ", MyConnection);

                    MyCommand.CommandType = CommandType.Text;
                    MyCommand.Connection.Open();

                    SqlDataReader MyDataReader2 = MyCommand.ExecuteReader();
                    int vCont = 0;
                    string vMenu = "";

                    while (MyDataReader2.Read())
                    {
                        vMenu += "hplMenup" + Convert.ToString(vCont);
                        Label hplMenup = new Label();
                        vCont++;
                        hplMenup.ID = vMenu;
                        hplMenup.Text = "<tr>" +
                                        "<td align='center' class='TituloAzulEscuro width='180' background='Imagens/BGMenuGuias.gif' valign='middle'>" + MyDataReader2.GetString(1) + "</td>" +
                                        "</tr>";

                        pnMenuOp.Controls.Add(hplMenup);
                        hplMenup.Visible = true;

                        string vTipoControle = Convert.ToString(MyDataReader2.GetInt32(0));
                        SqlConnection MyConnection2 = new SqlConnection();
                        MyConnection2.ConnectionString = connstring;

                        /*aqui começa o segundo menu*/
                        SqlCommand MyCommand3 = new SqlCommand(" Select codigo,descricao,tipo_controle from controle where tipo_controle = " + vTipoControle + " and descricao='Inserir' or tipo_controle = " + vTipoControle + " and descricao='Selecionar'   order by codigo ", MyConnection2);

                        MyCommand3.CommandType = CommandType.Text;
                        MyCommand3.Connection.Open();

                        SqlDataReader MyDataReader3 = MyCommand3.ExecuteReader();

                        while (MyDataReader3.Read())
                        {
                            vMenu = "hplMenu" + Convert.ToString(vCont);
                            Label hplMenus = new Label();
                            vCont++;
                            hplMenus.ID = vMenu;
                            hplMenus.Text = "<tr>" +
                                            "<td width='100%' bgcolor='#f5f5f5' style='height: 12px'>" +
                                            "<p style='word-spacing: 0; text-indent: 0; line-height: 100%; margin-left: 3; margin-right: 0; margin-top: 0; margin-bottom: 0' align='left'><font size='2' face='Verdana' color='#FF3300'>" +
                                            "</font><a href='controle.aspx?tipo_acao=" + MyDataReader3.GetInt32(0) + "&grupo_acao=" + MyDataReader3.GetInt32(2) + "&id_anunciante=0&logado="+logado+"  ' style='text-decoration: none'><font size='2' face='Verdana' color='#FF3300'>" + MyDataReader3.GetString(1) + "</font></a></p>" +
                                            "</td>" +
                                            "</tr>";
                            pnMenuOp.Controls.Add(hplMenus);
                            hplMenus.Visible = true;
                        }

                        MyCommand3.Dispose();  //Dispose of the Command object.
                        MyConnection2.Close(); //Close the connection.

                    }

                    #endregion
                }
                else
                {
                    Response.Redirect("painel.aspx");
                }


            }
            else
            {
                Response.Redirect("painel.aspx");
            }

        }

    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        WebService ws = new WebService();
     
        if (vTipo_Acao == "1")
        {
            if (vGrupo_Acao == "1")
            {
               int vNovoCodigo = ws.IncluiAnunciante(0, teddescricao.Text, tedenderco.Text, tedtelefone.Text, tedemail.Text, tedsite.Text, tednome.Text, Convert.ToInt32(ddlstatus.SelectedValue), tedsenha.Text, tedbairro.Text, tedcidade.Text, Tedrazao.Text, tedCnpj.Text, tedCpf.Text, tedRg.Text, tedendboleto.Text,tedCep.Text,Convert.ToInt32(ddlCategoriaPadrao.SelectedValue));
               if (vNovoCodigo != 0)
               {
                   foreach (GridViewRow row in grdCategoriaAnunciante.Rows)
                   {
                       CheckBox chk = (CheckBox)row.FindControl("chkSelect0");
                       if (chk.Checked == true)
                       {
                          int categoria = Convert.ToInt32(grdCategoriaAnunciante.Rows[row.RowIndex].Cells[0].Text);
                          ws.IncluiCategoriaAnunciante(0,vNovoCodigo, categoria);
                       }
                   }
                   string myScript = @"alert('Registro Incluido com Sucesso!');window.open('grava_imagem.aspx?codigo_anunciante=" + vNovoCodigo.ToString() + "&codigo_imagem=0',null,'left=400, top=100, height=240, width= 590, status=n o, resizable= no, scrollbars= no, toolbar= no,location= no, menubar= no');";
                   ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                   teddescricao.Text = "";
                   tedenderco.Text = "";
                   tedtelefone.Text = "";
                   tedemail.Text = "";
                   tedsite.Text = "";
                   tednome.Text = "";
                   tedsenha.Text = "";
                   tedbairro.Text = "";
                   tedcidade.Text = "";
                   Tedrazao.Text = "";
                   tedCnpj.Text = "";
                   tedCpf.Text = "";
                   tedRg.Text = "";
                   tedendboleto.Text = "";

               }

            }
        }

        if (vTipo_Acao == "5")
        {
            if (vGrupo_Acao == "2")
            {
                ws.IncluirCategoria(0,tedDescCategoria.Text, Convert.ToInt32(ddlTipoCategoriaCat.SelectedValue), tedObsCategoria.Text);

                string myScript = @"alert('Registro Incluido com Sucesso!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                
                tedDescCategoria.Text = "";
                tedObsCategoria.Text = "";

            }
        }

        if (vTipo_Acao == "9")
        {
            if (vGrupo_Acao == "3")
            {
                int vNovoCodigo = ws.IncluirBanner(0, tedDescricaoBanner.Text, Convert.ToInt32(ddlPosicaoBanner.SelectedValue), Convert.ToInt32(tedLargura.Text), Convert.ToInt32(tedAltura.Text),Convert.ToInt32(ddlstatusBanner.SelectedValue));
                if (vNovoCodigo != 0)
                {
                    foreach (GridViewRow row in grdBannerCategoria.Rows)
                    {
                        CheckBox chk = (CheckBox)row.FindControl("chkSelect1");
                        if (chk.Checked == true)
                        {
                            int categoria = Convert.ToInt32(grdBannerCategoria.Rows[row.RowIndex].Cells[0].Text);
                            ws.IncluirBannerCategoria(0, vNovoCodigo, categoria);
                        }
                    }
                    string myScript = @"alert('Registro Incluido com Sucesso!');";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


                }
            }
        }

        if (vTipo_Acao == "13")
        {
            if (vGrupo_Acao == "4")
            {
                if (tedCodigo.Text != "")
                {
                    int vNovoCodigo = ws.IncluirBonus(0, Convert.ToInt32(tedCodigo.Text), tedBonus.Text,1);
                    if (vNovoCodigo != 0)
                    {
                        string myScript = @"alert('Registro Incluido com Sucesso!');";
                        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                    }
                }
                else
                {
                   string myScript = @"alert('Voce precisa selecionar um anunciante!');";
                   ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);
                   btnInserir.Enabled = true;
                }
            }
        }


        ws.Dispose();
        btnInserir.Enabled = false;

    }
    protected void btn_selecionar_Click(object sender, EventArgs e)
    {

    
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        if (vTipo_Acao == "3")
        {
            if (vGrupo_Acao == "1")
            {
               WebService ws = new WebService();
               ws.IncluiAnunciante(Convert.ToInt32(tedCodigo.Text), teddescricao.Text, tedenderco.Text, tedtelefone.Text, tedemail.Text, tedsite.Text, tednome.Text, Convert.ToInt32(ddlstatus.SelectedValue), tedsenha.Text, tedbairro.Text, tedcidade.Text, Tedrazao.Text, tedCnpj.Text, tedCpf.Text, tedRg.Text, tedendboleto.Text, tedCep.Text,Convert.ToInt32(ddlCategoriaPadrao.SelectedValue));

               foreach (GridViewRow row in grdCategoriaAnunciante.Rows)
               {
                   CheckBox chk = (CheckBox)row.FindControl("chkSelect0");
                   if (chk.Checked == true)
                   {
                       int categoria = Convert.ToInt32(grdCategoriaAnunciante.Rows[row.RowIndex].Cells[0].Text);
                       ws.IncluiCategoriaAnunciante(0, Convert.ToInt32(tedCodigo.Text), categoria);
                   }
                   CheckBox chkE = (CheckBox)row.FindControl("chkExcluir");
                   if (chkE.Checked == true)
                   {
                       int categoria = Convert.ToInt32(grdCategoriaAnunciante.Rows[row.RowIndex].Cells[0].Text);
                       ws.DeleteCategoriaAnunciante(Convert.ToInt32(tedCodigo.Text),categoria);
                   }
               }
               DataSet dadosI = ws.DadosImagem(Convert.ToInt32(tedCodigo.Text));
               if (dadosI.Tables[0].Rows.Count == 0)
               {
                   tedCodigoImagem.Text = "0";
               }
               else
               {              
                  tedCodigoImagem.Text = dadosI.Tables[0].Rows[0]["codigo"].ToString();
               }

               string myScript = @"alert('Registro Salvo com Sucesso!');window.open('grava_imagem.aspx?codigo_anunciante=" + tedCodigo.Text + "&codigo_imagem="+tedCodigoImagem.Text+"',null,'left=400, top=100, height=240, width= 590, status=n o, resizable= no, scrollbars= no, toolbar= no,location= no, menubar= no');";
               ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


               ws.Dispose();
            }

        }
        if (vTipo_Acao == "7")
        {
            if (vGrupo_Acao == "2")
            {
                WebService ws = new WebService();
                ws.IncluirCategoria(Convert.ToInt32(tedCodigo.Text), tedDescCategoria.Text, Convert.ToInt32(ddlTipoCategoriaCat.SelectedValue), tedObsCategoria.Text);

                string myScript = @"alert('Registro Salvo com Sucesso!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


                ws.Dispose();
            }
        }

        if (vTipo_Acao == "11")
        {
           if (vGrupo_Acao == "3")
           {

               WebService ws = new WebService();
               ws.IncluirBanner(Convert.ToInt32(tedCodigo.Text),tedDescricaoBanner.Text,Convert.ToInt32(ddlPosicaoBanner.SelectedValue),Convert.ToInt32(tedLargura.Text),Convert.ToInt32(tedAltura.Text),Convert.ToInt32(ddlstatusBanner.SelectedValue));


               foreach (GridViewRow row in grdBannerCategoria.Rows)
               {
                   CheckBox chk = (CheckBox)row.FindControl("chkSelect1");
                   if (chk.Checked == true)
                   {
                       int categoria = Convert.ToInt32(grdBannerCategoria.Rows[row.RowIndex].Cells[0].Text);
                       ws.IncluirBannerCategoria(0, Convert.ToInt32(tedCodigo.Text), categoria);
                   }
                   CheckBox chkE = (CheckBox)row.FindControl("chkExcluir1");
                   if (chkE.Checked == true)
                   {
                       int categoria = Convert.ToInt32(grdBannerCategoria.Rows[row.RowIndex].Cells[0].Text);
                       ws.DeleteCategoriaBanner(Convert.ToInt32(tedCodigo.Text), categoria);
                   }
               }

               string myScript = @"alert('Registro Salvo com Sucesso!');";
               ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


               ws.Dispose();

           }
        }


        if (vTipo_Acao == "15")
        {
            if (vGrupo_Acao == "4")
            {
                WebService ws = new WebService();
                ws.IncluirBonus(Convert.ToInt32(tedCodigo_bonus.Text), Convert.ToInt32(tedCodigo.Text), tedBonus.Text, Convert.ToInt32(ddlstatusBanner.SelectedValue));

                string myScript = @"alert('Registro Salvo com Sucesso!');";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


                ws.Dispose();
            }
        }



    }

    protected void grd_selecionar_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        WebControl wc = ((WebControl)e.CommandSource);
        GridViewRow row = ((GridViewRow)wc.NamingContainer);
        int codigo = Convert.ToInt32(row.Cells[1].Text);
        salvaRegistro(codigo);

    }

    protected void salvaRegistro(int codigo)
    {
        if (vTipo_Acao == "3")
        {
            if (vGrupo_Acao == "1")
            {

                WebService ws = new WebService();
                //Alimenta Anunciantes
                DataSet dadosA = new DataSet();

                dadosA = ws.alimentaAnunciante(0, "", codigo);

                tedCodigo.Text = dadosA.Tables[0].Rows[0]["codigo"].ToString();
                teddescricao.Text = dadosA.Tables[0].Rows[0]["descricao"].ToString();
                tedenderco.Text = dadosA.Tables[0].Rows[0]["endereco"].ToString();
                tedtelefone.Text = dadosA.Tables[0].Rows[0]["telefone"].ToString();
                tedemail.Text = dadosA.Tables[0].Rows[0]["email"].ToString();
                tedsite.Text = dadosA.Tables[0].Rows[0]["site"].ToString();
                tednome.Text = dadosA.Tables[0].Rows[0]["nome"].ToString();
                tedsenha.Text = dadosA.Tables[0].Rows[0]["senha"].ToString();
                tedbairro.Text = dadosA.Tables[0].Rows[0]["bairro"].ToString();
                tedcidade.Text = dadosA.Tables[0].Rows[0]["cidade"].ToString();
                Tedrazao.Text = dadosA.Tables[0].Rows[0]["razao_social"].ToString();
                tedCnpj.Text = dadosA.Tables[0].Rows[0]["cnpj"].ToString();
                tedCpf.Text = dadosA.Tables[0].Rows[0]["cpf"].ToString();
                tedRg.Text = dadosA.Tables[0].Rows[0]["rg"].ToString();
                tedendboleto.Text = dadosA.Tables[0].Rows[0]["endereco_boleto"].ToString();
                tedCep.Text = dadosA.Tables[0].Rows[0]["cep"].ToString();
                ddlstatus.SelectedValue = dadosA.Tables[0].Rows[0]["status"].ToString();
                tedCodigoImagem.Text = dadosA.Tables[0].Rows[0]["codigo_imagem"].ToString();
                string valorCategoriaPadrao = dadosA.Tables[0].Rows[0]["categoria_padrao"].ToString();

                DataSet dadosP = new DataSet();
                dadosP = ws.DadosCategoria();
                ddlCategoriaPadrao.DataTextField = "descricao";
                ddlCategoriaPadrao.DataValueField = "codigo";
                ddlCategoriaPadrao.DataSource = dadosP;
                ddlCategoriaPadrao.DataBind();

                if ((valorCategoriaPadrao != "") && (valorCategoriaPadrao != "0"))
                {
                    ddlCategoriaPadrao.SelectedValue = valorCategoriaPadrao;
                }

                DataSet dadosCat = new DataSet();
                dadosCat = ws.DadosCategoria();
                grdCategoriaAnunciante.DataSource = dadosCat.Tables[0];
                grdCategoriaAnunciante.DataBind();


                DataSet dadosCatA = new DataSet();
                dadosCatA = ws.DadosAnuncianteCategoria(Convert.ToInt32(tedCodigo.Text));
                foreach (GridViewRow row in grdCategoriaAnunciante.Rows)
                {
                    string cod_categoria = row.Cells[0].Text;

                    foreach (DataRow row2 in dadosCatA.Tables[0].Rows)
                    {
                        if (row2.ItemArray[2].ToString() == cod_categoria)
                        {
                            CheckBox chk = (CheckBox)row.FindControl("chkSelect0");
                            chk.Checked = true;

                        }
                    }
                }

                tblAnunciante.Visible = true;


            }
            tbl_Selecionar.Visible = false;
            tblAnunciante.Visible = true;

        }

        if (vTipo_Acao == "7")
        {
            if (vGrupo_Acao == "2")
            {
                WebService ws = new WebService();
                //Alimenta Categoria
                DataSet dadosC = new DataSet();

                dadosC = ws.alimentacategoria(codigo);

                tedCodigo.Text = dadosC.Tables[0].Rows[0]["codigo"].ToString();
                tedDescCategoria.Text = dadosC.Tables[0].Rows[0]["descricao"].ToString();
                tedObsCategoria.Text = dadosC.Tables[0].Rows[0]["texto"].ToString();
              //  ddlTipoCategoriaCat.SelectedValue = dadosC.Tables[0].Rows[0]["codigo"].ToString();
            }
            tbl_Selecionar.Visible = false;
            tblCategoria.Visible = true;

        }


        if (vTipo_Acao == "11")
        {
           if (vGrupo_Acao == "3")
           {
               //altera banner
               WebService ws = new WebService();
               DataSet dadosB = new DataSet();
               dadosB = ws.alimentaBanner(codigo);

               tedCodigo.Text                 = dadosB.Tables[0].Rows[0]["codigo"].ToString();
               tedDescricaoBanner.Text        = dadosB.Tables[0].Rows[0]["descricao"].ToString();
               tedLargura.Text                = dadosB.Tables[0].Rows[0]["largura"].ToString();
               tedAltura.Text                 = dadosB.Tables[0].Rows[0]["altura"].ToString();
               ddlPosicaoBanner.SelectedValue = dadosB.Tables[0].Rows[0]["codigo_local_banner"].ToString();
               ddlstatus.SelectedValue = dadosB.Tables[0].Rows[0]["status"].ToString();


               tbl_Selecionar.Visible = false;
               tblBanner.Visible = true;


               DataSet dadosBannerCategoria = new DataSet();
               dadosBannerCategoria = ws.DadosCategoria();
               grdBannerCategoria.DataSource = dadosBannerCategoria.Tables[0];
               grdBannerCategoria.DataBind();

               tblBanner.Visible = true;
               btnInserir.Enabled = true;


               DataSet dadosCatB = new DataSet();
               dadosCatB = ws.DadosBannerCategoria(Convert.ToInt32(tedCodigo.Text));
               foreach (GridViewRow row in grdBannerCategoria.Rows)
               {
                   string cod_categoria = row.Cells[0].Text;

                   foreach (DataRow row2 in dadosCatB.Tables[0].Rows)
                   {
                       if (row2.ItemArray[1].ToString() == cod_categoria)
                       {
                           CheckBox chk = (CheckBox)row.FindControl("chkSelect1");
                           chk.Checked = true;

                       }
                   }
               }


           }
        }

        if (vTipo_Acao == "15")
        {
            if (vGrupo_Acao == "4")
            {
                WebService ws = new WebService();
                //Alimenta Bonus
                DataSet dadosB = new DataSet();

                dadosB = ws.alimentacabonus(codigo);

                tedCodigo.Text = dadosB.Tables[0].Rows[0]["codigo_anunciante"].ToString();
                tedBonus.Text = dadosB.Tables[0].Rows[0]["bonus"].ToString();
                tedCodigo_bonus.Text = dadosB.Tables[0].Rows[0]["codigo"].ToString();
                ddlstatusBonus.SelectedValue = dadosB.Tables[0].Rows[0]["status"].ToString();
                
            }
            tbl_Selecionar.Visible = false;
            tbl_bonus.Visible = true;

        }

        btnInserir.Enabled = false;
        btnSalvar.Enabled = true;
        btnDeletar.Enabled = true;
        pnMenu.Visible = true;
    
    
    
    }

    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("controle.aspx?logado=performance");    
    }
    protected void btnDeletar_Click(object sender, EventArgs e)
    {
        if (vTipo_Acao == "7")
        {
            if (vGrupo_Acao == "2")
            {
                WebService ws = new WebService();
                if (ws.DeleteCategoria(Convert.ToInt32(tedCodigo.Text)) == true)
                {
                    string myScript = @"alert('Registro Excluido com Sucesso!');";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "clientscript", "<script language='JavaScript'>" + myScript + "</script>", false);


                    tedCodigo.Text = "";
                    tedDescCategoria.Text = "";
                    tedObsCategoria.Text = "";
                    //  ddlTipoCategoriaCat.SelectedValue = dadosC.Tables[0].Rows[0]["codigo"].ToString();
                }


            }
        }
    }
    protected void grdBannerCategoria_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void grdCategoriaAnunciante_RowCommand(object sender, GridViewCommandEventArgs e)
    {    

    }

    protected void grd_selecionarAnunciante_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        WebControl wc = ((WebControl)e.CommandSource);
        GridViewRow row = ((GridViewRow)wc.NamingContainer);
        tedCodigo.Text = row.Cells[0].Text;
    }
}
