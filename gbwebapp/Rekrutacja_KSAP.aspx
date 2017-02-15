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
                <h6>*Kierunek studiów:</h6>
                <h6>*Wykształcenie:</h6>
                <h6>*Rok ukończenia:</h6>
            </div>
            <div id="PodobszarPrawy2">                
                <p><asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Białystok - Wyższa Szkoła Medyczna (d. Wyższa Szkoła Kosmetologii i Ochrony Zdrowia)</asp:ListItem>
                    <asp:ListItem>Tomaszów Lub. - Katolicki Uniwersytet Lubelski Wydział Zamiejscowy Nauk Prawnych i Ekonomicznych w Tomaszowie Lub.</asp:ListItem>                  
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="TextBox25" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:TextBox ID="TextBox26" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>administracyjne</asp:ListItem>   
                    <asp:ListItem>ekonomiczne</asp:ListItem> 
                    <asp:ListItem>filologiczne</asp:ListItem>
                    <asp:ListItem>inne humanistyczne</asp:ListItem>         
                    <asp:ListItem>inne niehumanistyczne</asp:ListItem>    
                    <asp:ListItem>prawnicze</asp:ListItem>
                    <asp:ListItem>rolnicze i weterynaryjne</asp:ListItem>
                    <asp:ListItem>techniczne</asp:ListItem>
                    <asp:ListItem>w zakresie nauk społecznych</asp:ListItem>
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
            <div id="PodobszarLewy1">
                <h6>Nazwa uczelni:</h6>
                <h6>Miejscowość:</h6>
                <h6>Kierunek:</h6>
                <h6>Stan zaawansowania:</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox30" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox31" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox32" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox33" runat="server" Width="327px"></asp:TextBox>
                </p>                
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Znajomość języków obcych<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>* Język / języki:</h6>
                <h6>Certyfikaty:</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox24" runat="server" Width="327px"></asp:TextBox><h6>rozdziel przecinkiem np: angielski, francuski</h6>
                </p>
                <p><asp:TextBox ID="TextBox28" runat="server" Width="327px"></asp:TextBox>
                </p>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Staże i praktyki <br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>Odbyte staże i praktyki:</h6>
                <h6>w postaci: miejsce stażu, termin</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox29" runat="server" Width="500px" Height="80px">Miejsce stażu, termin</asp:TextBox>
                </p>                
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Praca zawodowa (bez staży i praktyk)<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarLewy1">
                <h6>Od:</h6>
                <h6>Do:</h6>
                <h6>Nazwa pracodawcy:</h6>
                <h6>Komórka organizacyjna:</h6>
                <h6>Stanowisko:</h6>
                <h6>Zakres obowiązków:</h6>
                <h6>Miejscowość:</h6>
                <h6>Praca w administracji:</h6>
            </div>
            <div id="PodobszarPrawy1">                
                <p><asp:TextBox ID="TextBox38" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox39" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox40" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox41" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox42" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox43" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="TextBox44" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                    <asp:ListItem>Ministerstwo</asp:ListItem>
                    <asp:ListItem>Urząd Wojewódzki</asp:ListItem>
                    <asp:ListItem>Urząd Centralny</asp:ListItem>
                    <asp:ListItem>Urząd Terenowy</asp:ListItem>
                    <asp:ListItem>Urząd Samorządowy</asp:ListItem>
                    <asp:ListItem>Inne jednostki w ramach administracji publicznej</asp:ListItem>
                    <asp:ListItem>Inne instytucji spoza administracji</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <H6><asp:CheckBox ID="CheckBox2" runat="server" Text="  Chcę dodać kolejne miejsce pracy" /></H6>
            </div>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Oświadczenia<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarPrawy1">
                <p><asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>karany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                    <asp:ListItem>niekarany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="DropDownList9" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>angielski</asp:ListItem>
                    <asp:ListItem>francuski</asp:ListItem>
                    <asp:ListItem>niemiecki</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="DropDownList10" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>pierwszy</asp:ListItem>
                    <asp:ListItem>drugi</asp:ListItem>
                    <asp:ListItem>trzeci</asp:ListItem>
                    <asp:ListItem>czwarty</asp:ListItem>
                    <asp:ListItem>piąty</asp:ListItem>
                    <asp:ListItem>szósty</asp:ListItem>
                    <asp:ListItem>siódmy</asp:ListItem>
                    <asp:ListItem>ósmy</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="DropDownList11" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Tak</asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="DropDownList12" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Wyszukiwarka internetowa</asp:ListItem>
                    <asp:ListItem>Strona KSAP</asp:ListItem>
                    <asp:ListItem>Portal publiczni.pl</asp:ListItem>
                    <asp:ListItem>Inne strony internetowe</asp:ListItem>
                    <asp:ListItem>Prasa</asp:ListItem>
                    <asp:ListItem>Absolwenci KSAP</asp:ListItem>
                    <asp:ListItem>Urząd</asp:ListItem>
                    <asp:ListItem>Inne</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>&nbsp;</p>
                <asp:Button ID="Button1" runat="server" Text="Zapisz" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
                             
        </div>

    </form>    
</body>
</html>