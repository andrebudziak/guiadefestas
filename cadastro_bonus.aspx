<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastro_bonus.aspx.cs" Inherits="cadastro_bonus" %>

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
                   <td align="center">
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <asp:GridView ID="grdBonus" runat="server" AllowPaging="True" 
                                   AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" 
                                   Font-Names="Arial" Font-Size="11px" ForeColor="#333333" GridLines="None" 
                                   ShowFooter="True" onrowcommand="grdBonus_RowCommand" 
                                   onrowcreated="grdBonus_RowCreated" onrowdeleting="grdBonus_RowDeleting">
                                   <PagerSettings Position="Top" />
                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <EditRowStyle BackColor="Silver" />
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
                                        <asp:TemplateField HeaderText="Descrição" SortExpression="bonus">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtDescricao" runat="server" Width="150px" Text='<%# Bind("bonus") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblDescricao" runat="server" Text='<%# Bind("bonus") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtDescricao" runat="server" Width="150px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>    
                                       <asp:TemplateField HeaderText="Anunciante">
                                           <ItemTemplate>
                                              <asp:Label ID="lblAnunciante" runat="server" Text='<%# Bind("anunciante") %>' />
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("codigo_anunciante")%>'
                                                  DataTextField="razao_social" DataValueField="codigo" 
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
                                       <asp:TemplateField HeaderText="Status">
                                          <ItemTemplate>
                                                <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Eval("codigo_status")%>'>
                                                   <asp:ListItem Value="1" Text="Ativo"></asp:ListItem>
                                                   <asp:ListItem Value="0" Text="Inativo"></asp:ListItem>
                                                </asp:DropDownList>
                                          </ItemTemplate>
                                          <EditItemTemplate>
                                             <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Eval("codigo_status")%>'>
                                                <asp:ListItem Value="1" Text="Ativo"></asp:ListItem>
                                                <asp:ListItem Value="0" Text="Inativo"></asp:ListItem>
                                             </asp:DropDownList>
                                          </EditItemTemplate>
                                          <FooterTemplate>
                                             <asp:DropDownList ID="ddlStatus" runat="server" >
                                                <asp:ListItem Value="1" Text="Ativo"></asp:ListItem>
                                                <asp:ListItem Value="0" Text="Inativo"></asp:ListItem>
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
                               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                   DeleteMethod="ExcluirBonus" InsertMethod="IncluirBonus" 
    SelectMethod="ConsultaDadosBonus" TypeName="WebService" 
    UpdateMethod="IncluirBonus" onupdating="ObjectDataSource1_Updating" 
                                   ondeleting="ObjectDataSource1_Deleting" 
                                   oninserting="ObjectDataSource1_Inserting" 
                                   onselected="ObjectDataSource1_Selected">
                                   <DeleteParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                   </DeleteParameters>
                                   <UpdateParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="codigo_anunciante" Type="Int32" />
                                       <asp:Parameter Name="bonus" Type="String" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                   </UpdateParameters>
                                   <SelectParameters>
                                       <asp:Parameter DefaultValue="0" Name="codigo_bonus" Type="Int32" />
                                   </SelectParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="codigo_anunciante" Type="Int32" />
                                       <asp:Parameter Name="bonus" Type="String" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                   </InsertParameters>
                               </asp:ObjectDataSource>
                               <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                   SelectMethod="PopulaAnunciante" TypeName="WebService">
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
    style="width: 50px; height: 50px" />Aguarde..
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
