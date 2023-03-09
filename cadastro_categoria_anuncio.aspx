<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastro_categoria_anuncio.aspx.cs" Inherits="cadastro_categoria_anuncio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
                   <td align="center">
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                              <asp:GridView ID="grdCategoriaAnuncio" runat="server" Width="800px" 
                                   AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" 
                                   ForeColor="#333333" GridLines="None" AllowPaging="True" Font-Names="Arial" 
                                   Font-Size="11px" onrowcommand="grdCategoriaAnuncio_RowCommand" 
                                   onrowcreated="grdCategoriaAnuncio_RowCreated" ShowFooter="True" 
                                   onrowdeleting="grdCategoriaAnuncio_RowDeleting">
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
                                              <asp:Label ID="lblCodigo" runat="server" Text='<%# Bind("codigo") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtCodigo" runat="server" Width="20px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Anuncio">
                                           <ItemTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                                                  DataTextField="razao_social" DataValueField="codigo" SelectedValue='<%# Bind("codigo_anunciante")%>'
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" 
                                                  DataTextField="razao_social" DataValueField="codigo" SelectedValue='<%# Bind("codigo_anunciante")%>'
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
                                        <asp:TemplateField HeaderText="Categoria">
                                           <ItemTemplate>
                                               <asp:DropDownList ID="ddlCategoria" runat="server" AutoPostBack="True" 
                                                  DataTextField="descricao" DataValueField="codigo" SelectedValue='<%# Bind("codigo_categoria")%>'
                                                   DataSourceID="ObjectDataSource3">
                                               </asp:DropDownList>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlCategoria" runat="server" AutoPostBack="True" 
                                                  DataTextField="descricao" DataValueField="codigo" SelectedValue='<%# Bind("codigo_categoria")%>'
                                                   DataSourceID="ObjectDataSource3">
                                               </asp:DropDownList>
                                           </EditItemTemplate>
                                           <FooterTemplate>
                                               <asp:DropDownList ID="ddlCategoria" runat="server" AutoPostBack="True" 
                                                  DataTextField="descricao" DataValueField="codigo"
                                                   DataSourceID="ObjectDataSource3">
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
                               <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                               <asp:Label ID="lblCodigoCategoria" runat="server"></asp:Label>
                               <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                   SelectMethod="PopulaAnunciante" TypeName="WebService">
                               </asp:ObjectDataSource> 
                               <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                   SelectMethod="PopulaCategoria" TypeName="WebService">
                               </asp:ObjectDataSource> 
                                                         
                               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCategoriaAnunciante" 
    InsertMethod="IncluiCategoriaAnunciante" 
    SelectMethod="ConsultaAnuncioCategoria" TypeName="WebService" 
    UpdateMethod="IncluiCategoriaAnunciante" ondeleting="ObjectDataSource1_Deleting" 
                                   oninserting="ObjectDataSource1_Inserting" 
                                   onselected="ObjectDataSource1_Selected" onupdating="ObjectDataSource1_Updating">
                                   <DeleteParameters>
                                       <asp:Parameter Name="codigo_anunciante" Type="Int32" />
                                       <asp:Parameter Name="codigo_categoria" Type="Int32" />
                                   </DeleteParameters>
                                   <UpdateParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="vCodigoAnunciante" Type="Int32" />
                                       <asp:Parameter Name="vCategoria" Type="Int32" />
                                   </UpdateParameters>
                                   <SelectParameters>
                                       <asp:Parameter DefaultValue="0" Name="codigo_anunciante" Type="Int32" />
                                   </SelectParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="vCodigoAnunciante" Type="Int32" />
                                       <asp:Parameter Name="vCategoria" Type="Int32" />
                                   </InsertParameters>
                               </asp:ObjectDataSource>
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
