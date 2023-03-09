<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
      
          <table border="0" cellpadding="0" cellspacing="0" class="0" style="width:100%;">
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
                      <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
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
                                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                      <ContentTemplate>
                                          <table border="0" cellpadding="0" cellspacing="0" 
    style="width:800px;">
                                              <tr>
                                                  <td align="center" colspan="3">
                                                      <table border="0" cellpadding="0" cellspacing="0" style="width:300px;">
                                                          <tr>
                                                              <td>
                                                                  <asp:DropDownList ID="ddlFiltro" runat="server" AutoPostBack="True" 
                                                                      Font-Names="Verdana" Font-Size="12px" ForeColor="#FF6600" 
                                                                      onselectedindexchanged="ddlFiltro_SelectedIndexChanged" 
                                                                      style="border-left-color: White; border-bottom-color: White; border-top-style: outset; border-top-color: White; border-right-style: outset; border-left-style: outset; border-right-color: White; border-bottom-style: outset" 
                                                                      Width="150px">
                                                                      <asp:ListItem Value="">Selecione um filtro</asp:ListItem>
                                                                      <asp:ListItem Value="anunciante.descricao">NOME</asp:ListItem>
                                                                      <asp:ListItem Value="bairro">BAIRRO</asp:ListItem>
                                                                  </asp:DropDownList>
                                                              </td>
                                                              <td>
                                                                  <asp:TextBox ID="txtValor" runat="server" AutoPostBack="True" 
                                                                      Font-Names="Arial" Font-Size="11px" Width="250px"></asp:TextBox>
                                                                  <cc1:AutoCompleteExtender ID="AutoCompleteExtenderDemo" runat="server" 
                                                                      EnableCaching="false" MinimumPrefixLength="1" 
                                                                      ServiceMethod="RetornaNomeCliente" ServicePath="WebService.asmx" 
                                                                      TargetControlID="txtValor">
                                                                  </cc1:AutoCompleteExtender>
                                                              </td>
                                                              <td>
                                                                  <asp:ImageButton ID="btnBusca" runat="server" 
                                                                      ImageUrl="~/imagens/PESQUISAR.png" onclick="btnBusca_Click" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              
                                              </tr>
                                              <tr>
                                                  <td align="center" valign="top" class="style1">
                                                      <table border="0" cellpadding="0" cellspacing="0" style="width:180px;">
                                                          <tr>
<td width="180px" height="20px" bgcolor="#FFCC66">
                 <asp:Label ID="lblLocais" runat="server" Text="LOCAIS" Font-Bold="True" 
                     Font-Size="12px" ForeColor="#FF6600" Font-Names="Verdana"></asp:Label>
                 <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                     SelectMethod="montamenu" TypeName="WebService">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="1" Name="opcao" Type="String" />
                     </SelectParameters>
                 </asp:ObjectDataSource>
              </td>                                                          </tr>
                                                          <tr>
                                                              <td align="left">
                                                                  <asp:GridView ID="grdMenu0" runat="server" AutoGenerateColumns="False" 
                                                                      BorderStyle="None" DataSourceID="ObjectDataSource2" GridLines="None" 
                                                                      ShowHeader="False" Width="180px">
                                                                      <RowStyle BorderStyle="None" />
                                                                      <Columns>
                                                                          <asp:HyperLinkField ControlStyle-Font-Overline="false" 
                                                                              DataNavigateUrlFields="Codigo,Descricao" 
                                                                              DataNavigateUrlFormatString="categoria.aspx?tipo_categoria={0}" 
                                                                              DataTextField="descricao" DataTextFormatString="&nbsp;&nbsp;&nbsp;&nbsp;{0}">
                                                                              <ControlStyle CssClass="TituloBrancoa2" />
                                                                              <ItemStyle CssClass="TituloBrancoa2" Height="18px" HorizontalAlign="Left" />
                                                                          </asp:HyperLinkField>
                                                                      </Columns>
                                                                  </asp:GridView>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                             <td width="180px" height="20px" bgcolor="#FFCC66">
                                                                <asp:Label ID="lblServicos" runat="server" Text="SERVIÇOS" Font-Bold="True" 
                                                                    Font-Size="12px" ForeColor="#FF6600" Font-Names="Verdana"></asp:Label>   
                                                                  <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                                                      SelectMethod="montamenu" TypeName="WebService">
                                                                      <SelectParameters>
                                                                          <asp:Parameter DefaultValue="2" Name="opcao" Type="String" />
                                                                      </SelectParameters>
                                                                  </asp:ObjectDataSource>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left">
                                                                  <asp:GridView ID="grdMenu2" runat="server" AutoGenerateColumns="False" 
                                                                      BorderStyle="None" DataSourceID="ObjectDataSource3" GridLines="None" 
                                                                      ShowHeader="False" Width="180px">
                                                                      <RowStyle BorderStyle="None" />
                                                                      <Columns>
                                                                          <asp:HyperLinkField ControlStyle-Font-Overline="false" 
                                                                              DataNavigateUrlFields="Codigo,Descricao" 
                                                                              DataNavigateUrlFormatString="categoria.aspx?tipo_categoria={0}" 
                                                                              DataTextField="descricao" DataTextFormatString="&nbsp;&nbsp;&nbsp;&nbsp;{0}">
                                                                              <ControlStyle CssClass="TituloBrancoa2" />
                                                                              <ItemStyle CssClass="TituloBrancoa2" Height="18px" HorizontalAlign="Left" />
                                                                          </asp:HyperLinkField>
                                                                      </Columns>
                                                                  </asp:GridView>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  
                                                  
                                                  </td>
                                                  <td align="center" width="397px">
                                                      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                          SelectMethod="ConsultaAnuncioTela" TypeName="WebService">
                                                          <SelectParameters>
                                                              <asp:Parameter DefaultValue="1" Name="codigo_categoria" Type="Int32" />
                                                          </SelectParameters>
                                                      </asp:ObjectDataSource>
<asp:DataList ID="dlAnunciante" runat="server" ShowFooter="False" 
                ShowHeader="False" onitemdatabound="dlAnunciante_ItemDataBound" Width="397px" DataSourceID="ObjectDataSource1">
                                   <ItemTemplate>
                                  
                                               <table border="0" cellpadding="0" cellspacing="0">
                                           <tr>
                                               <td align="left" style="margin:0;padding:0;width:140px;height:100px;" valign="middle">
                                                  <asp:Label ID="lblNome" runat="server"></asp:Label>
                                               </td>
                                               <td style="margin:0;padding:0;width:220px;height:100px;" valign="middle" align="left">
                                                   <table>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro' align="left">
                                                               <%# Eval("empresa") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro2' align="left" >
                                                               <%# Eval("bairro") %> - <%# Eval("cidade") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro3' align="left" >
                                                               <%# Eval("endereco") %>
                                                           </td>
                                                       </tr>
                                                       <tr>
                                                           <td class='TituloCinzaEscuro3' align="left" >
                                                               <%# Eval("telefone") %>
                                                           </td>
                                                       </tr>
                                                   </table>
                                               </td>
                                           </tr>
                                           <tr>
                                              <td align="center" colspan="3" valign="middle" style="margin:0;padding:0;height:50px;">
                                                  <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
                                                      <tr>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aBonus" runat="server" > <asp:Image ID="imgBonus" runat="server" ImageUrl="imagens/BONUS.png" />                                                            
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aSite" runat="server" Target="_blank" > <asp:Image ID="imgSite" runat="server" ImageUrl="imagens/WEB.png" />
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aEmail" runat="server" > <asp:Image ID="imgEmail" runat="server" ImageUrl="imagens/EMAIL.png" />
                                                            </asp:HyperLink>
                                                         </td>
                                                      </tr>
                                                  </table>                                             
                                              </td>
                                           </tr>
                                           <tr>
                                              <td class="bord-baixa" align="center" colspan="3" valign="middle" style="margin:0;padding:0;">
                                                  <table style="width: 200px;" border="0" cellpadding="0" cellspacing="0">
                                                      <tr>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aOrkut" runat="server" > <asp:Image ID="imgOrkut" runat="server" ImageUrl="imagens/orkut.png" AlternateText="Orkut" />
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aFacebook" runat="server" Target="_blank" > <asp:Image ID="imgFacebook" runat="server" ImageUrl="imagens/facebook.png" AlternateText="Facebook" />
                                                            </asp:HyperLink>
                                                         </td>
                                                         <td align="center" >
                                                            <asp:HyperLink ID="aTwitter" runat="server" > <asp:Image ID="imgTwitter" runat="server" ImageUrl="imagens/twitter.png" AlternateText="Twitter" />
                                                            </asp:HyperLink>
                                                         </td>
                                                      </tr>
                                                  </table>                                              
                                              </td>
                                           </tr>
                                       </table>
                                                         
                                       
                                   </ItemTemplate>
                               </asp:DataList>                                                  
                                                  
                                                   </td>
                                                  <td align="center" valign="top">
                                                      <table border="0" cellpadding="0" height="20px" cellspacing="0" style="width:100%;">
                                                          <tr>
                                                          <td align="center" bgcolor="#FFCC66">
                                                             <asp:Label ID="lblTituloPub" runat="server" Font-Bold="True" Font-Names="Verdana" 
                                                                Font-Size="12px" ForeColor="#FF6600">PUBLICIDADE</asp:Label> 
                                                                  <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                                                                      SelectMethod="montabannerlateral" TypeName="WebService">
                                                                      <SelectParameters>
                                                                          <asp:Parameter DefaultValue="2" Name="localbanner" Type="String" />
                                                                      </SelectParameters>
                                                                  </asp:ObjectDataSource>
                                                             </td>                                                           
                                                          </tr>
                                                       
                                                          <tr>
                                                              <td align="center">
                                                                  <asp:DataList ID="dlPublicidade0" runat="server" 
                                                                      DataSourceID="ObjectDataSource4">
                                                                      <ItemTemplate>
                                                                          <table style="width: 100%;">
                                                                              <tr>
                                                                                  <td align="center">
                                                                                      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
                                                                                          codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" 
                                                                                          height='<%# Eval("altura") %>' title='<%# Eval("codigo") %>' 
                                                                                          width='<%# Eval("largura") %>'>
                                                                                          <param name="movie" value='banners/<%# Eval("descricao") %>'>
                                                                                          <param name="quality" value="High">
                                                                                          <param name="_cx" value="4763">
                                                                                          <param name="_cy" value="1323">
                                                                                          <param name="FlashVars" value="">
                                                                                          <param name="Src" value='banners/<%# Eval("descricao") %>'>
                                                                                          <param name="WMode" value="transparent">
                                                                                          <param name="Play" value="-1">
                                                                                          <param name="Loop" value="-1">
                                                                                          <param name="SAlign" value="">
                                                                                          <param name="Menu" value="-1">
                                                                                          <param name="Base" value="">
                                                                                          <param name="AllowScriptAccess" value="">
                                                                                          <param name="Scale" value="ShowAll">
                                                                                          <param name="DeviceFont" value="0">
                                                                                          <param name="EmbedMovie" value="0">
                                                                                          <param name="BGColor" value="">
                                                                                          <param name="SWRemote" value="">
                                                                                          <param name="MovieData" value="">
                                                                                          <param name="SeamlessTabbing" value="1">
                                                                                          <param name="Profile" value="0">
                                                                                          <param name="ProfileAddress" value="">
                                                                                          <param name="ProfilePort" value="0">
                                                                                          <param name="AllowNetworking" value="all">
                                                                                          <param name="AllowFullScreen" value="false">
                                                                                          <embed height='<%# Eval("altura") %>' 
                                                                                              pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" 
                                                                                              src='banners/<%# Eval("descricao") %>' type="application/x-shockwave-flash" 
                                                                                              width='<%# Eval("largura") %>' wmode="transparent"></embed> </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                          </param>
                                                                                      </object>
                                                                                  </td>
                                                                              </tr>
                                                                          </table>
                                                                      </ItemTemplate>
                                                                  </asp:DataList>
                                                              </td>
                                                          </tr>
                                                       
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="center" valign="top" class="style1">
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
      
      </center>    
    </div>
    </form>
</body>
</html>
