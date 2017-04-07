<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bd_rej_KonfSemOtwarte.aspx.cs" Inherits="gbwebapp.bd_rej_SemKonfOtwarte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/gbwebapp/CSS/bd_rej_SemKonfOtwarte.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
    <form id ="form1" runat="server">
        <div id="Logo">
            <asp:ImageButton ID="ImageButton1" src="/gbwebapp/grafika/ksap_logo.gif" runat="server" OnClick="ImageButton1_Click" />
        </div>
        <div><p id="Linia_glowna"></p></div>
        <div id="ObszarFormularza">                      
            <h3>Na otwartą konferencję lub seminarium można zapisać się za pośrednictwem poniższego formularza zgłoszeniowego:</h3>
            Pola oznaczone * (gwiazdką) są obowiązkowe.
            <div style="text-align: center">
                <h5 id="Tekst_separujacy">Dane osobowe kandydata<br /><p id="Linia_separujaca"></p>
                <asp:Label ID="statusWiadomosci_lbl" runat="server" Visible="False" style="text-align: left"></asp:Label>
                </h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>*Płeć:</h6>
                <h6>*Imię:</h6>
                <h6>Drugie imię:</h6>
                <h6>*Nazwisko:</h6>
                <h6>Adres e-mail:</h6>
                <h6>*Zgoda na przetwarzanie danych osobowych:</h6>
            </div>
            <div id="PodobszarPrawy1">
                <p><asp:DropDownList ID="ks_plec_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Kobieta</asp:ListItem>
                    <asp:ListItem>Mężczyzna</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="ks_imie_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="ks_drugieImie_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>                
                <p><asp:TextBox ID="ks_nazwisko_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="ks_emailAddress_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="ks_daneOsoboweZgoda_ddl" runat="server" Width="67px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Tak</asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;</p>
                <p>&nbsp;</p>
                <p id="PodobszarPrawy2">
                    <asp:Button ID="ks_przeslij_btn" runat="server" OnClick="ks_przeslij_btn_Click" Text="Prześlij" Height="37px" Width="90px" />
                </p>
            </div>  
    </form>
</body>
</html>