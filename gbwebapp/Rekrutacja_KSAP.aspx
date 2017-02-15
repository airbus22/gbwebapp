<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rekrutacja_KSAP.aspx.cs" Inherits="gbwebapp.GBWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/CSS/Rekrutacja_KSAP.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id ="form1" runat="server">
    
        <div id="Logo">
            <asp:ImageButton ID="ImageButton1" src="/grafika/ksap_rekrutacja.gif" runat="server" OnClick="ImageButton1_Click" />
        </div>
        <div><p id="Linia_glowna"></p></div>
        <div id="ObszarFormularza">                      
            <h3>Formularz zgłoszenia do konkursowego postępowania rekrutacyjnego</h3>
            <p>Pola oznaczone * (gwiazdką) są obowiązkowe.</p>
            <div>
                <h5 id="Tekst_separujacy">Dane osobowe kandydata<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>*Płeć:</h6>
                <h6>*Inię:</h6>
                <h6>Drugie imię:</h6>
                <h6>*Nazwisko:</h6>
            </div>
            <div id="PodobszarPrawy1">
                <h6>*Płeć:</h6>
                <h6>*Inię:</h6>
                <h6>Drugie imię:</h6>
                <h6>*Nazwisko:</h6>
            </div>

        </div>

    </form>    
</body>
</html>
