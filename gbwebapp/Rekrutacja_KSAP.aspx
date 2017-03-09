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
                <p><asp:DropDownList ID="asz_wojewodztwo_dll" runat="server">
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
                        <asp:ListItem>Białystok - Niepaństwowa Wyższa Szkoła Pedagogiczna</asp:ListItem>
                        <asp:ListItem>Białystok - Politechnika Białostocka</asp:ListItem>
                        <asp:ListItem>Białystok - Uniwersytet Medyczny w Białymstoku</asp:ListItem>
                        <asp:ListItem>Białystok - Uniwersytet w Białymstoku</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Administracji Publicznej imienia Stanisława Staszica</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Finansów i Zarządzania</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Matematyki i Informatyki Użytkowej</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Medyczna (d. Wyższa Szkoła Kosmetologii i Ochrony Zdrowia)</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Menedżerska</asp:ListItem>
                        <asp:ListItem>Białystok - Wyższa Szkoła Wychowania Fizycznego i Turystyki (d.w Supraślu)</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Akademia Techniczno-Humanistyczna w Bielsku-Białej</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Bielska Wyższa Szkoła im. J.Tyszkiewicza</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Wyższa Szkoła Administracji</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Wyższa Szkoła Ekonomiczno-Humanistyczna</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Wyższa Szkoła Finansów i Prawa</asp:ListItem>
                        <asp:ListItem>Bielsko-Biała - Wyższa Szkoła Informatyki i Zarządzania</asp:ListItem>
                        <asp:ListItem>Bochnia - Wyższa Szkoła Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Brzeg - Wyższa Szkoła Humanistyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Brzesko - Małopolska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Bydgoska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Kujawsko-Pomorska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Uniwersytet Kazimierza Wielkiego w Bydgoszczy</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Uniwersytet Medyczny w Bydgoszczy</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Uniwersytet Technologiczno-Przyrodniczy i. Jana i Jędrzeja Śniadeckich w Bydgoszczy</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Wyzsza Szkoła Nauk o Zdrowiu</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Wyższa Szkoła Gospodarki</asp:ListItem>
                        <asp:ListItem>Bydgoszcz - Wyższa Szkoła Środowiska</asp:ListItem>
                        <asp:ListItem>Bytom - Wyższa Szkoła Ekonomii i Administracji</asp:ListItem>
                        <asp:ListItem>Chełm - Wyższa Szkoła Stosunków Międzynarodowych i Komunikacji Społecznej</asp:ListItem>
                        <asp:ListItem>Chojnice - Powszechna Wyższa Szkoła Humanistyczna Pomerania</asp:ListItem>
                        <asp:ListItem>Chorzów - Górnośląska Wyższa Szkoła Przedsiębiorczości im. Karola Goduli</asp:ListItem>
                        <asp:ListItem>Chorzów - Śląska Wyższa Szkoła Informatyczno-Medyczna (d. Śląska Wyższa Szkoła Informatyki)</asp:ListItem>
                        <asp:ListItem>Chrzanów - Wyższa Szkoła Przedsiębiorczości i Marketingu</asp:ListItem>
                        <asp:ListItem>Ciechanów - Wyższa Szkoła Biznesu i Zarządzania</asp:ListItem>
                        <asp:ListItem>Częstochowa - Akademia im. Jana Długosza w Częstochowie</asp:ListItem>
                        <asp:ListItem>Częstochowa - Akademia Polonijna</asp:ListItem>
                        <asp:ListItem>Częstochowa - Politechnika Częstochowska</asp:ListItem>
                        <asp:ListItem>Częstochowa - Wyższa Szkoła Hotelarstwa i Turystyki</asp:ListItem>
                        <asp:ListItem>Częstochowa - Wyższa Szkoła Lingwistyczna</asp:ListItem>
                        <asp:ListItem>Częstochowa - Wyższa Szkoła Zarządzania</asp:ListItem>
                        <asp:ListItem>Dąbrowa Górnicza - Wyższa Szkoła Biznesu</asp:ListItem>
                        <asp:ListItem>Dąbrowa Górnicza - Wyższa Szkoła Planowania Strategicznego</asp:ListItem>
                        <asp:ListItem>Elbląg - Elbląska Uczelnia Humanistyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Ełk - Mazurska Szkoła Wyższa (d. Wszechnica Warmińska z siedzibą w Lidzbarku Warmińskim)</asp:ListItem>
                        <asp:ListItem>Falenty - Wyższa Szkoła Przedsiębiorczości i Rozwoju Regionalnego</asp:ListItem>
                        <asp:ListItem>Gdańsk - Akademia Wychowania Fizycznego i Sportu im. Jędrzeja Śniadeckiego w Gdańsku</asp:ListItem>
                        <asp:ListItem>Gdańsk - Ateneum - Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Gdańsk - Gdańska Szkoła Wyższa (d. Gdańska Wyższa Szkoła Administracji)</asp:ListItem>
                        <asp:ListItem>Gdańsk - Gdańska Wyższa Szkoła Humanistyczna</asp:ListItem>
                        <asp:ListItem>Gdańsk - Gdański Uniwersytet Medyczny</asp:ListItem>
                        <asp:ListItem>Gdańsk - Politechnika Gdańska</asp:ListItem>
                        <asp:ListItem>Gdańsk - Uniwersytet Gdański</asp:ListItem>
                        <asp:ListItem>Gdańsk - Wyższa Szkoła Bankowa</asp:ListItem>
                        <asp:ListItem>Gdańsk - Wyższa Szkoła Społeczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Gdańsk - Wyższa Szkoła Turystyki i Hotelarstwa w Gdańsku</asp:ListItem>
                        <asp:ListItem>Gdańsk - Wyższa Szkoła Zarządzania</asp:ListItem>
                        <asp:ListItem>Gdynia - Akademia Marynarki Wojennej w Gdyni</asp:ListItem>
                        <asp:ListItem>Gdynia - Akademia Morska w Gdyni</asp:ListItem>
                        <asp:ListItem>Gdynia - Pomorska Wyższa Szkoła Nauk Stosowanych (d. Pomorska Wyższa Szkoła Humanistyczna)</asp:ListItem>
                        <asp:ListItem>Gdynia - Szkoła Wyższa Prawa i Dyplomacji (d. WS Międzynarodowych Stosunków Gospodarczych i Politycznych)</asp:ListItem>
                        <asp:ListItem>Gdynia - Wyższa Szkoła Administracji i Biznesu im. Eugeniusza Kwiatkowskiego</asp:ListItem>
                        <asp:ListItem>Gdynia - Wyższa Szkoła Finansów i Administracji</asp:ListItem>
                        <asp:ListItem>Gdynia - Wyższa Szkoła Komunikacji Społecznej</asp:ListItem>
                        <asp:ListItem>Giżycko - Prywatna Wyższa Szkoła Zawodowa</asp:ListItem>
                        <asp:ListItem>Gliwice - Gliwicka Wyższa Szkoła Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Gliwice - Politechnika Śląska w Gliwicach</asp:ListItem>
                        <asp:ListItem>Gniezno - Gnieźnieńska Szkoła Wyższa Milenium (d. Gnieźnieńska WS Humanistyczno-Menedżerska Milenium)</asp:ListItem>
                        <asp:ListItem>Gorzów Wielkopolski - Wyższa Informatyczna Szkoła Zawodowa w likwidacji</asp:ListItem>
                        <asp:ListItem>Gorzów Wielkopolski - Wyższa Szkoła Biznesu</asp:ListItem>
                        <asp:ListItem>Grudziądz - Grudziądzka Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Grudziądz - Wyższa Szkoła Demokracji</asp:ListItem>
                        <asp:ListItem>Jarocin - Wielkopolska Wyższa Szkoła Humanistyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Jasło - Podkarpacka Szkoła Wyższa im. Bł. Ks. Władysława Findysza w Jaśle</asp:ListItem>
                        <asp:ListItem>Jelenia Góra - Wyższa Szkoła Menedżerska</asp:ListItem>
                        <asp:ListItem>Józefów - Wyższa Szkoła Gospodarki Euroregionalnej im. Alcide De Gasperi</asp:ListItem>
                        <asp:ListItem>Katowice - Akademia Wychowania Fizycznego im. Jerzego Kukuczki w Katowicach</asp:ListItem>
                        <asp:ListItem>Katowice - Górnośląska Wyższa Szkoła Handlowa im. Wojciecha Korfantego</asp:ListItem>
                        <asp:ListItem>Katowice - Śląska Wyższa Szkoła Medyczna</asp:ListItem>
                        <asp:ListItem>Katowice - Śląska Wyższa Szkoła Zarządzania im. Gen. Jerzego Ziętka</asp:ListItem>
                        <asp:ListItem>Katowice - Uniwersytet Ekonomiczny w Katowicach</asp:ListItem>
                        <asp:ListItem>Katowice - Uniwersytet Medyczny w Katowicach</asp:ListItem>
                        <asp:ListItem>Katowice - Uniwersytet Śląski w Katowicach</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Bankowości i Finansów</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Humanistyczna</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Mechatroniki</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Techniczna</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Technologii Informatycznych</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Zarządzania Marketingowego i Języków Obcych</asp:ListItem>
                        <asp:ListItem>Katowice - Wyższa Szkoła Zarządzania Ochroną Pracy</asp:ListItem>
                        <asp:ListItem>Kęty - Wyższa Szkoła Nauk Ekonomicznych i Społecznych w likwidacji</asp:ListItem>
                        <asp:ListItem>Kielce - Politechnika Świętokrzyska w Kielcach</asp:ListItem>
                        <asp:ListItem>Kielce - Świętokrzyska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Kielce - Uniwersytet Jana Kochanowskiego w Kielcach</asp:ListItem>
                        <asp:ListItem>Kielce - Wszechnica Świętokrzyska</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Administracji Publicznej</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Ekonomii i Prawa im. prof. Edwarda Lipińskiego</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Ekonomii, Turystyki i Nauk Społecznych (d. WS Zarządzania Gospodarką Regionalną i Tur.)</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Handlowa im. Bolesława Markowskiego</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Technik Komputerowych i Telekomunikacji</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Telekomunikacji i Informatyki w likwidacji</asp:ListItem>
                        <asp:ListItem>Kielce - Wyższa Szkoła Umiejętności im. Stanisława Staszica</asp:ListItem>
                        <asp:ListItem>Konin - Wyższa Szkoła Kadr Menedżerskich w Koninie z siedzibą w Koninie</asp:ListItem>
                        <asp:ListItem>Konin - Wyższa Szkoła Pedagogiczno-Techniczna</asp:ListItem>
                        <asp:ListItem>Kostrzyń nad Odrą - Wyższa Szkoła Zawodowa</asp:ListItem>
                        <asp:ListItem>Koszalin - Bałtycka Wyższa Szkoła Humanistyczna</asp:ListItem>
                        <asp:ListItem>Koszalin - Koszalińska Wyższa Szkoła Nauk Humanistycznych</asp:ListItem>
                        <asp:ListItem>Koszalin - Politechnika Koszalińska</asp:ListItem>
                        <asp:ListItem>Kraków - Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Akademia Ignatianum w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Akademia Wychowania Fizycznego im. Bronisława Czecha w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Krakowska Akademia im. Andrzeja Frycza-Modrzewskiego</asp:ListItem>
                        <asp:ListItem>Kraków - Krakowska Wyższa Szkoła Promocji Zdrowia</asp:ListItem>
                        <asp:ListItem>Kraków - Małopolska Wyższa Szkoła Zawodowa im. Józefa Dietla w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Politechnika Krakowska im. Tadeusza Kościuszki</asp:ListItem>
                        <asp:ListItem>Kraków - Profesjonalna Szkoła Biznesu (w likwidacji)</asp:ListItem>
                        <asp:ListItem>Kraków - Uniwersytet Ekonomiczny w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Uniwersytet Jagielloński w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Uniwersytet Papieski Jana Pawła II w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Uniwersytet Pedagogiczny im. Komisji Edukacji Narodowej w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Uniwersytet Rolniczy im. Hugona Kołłątaja w Krakowie</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Bezpieczeństwa Publicznego i Indywidualnego Apeiron</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Ekonomii i Informatyki</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Europejska im. Ks. Józefa Tischnera</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Gospodarki i Zarządzania</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Handlowa</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Ochrony Środowiska, Turystyki i Rekreacji</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Ubezpieczeń</asp:ListItem>
                        <asp:ListItem>Kraków - Wyższa Szkoła Zarządzania i Bankowości</asp:ListItem>
                        <asp:ListItem>Kutno - Wyższa Szkoła Gospodarki Krajowej</asp:ListItem>
                        <asp:ListItem>Kwidzyn - Powiślańska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Legnica - Wyższa Szkoła Medyczna LZDZ</asp:ListItem>
                        <asp:ListItem>Legnica - Wyższa Szkoła Menedżerska</asp:ListItem>
                        <asp:ListItem>Legnica - Wyższa Szkoła Techniczna w Legnicy</asp:ListItem>
                        <asp:ListItem>Leszno - Wyższa Szkoła Humanistyczna im. Króla Stanisława Leszczyńskiego</asp:ListItem>
                        <asp:ListItem>Leszno - Wyższa Szkoła Marketingu i Zarządzania</asp:ListItem>
                        <asp:ListItem>Lublin - Katolicki Uniwersytet Lubelski Jana Pawła II</asp:ListItem>
                        <asp:ListItem>Lublin - Lubelska Szkoła Wyższa im. Króla Władysława Jagiełły</asp:ListItem>
                        <asp:ListItem>Lublin - Politechnika Lubelska</asp:ListItem>
                        <asp:ListItem>Lublin - Uczelnia Zawodowa Zagłębia Miedziowego</asp:ListItem>
                        <asp:ListItem>Lublin - Uniwersytet Marii Curie-Skłodowskiej w Lublinie</asp:ListItem>
                        <asp:ListItem>Lublin - Uniwersytet Medyczny w Lublinie</asp:ListItem>
                        <asp:ListItem>Lublin - Uniwersytet Przyrodniczy w Lublinie</asp:ListItem>
                        <asp:ListItem>Lublin - Wyższa Szkoła Ekonomii i Innowacji</asp:ListItem>
                        <asp:ListItem>Lublin - Wyższa Szkoła Humanistyczna im. Alojzego Szubartowskiego w likwidacji</asp:ListItem>
                        <asp:ListItem>Lublin - Wyższa Szkoła Nauk Społecznych</asp:ListItem>
                        <asp:ListItem>Lublin - Wyższa Szkoła Przedsiębiorczości i Administracji</asp:ListItem>
                        <asp:ListItem>Lublin - Wyższa Szkoła Społeczno-Przyrodnicza im. Wincentego Pola</asp:ListItem>
                        <asp:ListItem>Łomża - Wyższa Szkoła Agrobiznesu</asp:ListItem>
                        <asp:ListItem>Łomża - Wyższa Szkoła Zarządzania i Przedsiębiorczości im. B.Jańskiego</asp:ListItem>
                        <asp:ListItem>Łomża - Wyższa Szkoła Zawodowa Ochrony Zdrowia TWP</asp:ListItem>
                        <asp:ListItem>Łowicz - Mazowiecka Wyższa Szkoła Humanistyczno-Pedagogiczna</asp:ListItem>
                        <asp:ListItem>Łódź - Akademia Humanistyczno-Ekonomiczna (d. Wyższa Szkoła Humanistyczno-Ekonomiczna)</asp:ListItem>
                        <asp:ListItem>Łódź - Politechnika Łódzka</asp:ListItem>
                        <asp:ListItem>Łódź - Salezjańska Wyższa Szkoła Ekonomii i Zarządzania</asp:ListItem>
                        <asp:ListItem>Łódź - Społeczna Akademia Nauk (d. Społeczna Wyższa Szkoła Przedsiębiorczości i Zarządzania)</asp:ListItem>
                        <asp:ListItem>Łódź - Uniwersytet Łódzki</asp:ListItem>
                        <asp:ListItem>Łódź - Uniwersytet Medyczny w Łodzi</asp:ListItem>
                        <asp:ListItem>Łódź - Wschód - Zachód Szkoła Wyższa im. Henryka Jóźwiaka</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Administracji Publicznej</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Biznesu i Nauk o Zdrowiu</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła COSINUS</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Edukacji Zdrowotnej i Nauk Społecznych (d. Wyższa Szkoła Edukacji Zdrowotnej)</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Finansów i Informatyki im. prof. J.Chechlińskiego</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Informatyki i Umiejętności (d. Wyższa Szkoła Informatyki)</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Kosmetyki i Nauk o Zdrowiu</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Kupiecka</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Marketingu i Biznesu</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Pedagogiczna</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Sportowa</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Studiów Międzynarodowych</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Sztuki i Projektowania</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Turystyki i Hotelarstwa</asp:ListItem>
                        <asp:ListItem>Łódź - Wyższa Szkoła Zawodowa Łódzkiej Korporacji Oświatowej</asp:ListItem>
                        <asp:ListItem>Łuków - Wyższa Szkoła Biznesu i Administracji</asp:ListItem>
                        <asp:ListItem>Mińsk Mazowiecki - Wyższa Szkoła Nauk Społecznych im. Ks. J. Majki</asp:ListItem>
                        <asp:ListItem>Mysłowice - Górnośląska Wyższa Szkoła Pedagogiczna im. Kard. Augusta Hlonda</asp:ListItem>
                        <asp:ListItem>Nadarzyn - Wyższa Szkoła Fundacji Kultury Informatycznej</asp:ListItem>
                        <asp:ListItem>Nowa Ruda - Polsko - Czeska Wyższa Szkoła Biznesu i Sportu Collegium Glacense</asp:ListItem>
                        <asp:ListItem>Nowy Sącz - Wyższa Szkoła Biznesu - National Louis University</asp:ListItem>
                        <asp:ListItem>Nowy Sącz - Wyższa Szkoła Przedsiębiorczości (d. Sądecka Wyższa Szkoła Zawodowa)</asp:ListItem>
                        <asp:ListItem>Olecko - Wszechnica Mazurska</asp:ListItem>
                        <asp:ListItem>Olsztyn - Olsztyńska Szkoła Wyższa im. Józefa Rusieckiego</asp:ListItem>
                        <asp:ListItem>Olsztyn - Olsztyńska Wyższa Szkoła Informatyki i Zarządzania im. prof. Tadeusza Kotarbińskiego</asp:ListItem>
                        <asp:ListItem>Olsztyn - Uniwersytet Warmińsko-Mazurski w Olsztynie</asp:ListItem>
                        <asp:ListItem>Olsztyn - Wyższa Szkoła Informatyki i Ekonomii TWP</asp:ListItem>
                        <asp:ListItem>Opole - Politechnika Opolska</asp:ListItem>
                        <asp:ListItem>Opole - Uniwersytet Opolski</asp:ListItem>
                        <asp:ListItem>Opole - Wyższa Szkoła Zarządzania i Administracji</asp:ListItem>
                        <asp:ListItem>Ostrołęka - Wyższa Szkoła Administracji Publicznej</asp:ListItem>
                        <asp:ListItem>Ostrołęka - Wyższa Szkoła Ekonomiczno-Społeczna</asp:ListItem>
                        <asp:ListItem>Ostrowiec Świętokrzyski - Wyższa Szkoła Biznesu i Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Otwock - Wyższa Szkoła Przedsiębiorczości i Nauk Społecznych</asp:ListItem>
                        <asp:ListItem>Pabianice - Wyższa Szkoła Humanistyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Piła - Wyższa Szkoła Biznesu</asp:ListItem>
                        <asp:ListItem>Pińczów - Wyższa Szkoła Umiejętności Zawodowych</asp:ListItem>
                        <asp:ListItem>Piotrków Trybunalski - Wyższa Szkoła Handlowa im. Króla Stefana Batorego</asp:ListItem>
                        <asp:ListItem>Płock - Szkoła Wyższa im. Pawła Włodkowica</asp:ListItem>
                        <asp:ListItem>Podkowa Leśna - Podkowiańska Wyższa Szkoła Medyczna im. Zofii i Jonasza Łyko</asp:ListItem>
                        <asp:ListItem>Polkowice - Dolnośląska Wyższa Szkoła Przedsiębiorczości i Techniki</asp:ListItem>
                        <asp:ListItem>Poznań - Akademia Wychowania Fizycznego im. Eugeniusza Piaseckiego w Poznaniu</asp:ListItem>
                        <asp:ListItem>Poznań - Politechnika Poznańska</asp:ListItem>
                        <asp:ListItem>Poznań - Poznańska Wyższa Szkoła Biznesu (d. Poznańska Wyższa Szkoła Biznesu i Języków Obcych)</asp:ListItem>
                        <asp:ListItem>Poznań - Schola Posnaniensis - Wyższa Szkoła Sztuki Stosowanej</asp:ListItem>
                        <asp:ListItem>Poznań - Uniwersytet Ekonomiczny w Poznaniu</asp:ListItem>
                        <asp:ListItem>Poznań - Uniwersytet im.Adama Mickiewicza w Poznaniu</asp:ListItem>
                        <asp:ListItem>Poznań - Uniwersytet Medyczny im. Karola Marcinkowskiego w Poznaniu</asp:ListItem>
                        <asp:ListItem>Poznań - Uniwersytet Przyrodniczy w Poznaniu</asp:ListItem>
                        <asp:ListItem>Poznań - Wielkopolska Wyższa Szkoła Turystyki i Zarządzania</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Bankowa</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Bezpieczeństwa</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Edukacji i Terapii</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Edukacji Integracyjnej i Interkulturowej</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Handlu i Rachunkowości</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Handlu i Usług</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Hotelarstwa i Gastronomii</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Języków Obcych im. Samuela Bogumiła Lindego</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Komunikacji i Zarządzania</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Logistyki</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Nauk Humanistycznych i Dziennikarstwa</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Pedagogiki i Administracji im. Mieszka I</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Techniczno-Przyrodnicza</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Umiejętności Społecznych</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Zarządzania i Bankowości</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Zawodowa Kadry dla Europy</asp:ListItem>
                        <asp:ListItem>Poznań - Wyższa Szkoła Zdrowia, Urody i Edukacji (d. Wyższa Szkoła Zawodowa Pielęnacji Zdrowia i Urody)</asp:ListItem>
                        <asp:ListItem>Pruszków - Wyższa Szkoła Kultury Fizycznej i Turystyki im. Haliny Konopackiej</asp:ListItem>
                        <asp:ListItem>Przemyśl - Wyższa Szkoła Gospodarcza</asp:ListItem>
                        <asp:ListItem>Przemyśl - Wyższa Szkoła Informatyki i Zarządzania</asp:ListItem>
                        <asp:ListItem>Przemyśl - Wyższa Szkoła Prawa i Administracji (d. Wyższa Szkoła Administracji i Zarządzania)</asp:ListItem>
                        <asp:ListItem>Przeworsk - Wyższa Szkoła Społeczno-Gospodarcza</asp:ListItem>
                        <asp:ListItem>Puck - Wyższa Szkoła Zdrowia i Turystyki</asp:ListItem>
                        <asp:ListItem>Puławy - Puławska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Pułtusk - Akademia Humanistyczna im. Aleksandra Gieysztora (d. WS Humanistyczna im. Aleksandra Gieysztora)</asp:ListItem>
                        <asp:ListItem>Radom - Prywatna Wyższa Szkoła Ochrony Środowiska</asp:ListItem>
                        <asp:ListItem>Radom - Radomska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Radom - Uniwersytet technologiczno-Humanistyczny im. Kazimierza Pułaskiego w Radomiu</asp:ListItem>
                        <asp:ListItem>Radom - Wyższa Inżynierska Szkoła Bezpieczeństwa i Organizacji Pracy</asp:ListItem>
                        <asp:ListItem>Radom - Wyższa Inżynierska Szkoła Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Radom - Wyższa Szkoła Biznesu im. Biskupa Jana Chrapka</asp:ListItem>
                        <asp:ListItem>Radom - Wyższa Szkoła Handlowa</asp:ListItem>
                        <asp:ListItem>Radom - Wyższa Szkoła Nauk Społecznych i Technicznych</asp:ListItem>
                        <asp:ListItem>Ruda Śląska - Wyższa Szkoła Nauk Stosowanych</asp:ListItem>
                        <asp:ListItem>Ryki - Lubelska Szkoła Wyższa (d. Wyższa Szkoła Umiejętności Pedagogicznych i Zarzadzania)</asp:ListItem>
                        <asp:ListItem>Rzeszów - Politechnika Rzeszowska im. Ignacego Łukasiewicza</asp:ListItem>
                        <asp:ListItem>Rzeszów - Uniwersytet Rzeszowski</asp:ListItem>
                        <asp:ListItem>Rzeszów - Wyższa Szkoła Informatyki i Zarządzania</asp:ListItem>
                        <asp:ListItem>Rzeszów - Wyższa Szkoła Inżynieryjno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Rzeszów - Wyższa Szkoła Zarządzania</asp:ListItem>
                        <asp:ListItem>Sandomierz - Wyższa Szkoła Humanistyczno-Przyrodnicza Studium Generale Sandomiriense</asp:ListItem>
                        <asp:ListItem>Sanok - Wyższa Szkoła Sanocka</asp:ListItem>
                        <asp:ListItem>Siedlce - Collegium Mazovia Innowacyjna Szkoła Wyższa (d. Wyższa Szkoła Finansów i Zarządzania)</asp:ListItem>
                        <asp:ListItem>Siedlce - Uniwersytet Przyrodniczo-Humanistyczny w Siedlcach</asp:ListItem>
                        <asp:ListItem>Siemiatycze - Nadbużańska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Sieradz - Wyższa Szkoła Humanistyczno-Ekonomiczna w Sieradzu</asp:ListItem>
                        <asp:ListItem>Skierniewice - Wyższa Szkoła Ekonomiczno-Humanistyczna im. prof. Szczepana A.Pieniążka</asp:ListItem>
                        <asp:ListItem>Słupsk - Akademia Pomorska w Słupsku</asp:ListItem>
                        <asp:ListItem>Słupsk - Wyższa Hanzeatycka Szkoła Zarządzania</asp:ListItem>
                        <asp:ListItem>Słupsk - Wyższa Szkoła Inżynierii Gospodarki (d. Wyższa Szkoła Biznesu Wiejskiego)</asp:ListItem>
                        <asp:ListItem>Sochaczew - Wyższa Szkoła Zarządzania i Marketingu</asp:ListItem>
                        <asp:ListItem>Sopot - Europejska Szkoła Wyższa (d. Europejska Szkoła Hotelarstwa, Turystyki i Przedsiębiorczości - SW)</asp:ListItem>
                        <asp:ListItem>Sopot - Sopocka Szkoła Wyższa (d. Wyższa Szkoła Finansów i Rachunkowości)</asp:ListItem>
                        <asp:ListItem>Sosnowiec - Wyższa Szkoła Humanitas (d. Wyższa Szkoła Zarządzania i Marketingu)</asp:ListItem>
                        <asp:ListItem>Sosnowiec - Wyższa Szkoła Inżynierii Bezpieczeństwa i Ekologii</asp:ListItem>
                        <asp:ListItem>Sosnowiec - Wyższa Szkoła Medyczna</asp:ListItem>
                        <asp:ListItem>Stalowa Wola - Wyższa Szkoła Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Stargard Szczeciński - Stargardzka Szkoła Wyższa Stargardinum</asp:ListItem>
                        <asp:ListItem>Starogard Gdański - Pomorska Szkoła Wyższa (d. Pomorska WS Polityki Społecznej i Gospodarczej)</asp:ListItem>
                        <asp:ListItem>Sucha Beskidzka - Wyższa Szkoła Turystyki i Ekologii</asp:ListItem>
                        <asp:ListItem>Suwałki - Wyższa Szkoła Służby Społecznej im. Ks. Franciszka Błachnickiego</asp:ListItem>
                        <asp:ListItem>Suwałki - Wyższa Szkoła Suwalsko-Mazurska im. Papieża Jana Pawła II</asp:ListItem>
                        <asp:ListItem>Szczecin - Szczecińska Szkoła Wyższa Collegium Balticum</asp:ListItem>
                        <asp:ListItem>Szczecin - Uniwersytet Medyczny w Szczecinie</asp:ListItem>
                        <asp:ListItem>Szczecin - Uniwersytet Szczeciński</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Administracji Publicznej</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Ekonomiczno-Turystyczna</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Humanistyczna TWP</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Integracji Europejskiej</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Języków Obcych</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Kosmetologii i Promocji Zdrowia</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Sztuki Użytkowej</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Techniczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Zarządzania</asp:ListItem>
                        <asp:ListItem>Szczecin - Wyższa Szkoła Zawodowa Oeconomicus PTE</asp:ListItem>
                        <asp:ListItem>Szczecin - Zachodniopomorska Szkoła Biznesu </asp:ListItem>
                        <asp:ListItem>Szczecin - Zachodniopomorski Uniwersytet Technologiczny w Szczecinie</asp:ListItem>
                        <asp:ListItem>Szczytno - Wyższa Szkoła Policji w Szczytnie</asp:ListItem>
                        <asp:ListItem>Środa Wielkopolska - Wielkopolska Wyższa Szkoła Społeczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Świdnica - Collegium Humanitatis (d. Wyższa Szkoła Profilaktyki Społecznej i Terapii)</asp:ListItem>
                        <asp:ListItem>Świdnica - Wyższa Szkoła Techniczno-Ekonomiczna (d. Wyższa Szkoła Technologii Teleinformatycznych)</asp:ListItem>
                        <asp:ListItem>Świecie - Wyższa Szkoła Języków Obcych</asp:ListItem>
                        <asp:ListItem>Świecie - Wyższa Szkoła Menedżerska</asp:ListItem>
                        <asp:ListItem>Tarnów - Małopolska Wyższa Szkoła Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Tomaszów Lubelski - Katolicki Uniwersytet Lubelski Wydział Zamiejscowy Nauk Prawnych i Ekonomicznych w Tomaszowie Lubelskim</asp:ListItem>
                        <asp:ListItem>Toruń - Toruńska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Toruń - Toruńska Wyższa Szkoła Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Toruń - Uniwersytet Mikołaja Kopernika w Toruniu</asp:ListItem>
                        <asp:ListItem>Toruń - Wyższa Szkoła Bankowa</asp:ListItem>
                        <asp:ListItem>Toruń - Wyższa Szkoła Filologii Hebrajskiej</asp:ListItem>
                        <asp:ListItem>Toruń - Wyższa Szkoła Kultury Społecznej i Medialnej</asp:ListItem>
                        <asp:ListItem>Tuchola - Wyższa Szkoła Zarządzania Środowiskiem</asp:ListItem>
                        <asp:ListItem>Tychy - Wyższa Szkoła Gospodarki Narodowej</asp:ListItem>
                        <asp:ListItem>Tychy - Wyższa Szkoła Zarządzania i Nauk Społecznych im. Ks. Emila Szramka</asp:ListItem>
                        <asp:ListItem>Ustroń - Wyższa Szkoła Inżynierii Dentystycznej i Nauk Humanistycznych im. prof. Meissnera</asp:ListItem>
                        <asp:ListItem>Wałbrzych - Wałbrzyska Wyższa Szkoła Zarządzania i Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Warszawa - Akademia Finansów (d. Wyższa Szkoła Ubezpieczeń i Bankowości)</asp:ListItem>
                        <asp:ListItem>Warszawa - Akademia Leona Koźmińskiego (d. WS Przedsiębiorczości i Zarządzania im. Leona Koźmińskiego)</asp:ListItem>
                        <asp:ListItem>Warszawa - Akademia Obrony Narodowej</asp:ListItem>
                        <asp:ListItem>Warszawa - Akademia Pedagogiki Specjalnej im. Marii Grzegorzewskiej w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Akademia Wychowania Fizycznego Józefa Piłsudskiego w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - ALMAMER Szkoła Wyższa (d. ALMAMER Wyższa Szkoła Ekonomiczna)</asp:ListItem>
                        <asp:ListItem>Warszawa - Chrześcijańska Akademia Teologiczna w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Collegium Civitas</asp:ListItem>
                        <asp:ListItem>Warszawa - Collegium Varsoviense (d. Szkoła Wyższa Warszawska)</asp:ListItem>
                        <asp:ListItem>Warszawa - Europejska Akademia Sztuk</asp:ListItem>
                        <asp:ListItem>Warszawa - Europejska Wyższa Szkoła Biznesu (w likwidacji)</asp:ListItem>
                        <asp:ListItem>Warszawa - Europejska Wyższa Szkoła Informatyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Warszawa - Europejska Wyższa Szkoła Prawa i Administracji</asp:ListItem>
                        <asp:ListItem>Warszawa - Lingwistyczna Szkoła Wyższa (d. Wyższa Szkoła Języków Obcych Avans)</asp:ListItem>
                        <asp:ListItem>Warszawa - OLYMPUS Szkoła Wyższa im. Romualda Kudlińskiego</asp:ListItem>
                        <asp:ListItem>Warszawa - Pedagogium - Wyższa Szkoła Pedagogiki Resocjalizacyjnej</asp:ListItem>
                        <asp:ListItem>Warszawa - Pedagogium Wyższa Szkoła Nauk Społecznych</asp:ListItem>
                        <asp:ListItem>Warszawa - Politechnika Warszawska</asp:ListItem>
                        <asp:ListItem>Warszawa - Polsko - Japońska Wyższa Szkoła Technik Komputerowych</asp:ListItem>
                        <asp:ListItem>Warszawa - Prywatna Wyższa Szkoła Businessu, Administracji i Technik Komputerowych</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Główna Gospodarstwa Wiejskiego w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Główna Handlowa w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Główna Turystyki i Rekreacji (d. Wyższa Szkoła Hotelarstwa, Gastronomii i Turystyki)</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Wyższa Przymierza Rodzin</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Wyższa Psychologii Społecznej</asp:ListItem>
                        <asp:ListItem>Warszawa - Szkoła Wyższa Rzemiosł Artystycznych</asp:ListItem>
                        <asp:ListItem>Warszawa - Uczelnia Łazarskiego (d. Wyższa Szkoła Handlu i Prawa im. Ryszarda Łazarskiego)</asp:ListItem>
                        <asp:ListItem>Warszawa - Uczelnia Vistula (d. Wyższa Szkoła Ekonomiczno-Informatyczna)</asp:ListItem>
                        <asp:ListItem>Warszawa - Uczelnia Warszawska im. Marii Skłodowskiej-Curie (d. WS Działalności Gospodarczej)</asp:ListItem>
                        <asp:ListItem>Warszawa - Uniwersytet Kardynała Stefana Wyszyńskiego w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Uniwersytet Warszawski</asp:ListItem>
                        <asp:ListItem>Warszawa - VIAMODA Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Szkoła Biznesu</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Szkoła Filmowa</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Szkoła Zarządzania - Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Wyższa Szkoła Ekonomiczna im. Edwarda Wiszniewskiego</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Wyższa Szkoła Humanistyczna im. Bolesława Prusa</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawska Wyższa Szkoła Informatyki (d. Szkoła Wyższa Mila College)</asp:ListItem>
                        <asp:ListItem>Warszawa - Warszawski Uniwersytet Medyczny</asp:ListItem>
                        <asp:ListItem>Warszawa - Wojskowa Akademia Techniczna im. Jarosława Dąbrowskiego w Warszawie</asp:ListItem>
                        <asp:ListItem>Warszawa - Wszechnica Polska Szkoła Wyższa (d. Wszechnica Polska - Szkoła Wyższa TWP)</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła - Edukacja w Sporcie</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Administracyjno-Społeczna</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Artystyczna - WSA</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Bezpieczeństwa i Ochrony im. Marszałka J. Piłsudskiego (d. WS Bezpieczeństwa i Ochrony)</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Cła i Logistyki</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Dziennikarska im. M.Wańkowicza</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Ekologii i Zarządzania</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Finansów i Zarządzania</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Gospodarowania Nieruchomościami</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Handlu i Finansów Międzynarodowych im. Fryderyka Skarbka</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła im. Bogdana Jańskiego</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Informatyki Stosowanej i Zarządzania</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Informatyki, Zarządzania i Administracji</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Infrastruktury i Zarządzania</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Komunikowania i Mediów Społecznych im. Jerzego Giedroycia</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Komunikowania, Politologii i Stosunków Międzynarodowych</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Mazowiecka</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Menedżerska</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Organizacji Turystyki i Hotelarstwa</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Pedagogiczna TWP</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Pedagogiczna ZNP</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Promocji</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Rehabilitacji</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Społeczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Stosunków Międzynarodowych i Amerykanistyki</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Sztuk Filmowych i Teatralnych (d. Wyższa Szkoła Liderów Społecznych i Mediów)</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Sztuk Wizualnych i Nowych Mediów (w likwidacji)</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Techniczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Technologii Informatycznych</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Trenerów Sportu</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Turystyki i Języków Obcych</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Turystyki i Rekreacji im. Mieczysława Orłowicza</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Zarządzania - Polish Open University</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Zarządzania i Prawa im. Heleny Chodkowskiej</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Zarządzania Personelem</asp:ListItem>
                        <asp:ListItem>Warszawa - Wyższa Szkoła Zawodowa Kosmetyki i Pielęgnacji Zdrowia</asp:ListItem>
                        <asp:ListItem>Wejherowo - Kaszubsko-Pomorska Szkoła Wyższa</asp:ListItem>
                        <asp:ListItem>Włocławek - Wyższa Szkoła Humanistyczno-Ekonomiczna</asp:ListItem>
                        <asp:ListItem>Włocławek - Wyższa Szkoła Techniki i Przedsiębiorczości</asp:ListItem>
                        <asp:ListItem>Wołomin - Wyższa Szkoła Współpracy Międzynarodowej i Regionalnej im. Zygmunta Glogera</asp:ListItem>
                        <asp:ListItem>Wrocław - Akademia Wychowania Fizycznego we Wrocławiu</asp:ListItem>
                        <asp:ListItem>Wrocław - Dolnośląska Szkoła Wyższa (d. Dolnośląska Szkoła Wyższa Edukacji TWP)</asp:ListItem>
                        <asp:ListItem>Wrocław - Dolnośląska Wyższa Szkoła Służb Publicznych Asesor</asp:ListItem>
                        <asp:ListItem>Wrocław - Ewangelikalna Wyższa Szkoła Teologiczna</asp:ListItem>
                        <asp:ListItem>Wrocław - Międzynarodowa Wyższa Szkoła Logistyki i Transportu</asp:ListItem>
                        <asp:ListItem>Wrocław - Niepubliczna Wyższa Szkoła Medyczna (d. Niepubliczna Wyższa Szkoła Kosmetyczna)</asp:ListItem>
                        <asp:ListItem>Wrocław - Politechnika Wrocławska</asp:ListItem>
                        <asp:ListItem>Wrocław - Uniwersytet Ekonomiczny we Wrocławiu</asp:ListItem>
                        <asp:ListItem>Wrocław - Uniwersytet Medyczny im. Piastów Śląskich we Wrocławiu</asp:ListItem>
                        <asp:ListItem>Wrocław - Uniwersytet Przyrodniczy we Wrocławiu</asp:ListItem>
                        <asp:ListItem>Wrocław - Uniwersytet Wrocławski</asp:ListItem>
                        <asp:ListItem>Wrocław - Wrocławska Wyższa Szkoła Informatyki Stosowanej</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Bankowa</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Filologiczna</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Fizjoterapii</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Handlowa</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Humanistyczna</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Informatyki i Zarządzania COPERNICUS</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Oficerska Wojsk Lądowych we Wrocławiu</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Rzemiosł Artystycznych i Zarządzania</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Zarządzania Edukacja</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Zarządzania i Coachingu</asp:ListItem>
                        <asp:ListItem>Wrocław - Wyższa Szkoła Zarządzania i Finansów</asp:ListItem>
                        <asp:ListItem>Zamość - Wyższa Szkoła Humanistyczno-Ekonomiczna im. Jana Zamoyskiego</asp:ListItem>
                        <asp:ListItem>Zamość - Wyższa Szkoła Zarządzania i Administracji</asp:ListItem>
                        <asp:ListItem>Zawiercie - Wyższa Szkoła Administracji i Zarządzania</asp:ListItem>
                        <asp:ListItem>Zielona Góra - Lubuska Wyższa Szkoła Zdrowia Publicznego</asp:ListItem>
                        <asp:ListItem>Zielona Góra - Uniwersytet Zielonogórski</asp:ListItem>
                        <asp:ListItem>Zielona Góra - Zachodnia Wyższa Szkoła Handlu i Finansów Międzynarodowych im. Jana Pawła II</asp:ListItem>
                        <asp:ListItem>Żary - Łużycka Wyższa Szkoła Humanistyczna im. Jana Benedykta Solfy</asp:ListItem>
                        <asp:ListItem>Żyrardów - Collegium Masoviense - Wyższa Szkoła Nauk o Zdrowiu</asp:ListItem>
                        <asp:ListItem>Żyrardów - Wyższa Szkoła Rozwoju Lokalnego</asp:ListItem>
                        <asp:ListItem>Żywiec - Beskidzka Wyższa Szkoła Umiejętności</asp:ListItem>
                        <asp:ListItem>Szkoła z poza listy - proszę wprowadzić nazwę uczelni w pole miejscowość</asp:ListItem>                 
                    </asp:DropDownList></p>

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
                    <h5 id="Tekst_separujacy">Praca zawodowa 2 (bez staży i praktyk)<br /><p id="Linia_separujaca"></p>
                        <h5></h5>
                        <%--<p id="Linia_separujaca"></p>--%></h5>
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
                <h6 style="margin-bottom: 5px">* W rozumieniu przepisów Kodeksu Karnego, jestem:</h6>
                <asp:DropDownList ID="o_kodeksKarnyJestem_ddl" runat="server" margin="0px 0px 0px 0px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>karany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                    <asp:ListItem>niekarany(a) za przestępstwo popełnione umyślnie</asp:ListItem>
                </asp:DropDownList>
                
                <h6 style="margin-bottom: 5px">* Wybieram jako język egzaminacyjny:</h6>
                <asp:DropDownList ID="o_jezykEgzaminacyjny_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>angielski</asp:ListItem>
                    <asp:ListItem>francuski</asp:ListItem>
                    <asp:ListItem>niemiecki</asp:ListItem>
                </asp:DropDownList>
                
                <h6 style="margin-bottom: 5px">* Przystępuję do egzaminu w KSAP po raz:</h6>
                <asp:DropDownList ID="o_egzaminKSAP_ddl" runat="server">
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

                <h6 style="margin-bottom: 5px">* Zamierzam ubiegać się o zakwaterowanie w Kolegium Krajowej Szkoły w okresie kształcenia:</h6>
                <asp:DropDownList ID="o_kolegiumKSAP_ddl" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Tak</asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                </asp:DropDownList>

                <h6 style="margin-bottom: 5px">Źródło informacji o rekrutacji do KSAP:</h6>
                <asp:DropDownList ID="o_zrodloRekKSAP_ddl" runat="server">
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