<%@ Page Language="C#" AutoEventWireup="true" CodeFile="controle.aspx.cs" Inherits="controle" %>

<%@ Register assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<link href="Styles.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Guia de Festas Curitiba</title>
<script language=javascript>
 function SelecionaTodosChecks(spanChk){
   var oItem = spanChk.children;
   var theBox= (spanChk.type=="checkbox") ? 
        spanChk : spanChk.children.item[0];
        xState=theBox.checked;
        elm=theBox.form.elements;
  
   for(i=0;i<elm.length;i++)
     if(elm[i].type=="checkbox" && 
              elm[i].id!=theBox.id)
     {
       if(elm[i].checked!=xState)
         elm[i].click();
     }
 }
</script>
    
    
</head>
<body>
   <div align="center">
      <center> 
         <form id="frmControle" runat="server">
         
         <table style="width:100%;">
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="center">
                    <img ID="imgTopo" border="0" height="46" src="Imagens/Topo.jpg" width="778"> </img>
                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                     </asp:ScriptManager>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="center">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <table style="width: 778px;">
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td align="center">
                                  <table style="width:100%;">
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              <asp:Panel ID="pnMenuOp" runat="server" Width="100px">
                                                  <table ID="tblMenuOp" runat="server" width="200px">
                                                  </table>
                                              </asp:Panel>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  <table ID="tblAnunciante" runat="server" align="left" width="100%">
                                      <tr>
                                          <td align="center" colspan="4" height="13">
                                              <asp:Label ID="lblMensagem" runat="server" ForeColor="Red" Height="13px" 
                                                  Text="" Width="80px">
                                              </asp:Label>
                                              <asp:TextBox ID="tedCodigo" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Visible="false" Width="100px">
                                              </asp:TextBox>
                                              <asp:TextBox ID="tedCodigoImagem" runat="server"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblrazao" runat="server" ForeColor="Blue" Height="13px" 
                                                  Text="Razão social" Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="Tedrazao" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lbldescricao" runat="server" ForeColor="Blue" Text="Empresa" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="teddescricao" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblCnpj" runat="server" ForeColor="Blue" Text="C.N.P.J" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedCnpj" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lbltelefone" runat="server" ForeColor="Blue" Text="Telefone" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedtelefone" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblCpf" runat="server" ForeColor="Blue" Text="C.P.F" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedCpf" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblsite" runat="server" ForeColor="Blue" Text="Site" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedsite" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblRg" runat="server" ForeColor="Blue" Text="R.G." Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedRg" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblemail" runat="server" ForeColor="Blue" Text="E-mail" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedemail" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px" Wrap="False"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblendboleto" runat="server" ForeColor="Blue" 
                                                  Text="Endereço Boleto" Width="120px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedendboleto" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblendereco" runat="server" ForeColor="Blue" Text="Endereço" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedenderco" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblbairro" runat="server" ForeColor="Blue" Text="Bairro" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedbairro" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblstatus" runat="server" ForeColor="Blue" Text="Status" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:DropDownList ID="ddlstatus" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px">
                                                  <asp:ListItem Value="1">ATIVO</asp:ListItem>
                                                  <asp:ListItem Value="0">INATIVO</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblcidade" runat="server" ForeColor="Blue" Text="Cidade" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedcidade" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblnome" runat="server" ForeColor="Blue" Text="Responsavel" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tednome" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblcidade0" runat="server" ForeColor="Blue" Text="Cep" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedCep" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="lblsenha" runat="server" ForeColor="Blue" Text="Senha" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedsenha" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  TextMode="Password" Width="150px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblcidade1" runat="server" ForeColor="Blue" 
                                                  Text="Categoria Padrao"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:DropDownList ID="ddlCategoriaPadrao" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px">
                                              </asp:DropDownList>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                          <td align="left">
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td colspan="4">
                                              <asp:GridView ID="grdCategoriaAnunciante" runat="server" 
                                                  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                                                  GridLines="None" Height="100%" PageSize="5" Width="100%" 
                                                  onrowcommand="grdCategoriaAnunciante_RowCommand">
                                                  <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                  <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <columns>
                                                      <asp:BoundField DataField="codigo" HeaderText="Codigo" Visible="True" />
                                                      <asp:BoundField DataField="descricao" HeaderText="Descrição" Visible="True" />
                                                      <asp:TemplateField HeaderText="Select">
                                                          <itemtemplate>
                                                              <asp:CheckBox ID="chkSelect0" runat="server"/>
                                                          </itemtemplate>
                                                          <headertemplate>
                                                              <input ID="chkAll0" runat="server" 
                                                                  onclick="javascript:SelecionaTodosChecks(this);" type="checkbox" />
                                                          </headertemplate>
                                                      </asp:TemplateField>
                                                      <asp:TemplateField HeaderText="Excluir">
                                                          <itemtemplate>
                                                              <asp:CheckBox ID="chkExcluir" runat="server"/>
                                                          </itemtemplate>
                                                      </asp:TemplateField>                                                      
                                                  </columns>                                                  
                                                  <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
                                                  <editrowstyle backcolor="#999999" />
                                                  <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
                                                  <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
                                                  <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <alternatingrowstyle backcolor="White" forecolor="#284775" />
                                              </asp:GridView>
                                          </td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td align="center">
                                  <table ID="tblCategoria" runat="server" align="left" width="100%">
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblDescCategoria" runat="server" ForeColor="Blue" 
                                                  Text="Descrição" Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedDescCategoria" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="300px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblObsCategoria" runat="server" ForeColor="Blue" 
                                                  Text="Descrição Categoria" Width="140px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedObsCategoria" runat="server" Height="61px" 
                                                  TextMode="MultiLine" Width="300px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label11" runat="server" ForeColor="Blue" Text="Tipo Categoria" 
                                                  Width="131px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:DropDownList ID="ddlTipoCategoriaCat" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px">
                                                  <asp:ListItem Value="0">[]</asp:ListItem>
                                                  <asp:ListItem Value="1">Onde fazer a sua FESTA</asp:ListItem>
                                                  <asp:ListItem Value="2">Serviços para FESTA</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  <table ID="tblBanner" runat="server" align="left" width="100%">
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="Nome do Banner" 
                                                  Width="129px"></asp:Label>
                                          </td>
                                          <td colspan="3" align="left">
                                              <asp:TextBox ID="tedDescricaoBanner" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="300px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="lblstatus0" runat="server" ForeColor="Blue" Text="Status" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left" colspan="3">
                                              <asp:DropDownList ID="ddlstatusBanner" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px">
                                                  <asp:ListItem Value="1">ATIVO</asp:ListItem>
                                                  <asp:ListItem Value="0">INATIVO</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label13" runat="server" ForeColor="Blue" Text="Largura" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedLargura" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="50px"></asp:TextBox>
                                          </td>
                                          <td>
                                              <asp:Label ID="Label14" runat="server" ForeColor="Blue" Text="Altura" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedAltura" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="50px"></asp:TextBox>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label15" runat="server" ForeColor="Blue" 
                                                  Text="Posição do Banner" Width="159px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:DropDownList ID="ddlPosicaoBanner" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="250px">
                                                  <asp:ListItem Value="1">Principal</asp:ListItem>
                                                  <asp:ListItem Value="2">Lateral direito</asp:ListItem>
                                                  <asp:ListItem Value="3">Superior Categoria - Lado Direito</asp:ListItem>
                                                  <asp:ListItem Value="4">Superior Categoria - Central</asp:ListItem>
                                                  <asp:ListItem Value="5">Superior Categoria - Lado Esquerdo</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                          <td align="left">
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td colspan="4">
                                              <asp:GridView ID="grdBannerCategoria" runat="server" 
                                                  AutoGenerateColumns="False" CellPadding="4" DataSourceID="" ForeColor="#333333" 
                                                  GridLines="None" Height="100%" Width="100%" 
                                                  onrowcommand="grdBannerCategoria_RowCommand">
                                                  <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <columns>
                                                      <asp:BoundField DataField="codigo" HeaderText="Codigo" Visible="True" />
                                                      <asp:BoundField DataField="descricao" HeaderText="Descrição" Visible="True" />
                                                      <asp:TemplateField HeaderText="Select">
                                                          <itemtemplate>
                                                          <asp:CheckBox ID="chkSelect1" runat="server" />
                                                          </itemtemplate>
                                                          <headertemplate>
                                                              <input ID="chkAll1" runat="server" 
                                                                  onclick="javascript:SelecionaTodosChecks(this);" type="checkbox" />
                                                          </headertemplate>
                                                      </asp:TemplateField>
                                                      <asp:TemplateField HeaderText="Excluir">
                                                          <itemtemplate>
                                                          <asp:CheckBox ID="chkExcluir1" runat="server" />
                                                          </itemtemplate>                                                          
                                                      </asp:TemplateField>
                                                      
                                                  </columns>
                                                  <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
                                                  <editrowstyle backcolor="#999999" />
                                                  <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
                                                  <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
                                                  <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <alternatingrowstyle backcolor="White" forecolor="#284775" />
                                              </asp:GridView>
                                          </td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  <table id="tbl_Selecionar" runat="server" align="left" width="100%">
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              <asp:GridView ID="grd_selecionar" runat="server" 
                                                  CellPadding="4" DataKeyNames="Codigo" ForeColor="#333333" GridLines="None" 
                                                  Height="100%" onrowcommand="grd_selecionar_RowCommand" Width="100%">
                                                  <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <columns>
                                                      <asp:TemplateField ShowHeader="False">
                                                          <ItemTemplate>
                                                              <asp:Button ID="btn_selecionar" runat="server" CausesValidation="False" 
                                                                  CommandName="Select" OnClick="btn_selecionar_Click" Text="Selecionar" />
                                                          </ItemTemplate>
                                                          <ControlStyle CssClass="BotaoSubmit" />
                                                      </asp:TemplateField>
                                                  </columns>
                                                  <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
                                                  <editrowstyle backcolor="#999999" />
                                                  <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
                                                  <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
                                                  <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <alternatingrowstyle backcolor="White" forecolor="#284775" />
                                              </asp:GridView>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  <table ID="tbl_bonus" runat="server" border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                      <tr>
                                          <td class="style1">
                                              <asp:Label ID="Label17" runat="server" ForeColor="Blue" Text="Nome bonus" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:TextBox ID="tedBonus" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="200px"></asp:TextBox>
                                          </td>
                                          <td class="style1">
                                              </td>
                                      </tr>
                                      <tr>
                                          <td class="style1">
                                              <asp:Label ID="lblstatus1" runat="server" ForeColor="Blue" Text="Status" 
                                                  Width="80px"></asp:Label>
                                          </td>
                                          <td align="left">
                                              <asp:DropDownList ID="ddlstatusBonus" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                  Width="150px">
                                                  <asp:ListItem Value="1">ATIVO</asp:ListItem>
                                                  <asp:ListItem Value="0">INATIVO</asp:ListItem>
                                              </asp:DropDownList>
                                          </td>
                                          <td class="style1">
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td class="style1">
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                          <td class="style1">
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td align="center" colspan="3">
                                          
                                              <asp:GridView ID="grd_selecionarAnunciante" runat="server" 
                                                  AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" 
                                                  ForeColor="#333333" GridLines="None" Height="100%" 
                                                  onrowcommand="grd_selecionarAnunciante_RowCommand" Width="100%">
                                                  <footerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <columns>
                                                      <asp:BoundField DataField="codigo" HeaderText="Codigo" Visible="True" />
                                                      <asp:BoundField DataField="descricao" HeaderText="Descrição" Visible="True" />
                                                      <asp:TemplateField ShowHeader="False">
                                                          <ItemTemplate>
                                                              <asp:Button ID="btn_selecionar0" runat="server" CausesValidation="False" 
                                                                  CommandName="Select" OnClick="btn_selecionar_Click" Text="Selecionar" />
                                                          </ItemTemplate>
                                                          <ControlStyle CssClass="BotaoSubmit" />
                                                      </asp:TemplateField>
                                                  </columns>
                                                  <rowstyle backcolor="#F7F6F3" forecolor="#333333" />
                                                  <editrowstyle backcolor="#999999" />
                                                  <selectedrowstyle backcolor="#E2DED6" font-bold="True" forecolor="#333333" />
                                                  <pagerstyle backcolor="#284775" forecolor="White" horizontalalign="Center" />
                                                  <headerstyle backcolor="#5D7B9D" font-bold="True" forecolor="White" />
                                                  <alternatingrowstyle backcolor="White" forecolor="#284775" />
                                              </asp:GridView>
                                          
                                          </td>                                        
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              <asp:TextBox ID="tedCodigo_bonus" runat="server" 
                                                  style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset"></asp:TextBox>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                  </table>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                      </table>
                  </ContentTemplate>
              </asp:UpdatePanel>
                 
                 
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="center">
                     <asp:Panel ID="pnMenu" runat="server" Visible="true">
                     <table>
                        <tr>
                          <td>
                              <asp:Button ID="btnInserir" runat="server" 
                                  Text="Inserir" CssClass="BotaoSubmit" onclick="btnInserir_Click" 
                                  Enabled="true" />
                          </td>
                          <td>
                              <asp:Button ID="btnSalvar" runat="server" 
                                  Text="Salvar" CssClass="BotaoSubmit" Enabled="true" 
                                  onclick="btnSalvar_Click"  />
                          </td>
                          <td>
                              <asp:Button ID="btnDeletar" runat="server" 
                                  Text="Deletar" CssClass="BotaoSubmit" Enabled="true" 
                                  onclick="btnDeletar_Click"  />
                          </td>
                          <td>
                              <asp:Button ID="btnVoltar" runat="server" 
                                  Text="Voltar" CssClass="BotaoSubmit" Enabled="true" 
                                  onclick="btnVoltar_Click"  />
                          </td>
                          
                        </tr>
                     </table>
                  </asp:Panel>
                 
                 
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                         <ProgressTemplate>
                             <img alt="" src="imagens/wait.gif" />
                         </ProgressTemplate>
                     </asp:UpdateProgress>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="center">
                    <img ID="imgBoton" border="0" height="51" src="Imagens/Rodape.jpg" width="778" />                 
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
         
         </form>
      </center>
   </div>
</body>
</html>
