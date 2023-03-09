<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grava_imagem.aspx.cs" Inherits="grava_imagem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Grava Imagem</title>
</head>
<script language="javascript">
function addEvent(obj, evType, fn, useCapture)
{
if (obj.addEventListener)
{
obj.addEventListener(evType, fn, useCapture);
return true;
}
else if (obj.attachEvent)
{
var r = obj.attachEvent("on"+evType, fn);
return r;
} 
} 

var bClose = false;

function sair()
{
bClose = true;
window.close();
}

function confirma_fecho(e)
{
var b = confirm("Deseja realmente sair - fecho?");
if (b && e.preventDefault)
e.preventDefault(); 
return b;
}

function confirma_sair(e)
{
if (!bClose)
   window.location="controle.aspx";
}

function init()
{
window.onbeforeunload = confirma_sair;
//window.onunload = confirma_sair;
} 
</script>
<body onload="javascript:init();">
    <form id="frmGrava_imagem" runat="server">
    <div>
<TABLE id="Table1" style="WIDTH: 560px; HEIGHT: 190px" width="560" border="1">
<TR>
<TD colSpan="2">
<P align="center"><STRONG><FONT size="2">Armazena imagen</FONT></STRONG></P></TD>
</TR>
<TR>
<TD><P align="right">Imagem:</P></TD>
<TD><INPUT id="fileImagemParaGravar" style="WIDTH: 460px; HEIGHT: 
22px" type="file" size="57" runat="server"></TD>
</TR>
<TR>
<TD><P align="right">Descrição:</P>	</TD>
<TD><asp:textbox id="tedDescricao" runat="server" 
Width="377px"></asp:textbox></TD>
</TR>
<TR>
<TD><P align="right"> </P></TD>
<TD><P align="left"><asp:button id="cmdGravarImagem" runat="server" 
Text="Gravar Imagem" OnClick="cmdGravarImagem_Click"></asp:button> 
    <asp:TextBox ID="tedCodigoAnunciante" runat="server"></asp:TextBox>
    <asp:TextBox ID="tedCodigoImagem" runat="server"></asp:TextBox>
<asp:Label id="lblMensagem" runat="server" Font-Names="Verdana" Font-Size="12px" ForeColor="Red" ></asp:Label>
    </P></TD>
</TR>
<TR>
<TD><P align="right"> </P>
</TD>
<TD><P align="left"> 
    &nbsp;</P>
</TD>
</TR>
</TABLE>

    
    </div>
    </form>
</body>
</html>
