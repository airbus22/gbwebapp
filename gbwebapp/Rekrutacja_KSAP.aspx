<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rekrutacja_KSAP.aspx.cs" Inherits="gbwebapp.GBWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/CSS/Rekrutacja_KSAP.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <%--<div style="text-align: center">
    <style type="text/css"></style>--%>
    
        <div id="Logo">
            <asp:ImageButton ID="ImageButton1" src="/grafika/ksap_rekrutacja.gif" runat="server" OnClick="ImageButton1_Click" />
        </div>

        <div id="ObszarFormularza">
            <h5>Formularz zgłoszenia do konkursowego postępowania rekrutacyjnego</h5>
            <p>Pola oznaczone * (gwiazdką) są obowiązkowe.</p>
        </div>

    </form>

    
</body>
</html>
