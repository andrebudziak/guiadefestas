<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastro_banner.aspx.cs" Inherits="cadastro_banner" %>

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
       
           <table border="0" cellpadding="0" cellspacing="0" style="width: 800px;">
               <tr>
                   <td align="center">
                       <asp:ScriptManager ID="ScriptManager1" runat="server">
                       </asp:ScriptManager>
                   </td>                  
               </tr>
           
               <tr>
                   <td align="center">
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <asp:GridView ID="grdDados" runat="server" 
                                  AllowPaging="True" CellPadding="4" DataSourceID="ObjectDataSource1" 
                                  Font-Names="Arial" Font-Size="11px" ForeColor="#333333" GridLines="None" 
                                  Width="800px" AutoGenerateColumns="False" 
                                   onrowcommand="grdDados_RowCommand" onrowcreated="grdDados_RowCreated" 
                                   ShowFooter="True" onrowdeleting="grdDados_RowDeleting" >
                                   <PagerSettings Position="Top" />
                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
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
                                        <asp:TemplateField HeaderText="Descrição" SortExpression="descricao">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtDescricao" runat="server" Width="150px" Text='<%# Bind("descricao") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblDescricao" runat="server" Text='<%# Eval("descricao") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtDescricao" runat="server" Width="150px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                
                                       <asp:TemplateField HeaderText="Local">
                                           <ItemTemplate>
                                               <asp:Label ID="lblBanner" runat="server" Text='<%# Bind("local") %>'></asp:Label>
                                           </ItemTemplate>
                                           <EditItemTemplate>
                                               <asp:DropDownList ID="ddlLocalBanner" runat="server" AutoPostBack="True" 
                                                  DataTextField="descricao" DataValueField="codigo"
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>
                                           </EditItemTemplate>
                                           <FooterTemplate>
                                               <asp:DropDownList ID="ddlLocalBanner" runat="server" AutoPostBack="True" 
                                                  DataTextField="descricao" DataValueField="codigo"
                                                   DataSourceID="ObjectDataSource2">
                                               </asp:DropDownList>                                           
                                           </FooterTemplate>
                                       </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Largura" SortExpression="largura">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtLargura" runat="server" Width="50px" Text='<%# Bind("largura") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblLargura" runat="server" Text='<%# Eval("largura") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtLargura" runat="server" Width="50px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altura" SortExpression="altura">
                                           <EditItemTemplate>
                                              <asp:TextBox ID="txtAltura" runat="server" Width="50px" Text='<%# Bind("altura") %>' />
                                           </EditItemTemplate>
                                           <ItemTemplate>
                                              <asp:Label ID="lblAltura" runat="server" Text='<%# Eval("altura") %>' />
                                           </ItemTemplate>
                                           <FooterTemplate>
                                              <asp:TextBox ID="txtAltura" runat="server" Width="50px" />
                                           </FooterTemplate>
                                        </asp:TemplateField>                                       
                                       <asp:TemplateField HeaderText="Status">
                                          <ItemTemplate>
                                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                          </ItemTemplate>
                                             <EditItemTemplate>
                                                <asp:DropDownList ID="ddlStatus" runat="server">
                                                   <asp:ListItem Value="1" Text="Ativo"></asp:ListItem>
                                                   <asp:ListItem Value="0" Text="Inativo"></asp:ListItem>
                                                </asp:DropDownList>
                                             </EditItemTemplate>
                                             <FooterTemplate>
                                                <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="true">
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
                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <EditRowStyle BackColor="#CCCCCC" Font-Names="Arial" Font-Size="11px" />
                                   <AlternatingRowStyle BackColor="White" />
                               </asp:GridView>
                               <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="ExcluirBanner" 
                                   InsertMethod="IncluirBanner" SelectMethod="ConsultaBanner" 
                                   TypeName="WebService" UpdateMethod="IncluirBanner" 
                                   ondeleting="ObjectDataSource1_Deleting" 
                                   oninserting="ObjectDataSource1_Inserting" 
                                   onselected="ObjectDataSource1_Selected" onupdating="ObjectDataSource1_Updating">
                                   <DeleteParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                   </DeleteParameters>
                                   <UpdateParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="descricao" Type="String" />
                                       <asp:Parameter Name="posicaoBanner" Type="Int32" />
                                       <asp:Parameter Name="largura" Type="Int32" />
                                       <asp:Parameter Name="altura" Type="Int32" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                   </UpdateParameters>
                                   <SelectParameters>
                                       <asp:Parameter DefaultValue="0" Name="codigo_banner" Type="Int32" />
                                   </SelectParameters>
                                   <InsertParameters>
                                       <asp:Parameter Name="codigo" Type="Int32" />
                                       <asp:Parameter Name="descricao" Type="String" />
                                       <asp:Parameter Name="posicaoBanner" Type="Int32" />
                                       <asp:Parameter Name="largura" Type="Int32" />
                                       <asp:Parameter Name="altura" Type="Int32" />
                                       <asp:Parameter Name="status" Type="Int32" />
                                   </InsertParameters>
                               </asp:ObjectDataSource>
                               <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                   SelectMethod="ConsultaLocalBanner" TypeName="WebService">
                               </asp:ObjectDataSource>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </td>                  
               </tr>
           
               <tr>
                   <td align="center">
                       <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                           AssociatedUpdatePanelID="UpdatePanel1">
                           <ProgressTemplate>
                               <img alt="" src="imagens/wait.gif" 
    style="width: 50px; height: 50px" />Aguarde...</ProgressTemplate>
                       </asp:UpdateProgress>
                   </td>                  
               </tr>
           
           </table>
       
       </center>    
    </div>
    </form>
</body>
</html>
