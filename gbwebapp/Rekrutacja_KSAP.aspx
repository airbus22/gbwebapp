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
                <h5 id="Tekst_separujacy">Adres stałego zameldowania<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">                
                <h6>*Kod pocztowy:</h6>
                <h6>*Miejscowość:</h6>
                <h6>Ulica:</h6>
                <h6>*Nr. domu:</h6>
                <h6>*Nr. lokalu:</h6>
                <h6>*Województwo:</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox18" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox19" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox20" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox21" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox22" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>dolnośląskie</asp:ListItem>
                    <asp:ListItem>kujawsko-pomorskie</asp:ListItem>
                    <asp:ListItem>lubelskie</asp:ListItem>
                    <asp:ListItem>lubuskie</asp:ListItem>
                    <asp:ListItem>łódzkie</asp:ListItem>
                    <asp:ListItem>małopolskie</asp:ListItem>
                    <asp:ListItem>mazowieckie</asp:ListItem>
                    <asp:ListItem>opolskie</asp:ListItem>
                    <asp:ListItem>podkarpackie</asp:ListItem>
                    <asp:ListItem>podlaskie</asp:ListItem>
                    <asp:ListItem>pomorskie</asp:ListItem>
                    <asp:ListItem>śląskie</asp:ListItem>
                    <asp:ListItem>świetokrzyskie</asp:ListItem>
                    <asp:ListItem>warmińsko-mazurskie</asp:ListItem>
                    <asp:ListItem>wilkopolskie</asp:ListItem>
                    <asp:ListItem>zachodniopomorskie</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Adres zamieszkania<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">                
                <h6>*Kod pocztowy:</h6>
                <h6>*Miejscowość:</h6>
                <h6>Ulica:</h6>
                <h6>*Nr. domu:</h6>
                <h6>*Nr. lokalu:</h6>
                <h6>*Województwo:</h6>
                <h6>*Nr. telefonu:</h6>
                <h6>*Adres e-mail:</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox12" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox13" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox14" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox15" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox16" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>dolnośląskie</asp:ListItem>
                    <asp:ListItem>kujawsko-pomorskie</asp:ListItem>
                    <asp:ListItem>lubelskie</asp:ListItem>
                    <asp:ListItem>lubuskie</asp:ListItem>
                    <asp:ListItem>łódzkie</asp:ListItem>
                    <asp:ListItem>małopolskie</asp:ListItem>
                    <asp:ListItem>mazowieckie</asp:ListItem>
                    <asp:ListItem>opolskie</asp:ListItem>
                    <asp:ListItem>podkarpackie</asp:ListItem>
                    <asp:ListItem>podlaskie</asp:ListItem>
                    <asp:ListItem>pomorskie</asp:ListItem>
                    <asp:ListItem>śląskie</asp:ListItem>
                    <asp:ListItem>świetokrzyskie</asp:ListItem>
                    <asp:ListItem>warmińsko-mazurskie</asp:ListItem>
                    <asp:ListItem>wilkopolskie</asp:ListItem>
                    <asp:ListItem>zachodniopomorskie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="TextBox17" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox23" runat="server" Width="327px"></asp:TextBox>
                </p>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Wykształcenie - ukończone studia wyższe z tytułem magistra lub równorzędnym<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy2">                
                <h6>*Uczelnia wyższa:</h6>
                <h6>*Miejscowość:</h6>
                <h6>KKierunek studiów:</h6>
                <h6>*Wykształcenie:</h6>
                <h6>*Rok ukończenia:</h6>
            </div>
            <div id="PodobszarPrawy2">                
                <p><asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>dolnośląskie</asp:ListItem>                    
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="TextBox25" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:TextBox ID="TextBox26" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>dolnośląskie</asp:ListItem>                    
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="TextBox27" runat="server" Width="180px"></asp:TextBox></p>                
                <h6><asp:CheckBox ID="CheckBox1" runat="server" Text="  Chcę dodać kolejne wykształcenie - studia wyższe" /></h6>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Kontynuowane studia, w tym podyplomowe i doktoranckie<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Znajomość języków obcych<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Staże i praktyki <br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Praca zawodowa (bez staży i praktyk)<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Oświadczenia<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
        </div>

    </form>    
</body>
</html>