<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox_manipulacje.aspx.cs" Inherits="gbwebapp.checkbox_manipulacje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/gbwebapp/CSS/checkbox_manipulacje.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <span class="auto-style3">Testowa grupa checkboxów:<br />
        </span>
    
        <span class="auto-style1">
        <br />
        </span>
        <asp:CheckBox ID="chbx1" runat="server" OnCheckedChanged="chbx1_Checked" Text="CheckBox 1" AutoPostBack="true"/>
        <br />
        <asp:CheckBox ID="chbx2" runat="server" OnCheckedChanged="chbx2_Checked" Text="CheckBox 2" AutoPostBack="true"/>
        <br />
        <asp:CheckBox ID="chbx3" runat="server" OnCheckedChanged="chbx3_Checked" Text="CheckBox 3" AutoPostBack="true"/>
        <br />
    
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: right" Text="Kasuj bazę danych checkboxów" Visible="False" />
        </p>
        <p style="text-align: center">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Przykładowy formularz</asp:LinkButton>
        </p>
        <p style="text-align: center">
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Przestrzeń robocza</asp:LinkButton>
        </p>
        <p style="text-align: center">
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Rejesrtacja na wydarzenia w KSAP</asp:LinkButton>
        </p>
        <p style="text-align: center">
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Logowanie aplikacji - test</asp:LinkButton>
        </p>
        <p style="text-align: left">
            &nbsp;</p>
    </form>
</body>
</html>
