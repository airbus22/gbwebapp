using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace gbwebapp
{
    public partial class GBWebForm : System.Web.UI.Page
    {
        MySqlConnection connection, pobierzMAXvalue;
        string ConnectionString = gbwebapp.Properties.Settings.Default.ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.ksap.gov.pl");
        }

        protected void zapisz_btn_Click(object sender, EventArgs e)
        {
            //connection = new MySqlConnection(ConnectionString);
            //MySqlCommand chbx1_insert = new MySqlCommand();
            //chbx1_insert.CommandType = System.Data.CommandType.Text;
            //chbx1_insert.CommandText = "SELECT MAX(id_kandydata) FROM web_test_skasowac.rekrutacjaksap";
            ////chbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + "'" + DateTime.Now + "'" + ", 1, 'udało się wstawić wartość')";
            //chbx1_insert.Connection = connection;
            //string maxIDkandydata = (string)Convert.
            //connection.Open();
            //chbx1_insert.ExecuteNonQuery();
            //connection.Close();

            pobierzMAXvalue = new MySqlConnection(ConnectionString);
            MySqlCommand zapytanieMAXvalue = new MySqlCommand("SELECT MAX(id_kandydata) FROM web_test_skasowac.rekrutacjaksap", pobierzMAXvalue);
            zapytanieMAXvalue.Connection.Open();
            string MAXval = zapytanieMAXvalue.ExecuteScalar().ToString();


            connection = new MySqlConnection(ConnectionString);
            MySqlCommand zapisz_btn_insert = new MySqlCommand();
            zapisz_btn_insert.CommandType = System.Data.CommandType.Text;
            zapisz_btn_insert.CommandText = "INSERT INTO web_test_skasowac.rekrutacjaksap(id_kandydata,dok_plec,dok_imie,dok_drugieImie,dok_nazwisko,dok_nazwiskoRodowe," +
                                                                                    "dok_imieOjca,dok_imieMatki,dok_PESEL,dok_dataUrodzenia,dok_miejsceUrodzenia," +
                                                                                    "dok_obywatelstwo,dok_ser_nr_dowoduOsobistego,dok_stosunekWojsko,asz_kodPocztowy," +
                                                                                    "asz_miejsowosc,asz_ulica,asz_numerDomu,asz_numerLokalu,asz_wojewodztwo,az_kodPocztowy," +
                                                                                    "az_miejscowosc,az_ulica,az_nrDomu,az_numerLokalu,az_wojewodztwo,az_nrTelefonu,az_email," +
                                                                                    "w1_uczelniaWyzsza,w1_miejscowosc,w1_kierunekStudiow,w1_wykształcenie,w1_rokUkonczenia," +
                                                                                    "w2_uczelniaWyzsza,w2_miejscowosc,w2_kierunekStudiow,w2_wykształcenie,w2_rokUkonczenia," +
                                                                                    "w3_uczelniaWyzsza,w3_miejscowosc,w3_kierunekStudiow,w3_wykształcenie,w3_rokUkonczenia," +
                                                                                    "kspd_nazwaUczelni,kspd_miejscowosc,kspd_kierunek,kspd_stanZaawans,zjo_jezyk,zjo_certyfikat,sip_odbyte_st_pr," +
                                                                                    "pz1_od,pz1_do,pz1_nazwaPracodawcy,pz1_komOrganizacyjna,pz1_stanowisko,pz1_zakresObowiazkow,pz1_miejscowosc,pz1_pracaWAdm," +
                                                                                    "pz2_od,pz2_do,pz2_nazwaPracodawcy,pz2_komOrganizacyjna,pz2_stanowisko,pz2_zakresObowiazkow,pz2_miejscowosc,pz2_pracaWAdm," +
                                                                                    "pz3_od,pz3_do,pz3_nazwaPracodawcy,pz3_komOrganizacyjna,pz3_stanowisko,pz3_zakresObowiazkow,pz3_miejscowosc,pz3_pracaWAdm," +
                                                                                    "pz4_od,pz4_do,pz4_nazwaPracodawcy,pz4_komOrganizacyjna,pz4_stanowisko,pz4_zakresObowiazkow,pz4_miejscowosc,pz4_pracaWAdm," +
                                                                                    "pz5_od,pz5_do,pz5_nazwaPracodawcy,pz5_komOrganizacyjna,pz5_stanowisko,pz5_zakresObowiazkow,pz5_miejscowosc,pz5_pracaWAdm," +
                                                                                    "pz6_od,pz6_do,pz6_nazwaPracodawcy,pz6_komOrganizacyjna,pz6_stanowisko,pz6_zakresObowiazkow,pz6_miejscowosc,pz6_pracaWAdm," +
                                                                                    "pz7_od,pz7_do,pz7_nazwaPracodawcy,pz7_komOrganizacyjna,pz7_stanowisko,pz7_zakresObowiazkow,pz7_miejscowosc,pz7_pracaWAdm," +
                                                                                    "pz8_od,pz8_do,pz8_nazwaPracodawcy,pz8_komOrganizacyjna,pz8_stanowisko,pz8_zakresObowiazkow,pz8_miejscowosc,pz8_pracaWAdm," +
                                                                                    "pz9_od,pz9_do,pz9_nazwaPracodawcy,pz9_komOrganizacyjna,pz9_stanowisko,pz9_zakresObowiazkow,pz9_miejscowosc,pz9_pracaWAdm," +
                                                                                    "pz10_od,pz10_do,pz10_nazwaPracodawcy,pz10_komOrganizacyjna,pz10_stanowisko,pz10_zakresObowiazkow,pz10_miejscowosc,pz10_pracaWAdm," +
                                                                                    "pz11_od,pz11_do,pz11_nazwaPracodawcy,pz11_komOrganizacyjna,pz11_stanowisko,pz11_zakresObowiazkow,pz11_miejscowosc,pz11_pracaWAdm," +
                                                                                    "pz12_od,pz12_do,pz12_nazwaPracodawcy,pz12_komOrganizacyjna,pz12_stanowisko,pz12_zakresObowiazkow,pz12_miejscowosc,pz12_pracaWAdm," +
                                                                                    "pz13_od,pz13_do,pz13_nazwaPracodawcy,pz13_komOrganizacyjna,pz13_stanowisko,pz13_zakresObowiazkow,pz13_miejscowosc,pz13_pracaWAdm," +
                                                                                    "o_kodeksKarny,o_jezykEgzaminacyjny,o_egzaminPoRazN,o_kwaterunekKolegiumKSAP,o_zrodRekKSAP)" +
                                       "VALUES (" + MAXval + "," + dok_plec_ddl.SelectedValue.ToString() + "," + dok_imie_tbx.ToString() + "," + dok_drugieImie_tbx.ToString() + "," + dok_nazwisko_tbx.ToString() + "," + dok_nazwiskoRodowe_tbx.ToString() + "," + dok_imieOjca_tbx.ToString() + "," + dok_imieMatki_tbx.ToString() + "," + dok_PESEL_tbx.ToString() + "," + dok_dataUrodzenia_tbx.ToString() + "," + dok_miejsceUrodzenia_tbx.ToString() + "," + dok_obywatelstwo_tbx.ToString() + "," + dok_seriaNumerID_tbx.ToString() + "," + dok_militaryFactor_ddl.SelectedValue.ToString() + "," + asz_kodPocztowy_tbx.ToString() + "," + asz_miejscowosc_tbx.ToString() + "," + asz_ulica_tbx.ToString() + "," + asz_nrDomu_tbx.ToString() + "," + asz_nrLokalu_tbx.ToString() + "," + asz_wojewodztwo_dll.ToString() + "," +az_kodPocztowy_tbx.ToString() + "," + az_miejscowosc_tbx.ToString() + "," + az_ulica_tbx.ToString() + "," + az_nrDomu_tbx.ToString() + "," + az_nrLokalu_tbx.ToString() + "," + az_wojewodztwo_ddl.SelectedValue.ToString() + "," + az_nrTelefonu_tbx.ToString() + "," + az_adresEmail_tbx.ToString() + "," + w_uczelniaWyzsza_ddl.SelectedValue.ToString() + ",'we','2017','we','we','we','we','2017','we','we','we','we','2017','jakas Uczelnia','Miejscowość','Kierunek','stanZaawansowania','język','certyfikat','odbyte staże / praktyki','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','01.01.2016','31.12.2016','ZUS','kadry','referent','full','Warszawa','Tak','czysty','rosyjski','4','tak poproszę','internet','test','test')";

            zapisz_btn_insert.Connection = connection;

            connection.Open();
            zapisz_btn_insert.ExecuteNonQuery();
            connection.Close();
        }

        protected void pz_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (panel_pr2.Visible == false)
                panel_pr2.Visible = true;
            else
                panel_pr2.Visible = false;
        }
    }
}