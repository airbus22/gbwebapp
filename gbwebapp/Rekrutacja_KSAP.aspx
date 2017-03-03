<%@ Page MaintainScrollPositionOnPostback="true" Language="C#" AutoEventWireup="true" CodeBehind="Rekrutacja_KSAP.aspx.cs" Inherits="gbwebapp.GBWebForm" %>

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
                <p><asp:TextBox ID="dok_miejsceUrodzenia_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
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
                <p><asp:TextBox ID="asz_kodPocztowy_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="asz_miejscowosc_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="asz_ulica_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="asz_nrDomu_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="asz_nrLokalu_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="az_wojewodztwo_tbx" runat="server">
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
                    <asp:ListItem>wielkopolskie</asp:ListItem>
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
                <p><asp:TextBox ID="az_kodPocztowy_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="az_miejscowosc_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="az_ulica_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="az_nrDomu_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="az_nrLokalu_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="az_wojewodztwo_ddl" runat="server">
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
                    <asp:ListItem>wielkopolskie</asp:ListItem>
                    <asp:ListItem>zachodniopomorskie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="az_nrTelefonu_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="az_adresEmail_tbx" runat="server" Width="327px"></asp:TextBox>
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
                <p><asp:DropDownList ID="w_uczelniaWyzsza_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Białystok - Wyższa Szkoła Medyczna (d. Wyższa Szkoła Kosmetologii i Ochrony Zdrowia)</asp:ListItem>
                    <asp:ListItem>Tomaszów Lub. - Katolicki Uniwersytet Lubelski Wydział Zamiejscowy Nauk Prawnych i Ekonomicznych w Tomaszowie Lub.</asp:ListItem>                  
                    </asp:DropDownList>
                </p>
                <p><asp:TextBox ID="w_miejscowosc_tbx" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:TextBox ID="w_kierunekStudiow_tbx" runat="server" Width="327px"></asp:TextBox></p>
                <p><asp:DropDownList ID="w_wyksztalcenie_ddl" runat="server">
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
                <p><asp:TextBox ID="w_rokUkonczenia_ddl" runat="server" Width="180px"></asp:TextBox></p>                
                <h6><asp:CheckBox ID="w_kolejne_cbx" runat="server" Text="  Chcę dodać kolejne wykształcenie - studia wyższe" AutoPostBack="True" /></h6>
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
                <p><asp:TextBox ID="ks_nazwaUczelni_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="ks_miejscowosc_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="ks_kierunek_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="ks_stanZaawansowania_tbx" runat="server" Width="327px"></asp:TextBox>
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
                <p><asp:TextBox ID="zjo_jezyki_tbx" runat="server" Width="327px"></asp:TextBox><h6>rozdziel przecinkiem np: angielski, francuski</h6>
                </p>
                <p><asp:TextBox ID="zjo_certyfikat_tbx" runat="server" Width="327px"></asp:TextBox>
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
                <p><asp:TextBox ID="sip_odbyteStazePraktyki_tbx" runat="server" Width="500px" Height="80px" TextMode="MultiLine">Miejsce stażu, termin</asp:TextBox>
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
                <p><asp:TextBox ID="pz_od_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_do_tbx" runat="server" Width="180px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_nazwaPracodawscy_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_komorkaOrganizacyjna_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_stanowisko_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_zakresObowiazkow_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:TextBox ID="pz_miejscowosc_tbx" runat="server" Width="327px"></asp:TextBox>
                </p>
                <p><asp:DropDownList ID="pz_pracaWAdministracji_ddl" runat="server">
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
                <H6><asp:CheckBox ID="pz_kolejne_cbx" runat="server" Text="  Chcę dodać kolejne miejsce pracy" AutoPostBack="True" OnCheckedChanged="pz_kolejne_cbx_CheckedChanged" /></H6>
            </div>

            &nbsp
            <asp:Panel ID="panel_pr2" runat="server" Visible="False">
                <div>
                    <h5 id="Tekst_separujacy">Praca zawodowa 2 (bez staży i praktyk)<br /><p id="Linia_separujaca"></p></h5>
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
                    <p><asp:TextBox ID="pz2_od_tbx" runat="server" Width="180px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="pz2_do_tbx" runat="server" Width="180px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="pz2_nazwaPracodawscy_tbx" runat="server" Width="327px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="pz2_komorkaOrganizacyjna_tbx" runat="server" Width="327px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="pz2_stanowisko_tbx" runat="server" Width="327px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="pz2_zakresObowiazkow_tbx" runat="server" Width="327px"></asp:TextBox>
                    </p>
                    <p><asp:TextBox ID="TextBox7" runat="server" Width="327px"></asp:TextBox>
                    </p>
                    <p><asp:DropDownList ID="pz2_pracaWAdministracji_ddl" runat="server">
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
                    <H6><asp:CheckBox ID="pz2_kolejne_cbx" runat="server" Text="  Chcę dodać kolejne miejsce pracy" AutoPostBack="True" /></H6>
                </div>
            </asp:Panel>
            &nbsp
            <div>
                <h5 id="Tekst_separujacy">Oświadczenia<br /><p id="Linia_separujaca"></p></h5>
                <%--<p id="Linia_separujaca"></p>--%>
            </div>
            <div id="PodobszarPrawy1">
                <p><asp:DropDownList ID="o_kodeksKarnyJestem_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>karany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                    <asp:ListItem>niekarany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="o_jezykEgzaminacyjny_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>angielski</asp:ListItem>
                    <asp:ListItem>francuski</asp:ListItem>
                    <asp:ListItem>niemiecki</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="o_egzaminKSAP_ddl" runat="server">
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
                <p><asp:DropDownList ID="o_kolegiumKSAP_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Tak</asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><asp:DropDownList ID="o_zrodloRekKSAP_ddl" runat="server">
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
                <asp:Button ID="zapisz_btn" runat="server" Text="Zapisz" OnClick="zapisz_btn_Click" />
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