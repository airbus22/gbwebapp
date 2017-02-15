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
            <h2>Formularz zgłoszenia do konkursowego postępowania rekrutacyjnego</h2>
            <p>Pola oznaczone * (gwiazdką) są obowiązkowe.</p>
            <div>
                <h5 id="Tekst_separujacy_dok">Dane osobowe kandydata<br /><p id="Linia_separujaca_dok"></p></h5>
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
                <p><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Kobieta</asp:ListItem>
                    <asp:ListItem>Mężczyzna</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox2" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox3" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox4" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox5" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox6" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox7" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox8" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox9" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox10" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox11" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>nie podlega</asp:ListItem>
                    <asp:ListItem>nieuregulowany</asp:ListItem>
                    <asp:ListItem>uregulowany</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy_asz">Adres stałego zameldowania<br /><p id="Linia_separujaca_asz"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>

        </div>

    </form>    
</body>
</html>