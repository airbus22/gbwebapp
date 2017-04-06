<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bd_rej_SemKonfOtwarte.aspx.cs" Inherits="gbwebapp.bd_rej_SemKonfOtwarte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/gbwebapp/CSS/bd_rej_SemKonfOtwarte.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id ="form1" runat="server">
        <div id="Logo">
            <asp:ImageButton ID="ImageButton1" src="/gbwebapp/grafika/ksap_rekrutacja.gif" runat="server" OnClick="ImageButton1_Click" />
        </div>
        <div><p id="Linia_glowna"></p></div>
        <div id="ObszarFormularza">                      
            <h2>Formularz zgłoszenia do konkursowego postępowania rekrutacyjnego</h2>
            Pola oznaczone * (gwiazdką) są obowiązkowe.
            <div>
                <h5 id="Tekst_separujacy">Dane osobowe kandydata<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>*Płeć:</h6>
                <h6>*Imię:</h6>
                <h6>Drugie imię:</h6>
                <h6>*Nazwisko:</h6>
                <h6>Nazwisko rodowe:</h6>
                <h6>*Imię ojca:</h6>
                <h6>*Imię matki:</h6>
                <h6>*PESEL:</h6>
                <h6>*Data urodzenia:</h6>
                <h6>*Miejsce urodzenia:</h6>
                <h6>*Obywatelstwo:</h6>
                <h6>*Seria i numer dowodu osobistego:</h6>
                <h6>*Stosunek do służby wojskowej:</h6>
            </div>
            <div id="PodobszarPrawy1">
                <p><asp:DropDownList ID="dok_plec_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Kobieta</asp:ListItem>
                    <asp:ListItem>Mężczyzna</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="dok_imie_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_drugieImie_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>                
                <p><asp:TextBox ID="dok_nazwisko_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_nazwiskoRodowe_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_imieOjca_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_imieMatki_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_PESEL_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_dataUrodzenia_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <asp:TextBox ID="dok_miejsceUrodzenia_tbx" runat="server" Width="327px"></asp:TextBox>                    
                <p><asp:TextBox ID="dok_obywatelstwo_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="dok_seriaNumerID_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="dok_militaryFactor_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>nie podlega</asp:ListItem>
                    <asp:ListItem>nieuregulowany</asp:ListItem>
                    <asp:ListItem>uregulowany</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>  
    </form>
</body>
</html>