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
    
        <div id="ObszarFormularza">
            <asp:ImageButton ID="ImageButton1" src="/grafika/ksap_rekrutacja.gif" runat="server" OnClick="ImageButton1_Click" />
        </div>

        <div id="ObszarFormularza">
            <h1 style="font-size: 17px;
                font-weight: normal;
                padding: 4px 0px 0px;
                margin: 0px;
                color: rgb(32, 35, 43);
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-style: normal;
                font-variant-ligatures: normal;
                font-variant-caps: normal;
                letter-spacing: normal;
                orphans: 2;
                text-align: left;
                text-indent: 0px;
                text-transform: none;
                white-space: normal;
                widows: 2;
                word-spacing: 0px;
                -webkit-text-stroke-width: 0px;
                background-color: rgb(255, 255, 255);">Formularz zgłoszenia do konkursowego postępowania rekrutacyjnego
            </h1>

            <p style="text-align: left">
                <span style="color: rgb(0, 0, 0);
                    font-family: Verdana, Arial, Helvetica, sans-serif;
                    font-size: 12px;
                    font-style: normal;
                    font-variant-ligatures: normal;
                    font-variant-caps: normal;
                    font-weight: normal;
                    letter-spacing: normal;
                    orphans: 2;
                    text-align: left;
                    text-indent: 0px;
                    text-transform: none;
                    white-space: normal;
                    widows: 2;
                    word-spacing: 0px;
                    -webkit-text-stroke-width: 0px;
                    background-color: rgb(255, 255, 255);
                    display: inline !important;
                    float: none;">Pola oznaczone * (gwiazdką) są obowiązkowe.
                </span>
            </p>
        </div>

    </form>

    
</body>
</html>
