﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="painel.aspx.cs" Inherits="_painel" %>

<%@ Register assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="Styles.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Guia de Festas Curitiba</title>
</head>
<body
   <div align="center">
      <center> 
         <form id="frmCategoria" runat="server" >
      
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
       <tr>
          <td align="center">
             <img ID="imgTopo" border="0" height="46" src="Imagens/Topo.jpg" width="778"> </img>
          </td>
       </tr>
       <tr>
          <td>
              <asp:ScriptManager ID="ScriptManager1" runat="server">
              </asp:ScriptManager>
          </td>
       </tr>
       <tr>
          <td align="center">
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>         
         <asp:Panel ID="pnLogin" runat="server" Width="520px">
             <table style="width:100%;">
                 <tr>
                     <td>
                         <asp:Label ID="lblUsuario" runat="server" 
                               style="font-size: 12px; color: #000099; font-family: Verdana;" 
                                 Text="USUARIO">
                            </asp:Label>
                     </td>
                     <td align="left">
                         <asp:TextBox ID="tedUsuario" runat="server" 
                               style="font-size: 12px; color: #0099ff; font-family: Verdana;" 
                              Width="150px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:Label ID="lblSenha" runat="server" 
                               style="font-size: 12px; color: #000099; font-family: Verdana;" 
                             Text="SENHA">
                            </asp:Label>
                     </td>
                     <td align="left">
                         <asp:TextBox ID="tedSenha" runat="server" 
                               style="font-size: 12px; color: #ff0000; font-family: Verdana;" 
                               TextMode="Password" Width="150px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td align="center" colspan="4">
                         <asp:ImageButton ID="btnLogin_Click" runat="server" ImageUrl="~/imagens/Ok.gif" 
                             onclick="btnLogin_Click_Click" />
                     </td>
               
                 </tr>
             </table>
         
         </asp:Panel>
         </ContentTemplate>
         </asp:UpdatePanel>
           </td>
       </tr>
       <tr>
          <td align="center">
              <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                  AssociatedUpdatePanelID="UpdatePanel1">
                  <ProgressTemplate>
                      <img alt="" src="imagens/wait.gif" />
                  </ProgressTemplate>
              </asp:UpdateProgress>
          </td>
       </tr>
    </table>    
    <table>
       <asp:Panel ID="pnPublicidadeTopo" runat="server">
          <tr>
          </tr>
       </asp:Panel>
    </table>
   
         <table>
            <tr>
                <td align="center" class="TextoCinzaEscuro2" height="25">
                    <img ID="imgBoton" border="0" height="51" src="Imagens/Rodape.jpg" width="778" />
                </td>
            </tr>
        </table>
       
   </form>
      </center>
   </div>
</body>
</html>
