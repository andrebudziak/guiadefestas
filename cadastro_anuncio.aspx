<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastro_anuncio.aspx.cs" Inherits="cadastro_anuncio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <form id="form1" runat="server">
    <div>
       <center>
       
           <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                       <asp:ScriptManager ID="ScriptManager1" runat="server">
                       </asp:ScriptManager>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                   DeleteMethod="ExcluirAnuncio" InsertMethod="IncluirAnuncio" 
                                   SelectMethod="ConsultaAnuncio" TypeName="WebService" 
                                   UpdateMethod="IncluirAnuncio" ondeleting="ObjectDataSource1_Deleting" 
                                   oninserting="ObjectDataSource1_Inserting" 
                                   onselected="ObjectDataSource1_Selected" 
                                   onupdating="ObjectDataSource1_Updating">
                                   <DeleteParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                   </DeleteParameters>                                   
                                   <UpdateParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="codigo_cliente" Type="Int32" />
                                       <asp:Parameter Name="cep" Type="String" />
                                       <asp:Parameter Name="bairro" Type="String" />
                                       <asp:Parameter Name="cidade" Type="String" />
                                       <asp:Parameter Name="endereco" Type="String" />
                                       <asp:Parameter Name="telefone" Type="String" />
                                       <asp:Parameter Name="email" Type="String" />
                                       <asp:Parameter Name="site" Type="String" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                       <asp:Parameter Name="senha" Type="String" />
                                   </UpdateParameters>
                                   <SelectParameters>
                                       <asp:Parameter DefaultValue="0" Name="codigo" Type="Int32" />
                                   </SelectParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="codigo_cliente" Type="Int32" />
                                       <asp:Parameter Name="cep" Type="String" />
                                       <asp:Parameter Name="bairro" Type="String" />
                                       <asp:Parameter Name="cidade" Type="String" />
                                       <asp:Parameter Name="endereco" Type="String" />
                                       <asp:Parameter Name="telefone" Type="String" />
                                       <asp:Parameter Name="email" Type="String" />
                                       <asp:Parameter Name="site" Type="String" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                       <asp:Parameter Name="senha" Type="String" />
                                   </InsertParameters>
                               </asp:ObjectDataSource>
                               <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                   SelectMethod="PopulaAnunciante" TypeName="WebService">
                               </asp:ObjectDataSource>
                               <asp:GridView ID="grdAnuncio" runat="server" AllowPaging="True" 
                                   AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                   DataSourceID="ObjectDataSource1" Font-Names="Arial" Font-Size="11px" 
                                   ForeColor="#333333" GridLines="None" Width="100%" 
                                   onrowcommand="grdAnuncio_RowCommand" onrowcreated="grdAnuncio_RowCreated" 
                                   onrowdeleting="grdAnuncio_RowDeleting" ShowFooter="True">
                                   <PagerSettings Position="Top" />
                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <EditRowStyle BackColor="#CCCCCC" Font-Names="Arial" Font-Size="11px" />                                  
                                   <AlternatingRowStyle BackColor="White" />
                                   <Columns>
                                        <asp:TemplateField HeaderText="Codigo" SortExpression="codigo">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtCodigo" runat="server" Width="20px" Text='<%# Bind("codigo") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("codigo") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtCodigo" runat="server" Width="20px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                      
                                       <asp:TemplateField HeaderText="Anunciante">
                                           <ItemTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                                                  DataTextField="razao_social" DataValueField="codigo" SelectedValue='<%# Bind("codigo")%>'
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                                                  DataTextField="razao_social" DataValueField="codigo" SelectedValue='<%# Bind("codigo")%>'
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>
                                           </EditItemTemplate>
                                           <FooterTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                                                  DataTextField="razao_social" DataValueField="codigo"
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>
                                           </FooterTemplate>                                           
                                       </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Cep" SortExpression="cep">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtCep" runat="server" Width="60px" Text='<%# Bind("cep") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblCep" runat="server" Text='<%# Eval("cep") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtCep" runat="server" Width="60px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                      
                                        <asp:TemplateField HeaderText="Bairro" SortExpression="bairro">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtBairro" runat="server" Width="60px" Text='<%# Bind("bairro") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblBairro" runat="server" Text='<%# Eval("bairro") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtBairro" runat="server" Width="60px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                        
                                        <asp:TemplateField HeaderText="Cidade" SortExpression="cidade">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtCidade" runat="server" Width="100px" Text='<%# Bind("cidade") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblCidade" runat="server" Text='<%# Eval("cidade") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtCidade" runat="server" Width="100px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                       
                                        <asp:TemplateField HeaderText="Endereço" SortExpression="endereco">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtEndereco" runat="server" Width="200px" Text='<%# Bind("endereco") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblEndereco" runat="server" Text='<%# Eval("endereco") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtEndereco" runat="server" Width="200px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                                                              
                                        <asp:TemplateField HeaderText="Telefone" SortExpression="telefone">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtTelefone" runat="server" Width="150px" Text='<%# Bind("telefone") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblTelefone" runat="server" Text='<%# Eval("telefone") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtTelefone" runat="server" Width="150px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="E-mail" SortExpression="email">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtEmail" runat="server" Width="200px" Text='<%# Bind("email") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtEmail" runat="server" Width="200px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                       
                                        <asp:TemplateField HeaderText="Site" SortExpression="site">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtSite" runat="server" Width="150px" Text='<%# Bind("site") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblSite" runat="server" Text='<%# Eval("site") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtSite" runat="server" Width="150px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Senha" SortExpression="senha">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtSenha" runat="server" Width="40px" Text='<%# Bind("senha") %>'  />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblSenha" runat="server" Text='<%# Eval("senha") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtSenha" runat="server" Width="40px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                               
                                       <asp:TemplateField HeaderText="Status">
                                           <ItemTemplate>
                                               <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlStatus" runat="server">
                                                   <asp:ListItem Text="Ativo" Value="1"></asp:ListItem>
                                                   <asp:ListItem Text="Inativo" Value="0"></asp:ListItem>
                                               </asp:DropDownList>
                                           </EditItemTemplate>
                                           <FooterTemplate>
                                               <asp:DropDownList ID="ddlStatus" runat="server">
                                                   <asp:ListItem Text="Ativo" Value="1"></asp:ListItem>
                                                   <asp:ListItem Text="Inativo" Value="0"></asp:ListItem>
                                               </asp:DropDownList>                                           
                                           </FooterTemplate>
                                       </asp:TemplateField>                                       
                                       <asp:TemplateField ShowHeader="False">
                                          <EditItemTemplate>
                                             <asp:LinkButton ID="LinkButtonUpdate" runat="server" CausesValidation="true" CommandName="Update" Text="Atualizar" />
                                             <asp:LinkButton ID="LinkButtonCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                             <asp:LinkButton ID="LinkButtonEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                                             <asp:LinkButton ID="LinkButtonDelete" runat="server" CausesValidation="False" CommandName="Delete"
                                                OnClientClick="return confirm('Deseja excluir o registro?');" Text="Deletar" />
                                          </ItemTemplate>
                                          <FooterTemplate>
                                             <asp:LinkButton ID="LinkButtonUpdate" runat="server" CausesValidation="true" CommandName="Save" Text="Salvar" />
                                          </FooterTemplate>
                                       </asp:TemplateField>
                                   
                                   </Columns>
                               </asp:GridView>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                       <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                           AssociatedUpdatePanelID="UpdatePanel1">
                           <ProgressTemplate>
                               <img alt="" src="imagens/wait.gif" 
    style="width: 50px; height: 50px" />Aguarde...
                           </ProgressTemplate>
                       </asp:UpdateProgress>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
           </table>
       
       </center>
    </div>
    </form>
</body>
</html>
