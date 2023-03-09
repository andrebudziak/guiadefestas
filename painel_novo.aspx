<%@ Page Language="C#" AutoEventWireup="true" CodeFile="painel_novo.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>   
    <link href="Styles.css" rel="stylesheet" type="text/css" />  
</head>
<body>
    <form id="frmControl" runat="server">
    <div>
       <center>
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
       
           <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td align="center">
                               <asp:Panel ID="Panel1" runat="server" Width="720px">
                                   <cc1:TabContainer ID="tcControle" runat="server" ActiveTabIndex="1" 
                                       Width="750px" AutoPostBack="True" 
                                       onactivetabchanged="tcControle_ActiveTabChanged" TabIndex="2">
                                       <cc1:TabPanel ID="tbCliente" runat="server" HeaderText="Cliente">
                                          <ContentTemplate>
                                                  <table style="width:100%;" border="0" cellpadding="1" cellspacing="1" 
                                                      align="center">
                                                          <tr>
                                                              <td align="right">
                                                                  &nbsp;</td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtCodigo_Cliente" runat="server" Width="100px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  &nbsp;<asp:Label ID="Label1" runat="server" CssClass="TextoCinzaEscuro" 
                                                                      Text="Razão Social"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtRazaoSocial" runat="server" Width="300px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;&nbsp;
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label2" runat="server" CssClass="TextoCinzaEscuro" 
                                                                      Text="C.N.P.J"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtCnpj" runat="server" Width="150px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;&nbsp;
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label3" runat="server" CssClass="TextoCinzaEscuro" Text="C.P.F"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtCpf" runat="server" Width="150px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;&nbsp;
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label4" runat="server" CssClass="TextoCinzaEscuro" Text="R.G"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtRg" runat="server" Width="150px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label5" runat="server" CssClass="TextoCinzaEscuro" 
                                                                      Text="Endereço"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtEndereco" runat="server" Width="300px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label6" runat="server" CssClass="TextoCinzaEscuro" Text="Bairro"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtBairro" runat="server" Width="200px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label7" runat="server" CssClass="TextoCinzaEscuro" Text="Cidade"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtCidade" runat="server" Width="200px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label8" runat="server" CssClass="TextoCinzaEscuro" Text="Cep"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtCep" runat="server" Width="150px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label9" runat="server" CssClass="TextoCinzaEscuro" Text="E-mail"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label10" runat="server" CssClass="TextoCinzaEscuro" 
                                                                      Text="Responsavel"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtResponsavel" runat="server" Width="200px"></asp:TextBox>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  <asp:Label ID="Label11" runat="server" CssClass="TextoCinzaEscuro" 
                                                                      Text="Telefone"></asp:Label>
                                                              </td>
                                                              <td align="left">
                                                                  <asp:TextBox ID="txtTelefone" runat="server" Width="150px"></asp:TextBox>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="right">
                                                                  &nbsp;</td>
                                                              <td align="left">
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="center">
                                                                  <asp:Button ID="btnIncluirCliente0" runat="server" 
                                                                      OnClick="btnIncluirCliente_Click" Text="Inlcuir" Width="200px" 
                                                                      CssClass="TextoVermelho" />
                                                              </td>
                                                              <td align="center">
                                                                  <asp:Button ID="btnSalvarCliente" runat="server" Text="Salvar" Width="200px" 
                                                                      CssClass="TextoVermelho" OnClick="btnSalvarCliente_Click" />
                                                              </td>
                                                              <td align="center">
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" colspan="3">
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="center" colspan="3">
                                                                  <asp:Panel ID="Panel2" runat="server" Height="250px" ScrollBars="Both" 
                                                                      Width="700px">
                                                                      <asp:GridView ID="grdCliente" runat="server" AutoGenerateColumns="False" 
                                                                          CellPadding="4" Font-Names="Verdana" Font-Size="11px" ForeColor="#333333" 
                                                                          GridLines="None" Width="100%" onrowcommand="grdCliente_RowCommand">
                                                                          <AlternatingRowStyle BackColor="White" />
                                                                          <Columns>
                                                                              <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                              <asp:BoundField DataField="razao_social" HeaderText="Razão Social" />
                                                                              <asp:BoundField DataField="cnpj" HeaderText="C.N.P.J" />
                                                                              <asp:BoundField DataField="cpf" HeaderText="C.P.F" />
                                                                              <asp:BoundField DataField="rg" HeaderText="R.G" />
                                                                              <asp:BoundField DataField="endereco" HeaderText="Endereço" />
                                                                              <asp:BoundField DataField="bairro" HeaderText="Bairro" />
                                                                              <asp:BoundField DataField="cidade" HeaderText="Cidade" />
                                                                              <asp:BoundField DataField="cep" HeaderText="Cep" />
                                                                              <asp:BoundField DataField="email" HeaderText="E-mail" />
                                                                              <asp:BoundField DataField="responsavel" HeaderText="Responsavel" />
                                                                              <asp:BoundField DataField="telefone" HeaderText="Telefone" />
                                                                              <asp:TemplateField>
                                                                                  <ItemTemplate>
                                                                                      <asp:LinkButton ID="cmdAlterar0" runat="server" 
                                                                                          CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                          Visible="true">
                                                                                    Alterar</asp:LinkButton>
                                                                                  </ItemTemplate>
                                                                              </asp:TemplateField>
                                                                              <asp:TemplateField>
                                                                                  <ItemTemplate>
                                                                                      <asp:LinkButton ID="cmdDelete0" runat="server" 
                                                                                          CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                          Visible="true">
                                                                                    Deletar</asp:LinkButton>
                                                                                  </ItemTemplate>
                                                                              </asp:TemplateField>
                                                                          </Columns>
                                                                          <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                          <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                          <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                      </asp:GridView>
                                                                  </asp:Panel>
                                                              </td>
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
                                       </cc1:TabPanel>
                                       <cc1:TabPanel ID="tbAnuncio" runat="server" HeaderText="Anuncio">
                                           <ContentTemplate>
                                               <table border="0" cellpadding="1" cellspacing="1" style="width:100%;">
                                                   <tr>
                                                       <td align="right">
                                                           &nbsp;</td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtCodigoAnuncio" runat="server" Width="100px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label12" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Empresa"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtEmpresa" runat="server" Width="300px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label31" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Cep"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtCepAnuncio" runat="server" Width="150px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label13" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Bairro"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtBairroAnuncio" runat="server" Width="150px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label14" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Cidade"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtCidadeAnuncio" runat="server" Width="150px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label15" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Endereço"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtEnderecoAnuncio" runat="server" Width="300px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label16" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Telefone"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtTelefoneAnuncio" runat="server" Width="150px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label17" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="E-mail"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtEmailAnuncio" runat="server" Width="300px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label18" runat="server" CssClass="TextoCinzaEscuro" Text="Site"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtSiteAnuncio" runat="server" Width="300px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label27" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Status"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:DropDownList ID="ddlStatus" runat="server" Width="150px">
                                                           </asp:DropDownList>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label28" runat="server" CssClass="TextoCinzaEscuro" Text="Senha"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtSenhaAnuncio" runat="server" TextMode="Password" 
                                                               Width="100px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label21" runat="server" CssClass="TextoCinzaEscuro" 
                                                               Text="Acesso"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtAcesso" runat="server" Width="100px"></asp:TextBox>
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
                                                   <tr>
                                                       <td>
                                                           &nbsp;</td>
                                                       <td align="center">
                                                           <asp:Button ID="btnIncluirCategoriaAnuncio" runat="server" 
                                                               CssClass="TextoVermelho" onclick="btnIncluirCategoriaAnuncio_Click" 
                                                               Text="Incluir Categoria Anuncio" />
                                                           <cc1:ModalPopupExtender ID="btnIncluirCategoriaAnuncio_ModalPopupExtender" 
                                                               runat="server" DynamicServicePath="" Enabled="True" 
                                                               PopupControlID="pnCategoriaAnuncio" DropShadow="True" 
                                                                backgroundcssclass="ModalPopupBG"
                                                               TargetControlID="btnIncluirCategoriaAnuncio">
                                                           </cc1:ModalPopupExtender>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>                                                   
                                                   <tr>
                                                       <td align="left" colspan="3" >
                                                           <asp:Panel ID="pnCategoriaAnuciante" runat="server" Height="250px" ScrollBars="Both" 
                                                               Width="700px">
                                                             <asp:GridView ID="grdCategoriaAnunciante" runat="server" 
                                                               AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                                                               Font-Size="11px" ForeColor="#333333" GridLines="None" 
                                                               OnRowCommand="grdCategoriaAnuncio_RowCommand" PageSize="5" Width="730px" 
                                                                   onrowdatabound="grdCategoriaAnunciante_RowDataBound">
                                                               <AlternatingRowStyle BackColor="White" />
                                                               <Columns>
                                                                   <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                   <asp:BoundField DataField="descricao" HeaderText="Descrição" />                                                               
                                                                   <asp:TemplateField>
                                                                       <ItemTemplate>
                                                                           <asp:LinkButton ID="cmdDelete2" runat="server" 
                                                                               CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                               Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                       </ItemTemplate>
                                                                   </asp:TemplateField>
                                                               </Columns>
                                                               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                               <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                           </asp:GridView>                                                               
                                                           </asp:Panel>
                                                       </td>                                                    
                                                   </tr>
                                                   <tr>
                                                       <td align="left" colspan="3">
                                                           
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center">
                                                           <asp:Button ID="btnIncluirAnuncio" runat="server" 
                                                               onclick="btnIncluirAnuncio_Click" Text="Incluir" Width="200px" 
                                                               CssClass="TextoVermelho" />
                                                       </td>
                                                       <td align="center">
                                                           <asp:Button ID="btnSalvarAnuncio" runat="server" CssClass="TextoVermelho" 
                                                               OnClick="btnSalvarAnuncio_Click" Text="Salvar" Width="200px" />
                                                       </td>
                                                       <td align="center">
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left" colspan="3">
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left" colspan="3">
                                                           <asp:Panel ID="pnDadosAnuncio" runat="server" Height="250px" ScrollBars="Both" 
                                                               Width="700px">
                                                               <asp:GridView ID="grdDadosAnuncio" runat="server" AutoGenerateColumns="False" 
                                                                   CellPadding="4" Font-Names="Verdana" Font-Size="11px" ForeColor="#333333" 
                                                                   GridLines="None" OnRowCommand="grdAnuncio_RowCommand" Width="100%">
                                                                   <AlternatingRowStyle BackColor="White" />
                                                                   <Columns>
                                                                       <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                       <asp:BoundField DataField="empresa" HeaderText="Empresa" />
                                                                       <asp:BoundField DataField="bairro" HeaderText="Bairro" />
                                                                       <asp:BoundField DataField="cidade" HeaderText="Cidade" />
                                                                       <asp:BoundField DataField="endereco" HeaderText="Endereço" />
                                                                       <asp:BoundField DataField="telefone" HeaderText="Telefone" />
                                                                       <asp:BoundField DataField="email" HeaderText="E-mail" />
                                                                       <asp:BoundField DataField="site" HeaderText="Site" />
                                                                       <asp:BoundField DataField="status" HeaderText="Status" />
                                                                       <asp:BoundField DataField="senha" HeaderText="Senha" />
                                                                       <asp:BoundField DataField="acesso" HeaderText="Acesso" />
                                                                       <asp:BoundField DataField="codigo_status" HeaderText="codigo_status" 
                                                                           Visible="False" />
                                                                       <asp:TemplateField>
                                                                           <ItemTemplate>
                                                                               <asp:LinkButton ID="cmdAlterar1" runat="server" 
                                                                                   CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                   Visible="true">                                                                               
                                                                              Alterar</asp:LinkButton>
                                                                           </ItemTemplate>
                                                                       </asp:TemplateField>
                                                                       <asp:TemplateField>
                                                                           <ItemTemplate>
                                                                               <asp:LinkButton ID="cmdDelete1" runat="server" 
                                                                                   CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                   Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                           </ItemTemplate>
                                                                       </asp:TemplateField>
                                                                   </Columns>
                                                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                               </asp:GridView>
                                                           </asp:Panel>
                                                       </td>
                                                   </tr>
                                               </table>
                                           </ContentTemplate>
                                       </cc1:TabPanel>
                                       <cc1:TabPanel ID="tbFinanceiro" runat="server" HeaderText="Financeiro">
                                          <ContentTemplate>                                          
                                              <table border="0" cellpadding="1" cellspacing="1" style="width:100%;">
                                                  <tr>
                                                      <td align="right">
                                                          &nbsp;</td>
                                                      <td align="left">
                                                          &nbsp;</td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label29" runat="server" CssClass="TextoCinzaEscuro" 
                                                              Text="Data:"></asp:Label>
                                                      </td>
                                                      <td align="left">
                                                          <asp:TextBox ID="txtDataInicial" runat="server"></asp:TextBox>
                                                          <cc1:CalendarExtender ID="txtDataInicial_CalendarExtender" runat="server" 
                                                              Enabled="True" TargetControlID="txtDataInicial">
                                                          </cc1:CalendarExtender>
                                                          <asp:Label ID="Label30" runat="server" CssClass="TextoCinzaEscuro" Text="à"></asp:Label>
                                                          <asp:TextBox ID="txtDataFinal" runat="server"></asp:TextBox>
                                                          <cc1:CalendarExtender ID="txtDataFinal_CalendarExtender" runat="server" 
                                                              Enabled="True" TargetControlID="txtDataFinal">
                                                          </cc1:CalendarExtender>
                                                          <asp:Button ID="btnAtualizarDataFinanceiro" runat="server" Text="Atualizar" 
                                                              Width="100px" />
                                                      </td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          &nbsp;</td>
                                                      <td align="left">
                                                          &nbsp;</td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label22" runat="server" CssClass="TextoCinzaEscuro" Text="Mes"></asp:Label>
                                                      </td>
                                                      <td align="left">
                                                          <asp:DropDownList ID="ddlMes" runat="server" Width="200px">
                                                          </asp:DropDownList>
                                                      </td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label19" runat="server" CssClass="TextoCinzaEscuro" 
                                                              Text="Vencimento"></asp:Label>
                                                      </td>
                                                      <td align="left">
                                                          <asp:TextBox ID="txtVencimentoAnuncio" runat="server" Width="120px"></asp:TextBox>
                                                      </td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label20" runat="server" CssClass="TextoCinzaEscuro" 
                                                              Text="Mensalidade"></asp:Label>
                                                      </td>
                                                      <td align="left">
                                                          <asp:TextBox ID="txtValorMensalidade" runat="server" Width="120px"></asp:TextBox>
                                                      </td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label23" runat="server" CssClass="TextoCinzaEscuro" 
                                                              Text="Boleto"></asp:Label>
                                                      </td>
                                                      <td align="left">
                                                          <asp:TextBox ID="txtBoleto" runat="server" Width="200px"></asp:TextBox>
                                                      </td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right" >
                                                          <asp:Label ID="Label24" runat="server" CssClass="TextoCinzaEscuro" Text="Valor"></asp:Label>
                                                      </td>
                                                      <td align="left" >
                                                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                      </td>
                                                      <td >
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="right">
                                                          <asp:Label ID="Label25" runat="server" CssClass="TextoCinzaEscuro" Text="Baixa"></asp:Label>
                                                      </td>                                                   
                                                      <td align="left">
                                                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                          <cc1:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                                                              Enabled="True" TargetControlID="TextBox3">
                                                          </cc1:CalendarExtender>
                                                      </td>
                                                      <td>
                                                          </td>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          &nbsp;</td>
                                                      <td>
                                                          &nbsp;</td>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" colspan="3">
                                                          <asp:Label ID="Label26" runat="server" CssClass="TextoCinzaEscuro" 
                                                              Text="Observação"></asp:Label>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" colspan="3">
                                                          <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" BasePath="~/fckeditor/" 
                                                              Height="350px" Width="100%">
                                                          </FCKeditorV2:FCKeditor>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" colspan="3">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="left" colspan="3">
                                                          <asp:Panel ID="Panel4" runat="server" Height="200px" ScrollBars="Both" 
                                                              Width="620px">
                                                              <asp:GridView ID="grdFinanceiro" runat="server" AutoGenerateColumns="False" 
                                                                  CellPadding="4" Font-Names="Verdana" Font-Size="11px" ForeColor="#333333" 
                                                                  GridLines="None" Width="100%">
                                                                  <AlternatingRowStyle BackColor="White" />
                                                                  <Columns>
                                                                      <asp:BoundField DataField="mes" HeaderText="Mes" />
                                                                      <asp:BoundField DataField="codigo_mes" HeaderText="" Visible="false" />
                                                                      <asp:BoundField DataField="vencimento" HeaderText="Vencimento" />
                                                                      <asp:BoundField DataField="mensalidade" HeaderText="Mensalidade" />
                                                                      <asp:BoundField DataField="boleto" HeaderText="Boleto" />
                                                                      <asp:BoundField DataField="valor" HeaderText="Valor" />
                                                                      <asp:BoundField DataField="baixa" HeaderText="Baixa" />
                                                                      <asp:TemplateField>
                                                                          <ItemTemplate>
                                                                              <asp:LinkButton ID="cmdAlterar" runat="server" 
                                                                                  CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                  Visible="true">
                                                                              
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                              Alterar</asp:LinkButton>
                                                                          </ItemTemplate>
                                                                      </asp:TemplateField>
                                                                      <asp:TemplateField>
                                                                          <ItemTemplate>
                                                                              <asp:LinkButton ID="cmdDelete" runat="server" 
                                                                                  CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                  Visible="true">                                                                              
                                                                              Deletar</asp:LinkButton>
                                                                          </ItemTemplate>
                                                                      </asp:TemplateField>
                                                                  </Columns>
                                                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                              </asp:GridView>
                                                          </asp:Panel>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" colspan="3">
                                                          &nbsp;</td>
                                                  </tr>
                                              </table>                                          
                                          </ContentTemplate>
                                       </cc1:TabPanel>
                                       <cc1:TabPanel ID="tbBanner" runat="server" HeaderText="Banner">
                                       <ContentTemplate>
                                                 <asp:Panel ID="pnBanner" runat="server" Width="700px" Height="700px">
                                                   <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                                   <tr>
                                                       <td align="right">
                                                           &nbsp;</td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtCodigoBanner" runat="server"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                       <tr>
                                                           <td align="right">
                                                               <asp:Label ID="Label32" runat="server" CssClass="TextoCinzaEscuro2" 
                                                                   Text="Descrição"></asp:Label>
                                                           </td>
                                                           <td align="left">
                                                               <asp:TextBox ID="txtDescricaoBanner" runat="server" Width="300px"></asp:TextBox>
                                                           </td>
                                                           <td>
                                                               &nbsp;</td>
                                                       </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label33" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Status"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:DropDownList ID="ddlStatusBanner" runat="server" Width="200px">
                                                           </asp:DropDownList>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label34" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Comprimento"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtLargura" runat="server"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label35" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Altura"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           <asp:Label ID="Label36" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Posição Banner"></asp:Label>
                                                       </td>
                                                       <td align="left">
                                                           <asp:DropDownList ID="ddlPosicaoBanner" runat="server" Width="200px">
                                                           </asp:DropDownList>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="right">
                                                           &nbsp;</td>
                                                       <td>
                                                           &nbsp;</td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>                                                  
                                                       <td align="center" colspan="3">
                                                           &nbsp;</td>
                                                   
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           <asp:Panel ID="pnCategoriaBanner" runat="server" Height="200px" 
                                                               ScrollBars="Both" Width="700px">
                                                               <asp:GridView ID="grdCategoriaBanner" runat="server" 
                                                                   AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                                                                   Font-Size="11px" ForeColor="#333333" GridLines="None" PageSize="5" 
                                                                   Width="730px" onrowcommand="grdCategoriaBanner_RowCommand" 
                                                                   onrowdatabound="grdCategoriaBanner_RowDataBound">
                                                                   <AlternatingRowStyle BackColor="White" />
                                                                   <Columns>
                                                                       <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                       <asp:BoundField DataField="codigo_categoria" Visible="False" />
                                                                       <asp:BoundField DataField="codigo_banner" Visible="False"/>
                                                                       <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                                                                       <asp:TemplateField>
                                                                           <ItemTemplate>
                                                                               <asp:LinkButton ID="cmdDelete4" runat="server" 
                                                                                   CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                   Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                           </ItemTemplate>
                                                                       </asp:TemplateField>
                                                                   </Columns>
                                                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                   <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                               </asp:GridView>
                                                           </asp:Panel>
                                                       </td>
                                                   </tr>
                                                       <tr>
                                                           <td align="center" colspan="3">
                                                               &nbsp;</td>
                                                       </tr>
                                                       <tr>
                                                           <td align="center" colspan="3">
                                                               <asp:Panel ID="pnDadosBanner" runat="server" Height="250px" ScrollBars="Both" 
                                                                   Width="700px">
                                                                   <asp:GridView ID="grdBanner" runat="server" AutoGenerateColumns="False" 
                                                                       CellPadding="4" Font-Names="Verdana" Font-Size="11px" ForeColor="#333333" 
                                                                       GridLines="None" OnRowCommand="grdBanner_RowCommand" 
                                                                       OnRowDataBound="grdBanner_RowDataBound" PageSize="5" Width="730px">
                                                                       <AlternatingRowStyle BackColor="White" />
                                                                       <Columns>
                                                                           <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                           <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                                                                           <asp:BoundField DataField="codigo_local_banner" Visible="False" />
                                                                           <asp:BoundField DataField="local" HeaderText="Local" />
                                                                           <asp:BoundField DataField="largura" HeaderText="Comprimento" />
                                                                           <asp:BoundField DataField="altura" HeaderText="Altura" />
                                                                           <asp:BoundField DataField="codigo_status" Visible="False" />
                                                                           <asp:BoundField DataField="status" HeaderText="Status" />
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdAltera9" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                       Visible="true">
                                                                              Alterar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdDelete9" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                       Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>
                                                                       </Columns>
                                                                       <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                                       <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                       <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                   </asp:GridView>
                                                               </asp:Panel>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td align="center" colspan="3">
                                                               &nbsp;</td>
                                                       </tr>
                                                       <tr>
                                                           <td align="center" colspan="3">
                                                               <asp:Button ID="btnIncluirBanner" runat="server" CssClass="TextoVermelho" 
                                                                   onclick="btnIncluirBanner_Click" Text="Incluir" Width="200px" />
                                                               &nbsp;&nbsp;
                                                               <asp:Button ID="btnSalvarBanner" runat="server" CssClass="TextoVermelho" 
                                                                   onclick="btnSalvarBanner_Click" Text="Salvar" Width="200px" />
                                                           </td>
                                                       </tr>
                                               </table>                                               
                                           </asp:Panel>                                        
                                       </ContentTemplate>
                                       </cc1:TabPanel>
                                       <cc1:TabPanel ID="tbBonus" runat="server" HeaderText="Bonus">
                                       <ContentTemplate>                                          
                                           <asp:Panel ID="pnBonus" runat="server" Height="450px" ScrollBars="Both" 
                                               Width="700px">
                                               <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                                   <tr>
                                                       <td>
                                                           &nbsp;</td>
                                                       <td>
                                                           <asp:TextBox ID="txtCodigoBonus" runat="server" Width="200px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:Label ID="Label37" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Descricao"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <asp:TextBox ID="txtDescricaoBonus" runat="server" Width="200px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:Label ID="Label38" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Status"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <asp:DropDownList ID="ddlStatusBonus" runat="server" Width="200px">
                                                           </asp:DropDownList>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:Label ID="Label39" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Anunciante"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <asp:DropDownList ID="ddlAnuncianteBonus" runat="server" Width="200px">
                                                           </asp:DropDownList>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                          <asp:Panel ID="pnDadosBonus" runat="server" Height="250px" 
                                                                   ScrollBars="Both" Width="700px">
                                                                   <asp:GridView ID="grdDadosBonus" runat="server" 
                                                                       AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                                                                       Font-Size="11px" ForeColor="#333333" GridLines="None" PageSize="5" 
                                                                       Width="730px" onrowcommand="grdDadosBonus_RowCommand" 
                                                                       onrowdatabound="grdDadosBonus_RowDataBound">
                                                                       <AlternatingRowStyle BackColor="White" />
                                                                       <Columns>
                                                                           <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                           <asp:BoundField DataField="bonus" HeaderText="Descrição" />
                                                                           <asp:BoundField DataField="codigo_status" Visible="False" />
                                                                           <asp:BoundField DataField="codigo_anunciante" Visible="False" />
                                                                           <asp:BoundField DataField="status" HeaderText="Status" />
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdAltera7" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                       Visible="true">
                                                                              Alterar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>                                                                           
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdDelete7" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                       Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>
                                                                       </Columns>
                                                                       <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                                       <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                       <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                   </asp:GridView>
                                                               </asp:Panel>                                                       
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           <asp:Button ID="btnIncluirBonus" runat="server" CssClass="TextoVermelho" 
                                                               Text="Incluir" Width="200px" onclick="btnIncluirBonus_Click" />
                                                           <asp:Button ID="btnSalvarBonus" runat="server" CssClass="TextoVermelho" 
                                                               onclick="btnSalvarBonus_Click" Text="Salvar" Width="200px" />
                                                       </td>
                                                   </tr>
                                               </table>
                                           </asp:Panel>                                          
                                       </ContentTemplate>                                       
                                       </cc1:TabPanel>
                                       <cc1:TabPanel ID="tbCategoria" runat="server" HeaderText="Categoria">
                                       <ContentTemplate>                                          
                                           <asp:Panel ID="pnCategoria" runat="server" Height="400px" 
                                               Width="700px">
                                               <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                                   <tr>
                                                       <td>
                                                           &nbsp;</td>
                                                       <td>
                                                           <asp:TextBox ID="txtCodigoCategoria" runat="server" Width="200px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:Label ID="Label40" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Descrição"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <asp:TextBox ID="txtDescricaoCategoria" runat="server" Width="200px"></asp:TextBox>
                                                       </td>
                                                       <td>
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:Label ID="Label41" runat="server" CssClass="TextoCinzaEscuro2" 
                                                               Text="Tipo Categoria"></asp:Label>
                                                       </td>
                                                       <td>
                                                           <asp:DropDownList ID="ddlTipoCategoriaCat" runat="server" 
                                                               style="border-left-color: blue; border-bottom-color: blue; border-top-style: outset; border-top-color: blue; border-right-style: outset; border-left-style: outset; border-right-color: blue; border-bottom-style: outset" 
                                                               Width="200px">
                                                               <asp:ListItem Value="0">[]</asp:ListItem>
                                                               <asp:ListItem Value="1">Onde fazer a sua FESTA</asp:ListItem>
                                                               <asp:ListItem Value="2">Serviços para FESTA</asp:ListItem>
                                                           </asp:DropDownList>
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
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           <asp:Panel ID="PnDadosCategoria" runat="server" Height="250px" 
                                                                   ScrollBars="Both" Width="700px">
                                                                   <asp:GridView ID="grdDadosCategoria" runat="server" 
                                                                       AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                                                                       Font-Size="11px" ForeColor="#333333" GridLines="None" PageSize="5" 
                                                                       Width="730px" onrowcommand="grdDadosCategoria_RowCommand" 
                                                                       onrowdatabound="grdDadosCategoria_RowDataBound">
                                                                       <AlternatingRowStyle BackColor="White" />
                                                                       <Columns>
                                                                           <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                                                                           <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdAltera8" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Alterar" 
                                                                                       Visible="true">
                                                                              Alterar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>                                                                           
                                                                           <asp:TemplateField>
                                                                               <ItemTemplate>
                                                                                   <asp:LinkButton ID="cmdDelete8" runat="server" 
                                                                                       CommandArgument="<%# Container.DataItemIndex %>" CommandName="Excluir" 
                                                                                       Visible="true">
                                                                              Deletar</asp:LinkButton>
                                                                               </ItemTemplate>
                                                                           </asp:TemplateField>
                                                                       </Columns>
                                                                       <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                                       <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                                                                       <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                                       <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                                       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                                   </asp:GridView>
                                                               </asp:Panel>                                                       
                                                       </td>                                                       
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           &nbsp;</td>
                                                   </tr>
                                                   <tr>
                                                       <td align="center" colspan="3">
                                                           <asp:Button ID="btnIncluirCategoria" runat="server" CssClass="TextoVermelho" 
                                                               onclick="btnIncluirCategoria_Click" Text="Incluir" Width="200px" />
                                                           &nbsp;&nbsp;&nbsp;<asp:Button ID="btnSalvarCategoria" runat="server" CssClass="TextoVermelho" 
                                                               onclick="btnSalvarCategoria_Click" Text="Salvar" Width="200px" />
                                                       </td>
                                                   </tr>
                                               </table>
                                           </asp:Panel>                                          
                                       </ContentTemplate>                                       
                                       </cc1:TabPanel>
                                   </cc1:TabContainer>
                               </asp:Panel>
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
           <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
               <tr>
                   <td>
                       &nbsp;
                   </td>
                   <td align="center">
                       <asp:Panel ID="pnCategoriaAnuncio" runat="server" Height="200px" ScrollBars="Both" 
                           Width="700px">
                    <asp:GridView ID="grdIncluiCategoriaAnuncio" runat="server" 
                      AutoGenerateColumns="False" CellPadding="4" Font-Names="Verdana" 
                      Font-Size="11px" ForeColor="#333333" GridLines="None" 
                      PageSize="5" Width="730px" onrowcommand="grdIncluiCategoriaAnuncio_RowCommand">
                      <AlternatingRowStyle BackColor="White" />
                       <Columns>
                        <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                        <asp:BoundField DataField="descricao" HeaderText="Descrição" />                                                                
                        <asp:TemplateField>
                        <ItemTemplate>
                        <asp:LinkButton ID="cmdSelecione" runat="server" 
                          CommandArgument="<%# Container.DataItemIndex %>" CommandName="Selecao" Visible="true">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          Selecione</asp:LinkButton>
                        </ItemTemplate>
                         </asp:TemplateField>
                         </Columns>
                         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                         <PagerSettings NextPageText="Próximo" PreviousPageText="" />
                         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                         <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                         </asp:GridView>                           
                           
                       </asp:Panel>
                       &nbsp;
                   </td>
                   <td>
                       &nbsp;
                   </td>
               </tr>
               <tr>
                   <td>
                       &nbsp;
                   </td>
                   <td>
                       &nbsp;
                   </td>
                   <td>
                       &nbsp;
                   </td>
               </tr>
               <tr>
                   <td>
                       &nbsp;
                   </td>
                   <td>
                       &nbsp;
                   </td>
                   <td>
                       &nbsp;
                   </td>
               </tr>
           </table>
           
           
           
          </ContentTemplate>
           <Triggers>
               <asp:AsyncPostBackTrigger ControlID="tcControle" EventName="ActiveTabChanged" />
           </Triggers>
          </asp:UpdatePanel>
       <table style="width: 100%;">
       <tr>
        <td>
            &nbsp;
        </td>
        <td align="center">
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    <img alt="" src="imagens/wait.gif" />Aguarde...</ProgressTemplate>
            </asp:UpdateProgress>
            &nbsp;
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
       </table>       
       </center>
    </div>
    </form>
</body>
</html>

