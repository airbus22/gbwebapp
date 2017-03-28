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
            pobierzMAXvalue = new MySqlConnection(ConnectionString);
            MySqlCommand zapytanieMAXvalue = new MySqlCommand("SELECT MAX(id_kandydata) FROM web_test_skasowac.rekrutacjaksap", pobierzMAXvalue);
            zapytanieMAXvalue.Connection.Open();
            string MAXval_ = zapytanieMAXvalue.ExecuteScalar().ToString();
            if (MAXval_ == "")
                MAXval_ = "0";
            
            int MAXval = UInt16.Parse(MAXval_) + 1;    //obliczenie wartości id_kandydata dla kolejnego INSERTa
            
            connection = new MySqlConnection(ConnectionString);
            MySqlCommand zapisz_btn_insert = new MySqlCommand();
            zapisz_btn_insert.CommandType = System.Data.CommandType.Text;
            zapisz_btn_insert.CommandText = "INSERT INTO web_test_skasowac.rekrutacjaksap(id_kandydata,dok_plec,dok_imie,dok_drugieImie,dok_nazwisko,dok_nazwiskoRodowe,dok_imieOjca,dok_imieMatki," +
                                            "dok_PESEL,dok_dataUrodzenia,dok_miejsceUrodzenia,dok_obywatelstwo,dok_ser_nr_dowoduOsobistego,dok_stosunekWojsko,asz_kodPocztowy,asz_miejsowosc,asz_ulica," +
                                            "asz_numerDomu,asz_numerLokalu,asz_wojewodztwo,az_kodPocztowy,az_miejscowosc,az_ulica,az_nrDomu,az_numerLokalu,az_wojewodztwo,az_nrTelefonu,az_email," +
                                            "w1_uczelniaWyzsza,w1_miejscowosc,w1_kierunekStudiow,w1_wykształcenie,w1_rokUkonczenia,w2_uczelniaWyzsza,w2_miejscowosc,w2_kierunekStudiow,w2_wykształcenie," +
                                            "w2_rokUkonczenia,w3_uczelniaWyzsza,w3_miejscowosc,w3_kierunekStudiow,w3_wykształcenie,w3_rokUkonczenia,kspd_nazwaUczelni,kspd_miejscowosc,kspd_kierunek," +
                                            "kspd_stanZaawans,zjo_jezyk,zjo_certyfikat,sip_odbyte_st_pr,pz1_od,pz1_do,pz1_nazwaPracodawcy,pz1_komOrganizacyjna,pz1_stanowisko,pz1_zakresObowiazkow," +
                                            "pz1_miejscowosc,pz1_pracaWAdm,pz2_od,pz2_do,pz2_nazwaPracodawcy,pz2_komOrganizacyjna,pz2_stanowisko,pz2_zakresObowiazkow,pz2_miejscowosc,pz2_pracaWAdm," +
                                            "pz3_od,pz3_do,pz3_nazwaPracodawcy,pz3_komOrganizacyjna,pz3_stanowisko,pz3_zakresObowiazkow,pz3_miejscowosc,pz3_pracaWAdm,pz4_od,pz4_do,pz4_nazwaPracodawcy," +
                                            "pz4_komOrganizacyjna,pz4_stanowisko,pz4_zakresObowiazkow,pz4_miejscowosc,pz4_pracaWAdm,pz5_od,pz5_do,pz5_nazwaPracodawcy,pz5_komOrganizacyjna,pz5_stanowisko," +
                                            "pz5_zakresObowiazkow,pz5_miejscowosc,pz5_pracaWAdm,pz6_od,pz6_do,pz6_nazwaPracodawcy,pz6_komOrganizacyjna,pz6_stanowisko,pz6_zakresObowiazkow,pz6_miejscowosc," +
                                            "pz6_pracaWAdm,pz7_od,pz7_do,pz7_nazwaPracodawcy,pz7_komOrganizacyjna,pz7_stanowisko,pz7_zakresObowiazkow,pz7_miejscowosc,pz7_pracaWAdm,pz8_od,pz8_do," + 
                                            "pz8_nazwaPracodawcy,pz8_komOrganizacyjna,pz8_stanowisko,pz8_zakresObowiazkow,pz8_miejscowosc,pz8_pracaWAdm,pz9_od,pz9_do,pz9_nazwaPracodawcy," +
                                            "pz9_komOrganizacyjna,pz9_stanowisko,pz9_zakresObowiazkow,pz9_miejscowosc,pz9_pracaWAdm,pz10_od,pz10_do,pz10_nazwaPracodawcy,pz10_komOrganizacyjna," +
                                            "pz10_stanowisko,pz10_zakresObowiazkow,pz10_miejscowosc,pz10_pracaWAdm,pz11_od,pz11_do,pz11_nazwaPracodawcy,pz11_komOrganizacyjna,pz11_stanowisko," +
                                            "pz11_zakresObowiazkow,pz11_miejscowosc,pz11_pracaWAdm,pz12_od,pz12_do,pz12_nazwaPracodawcy,pz12_komOrganizacyjna,pz12_stanowisko,pz12_zakresObowiazkow," +
                                            "pz12_miejscowosc,pz12_pracaWAdm,pz13_od,pz13_do,pz13_nazwaPracodawcy,pz13_komOrganizacyjna,pz13_stanowisko,pz13_zakresObowiazkow,pz13_miejscowosc," +
                                            "pz13_pracaWAdm,o_kodeksKarny,o_jezykEgzaminacyjny,o_egzaminPoRazN,o_kwaterunekKolegiumKSAP,o_zrodRekKSAP)" + 
                                            "VALUES (" + MAXval + "," + "'" + dok_plec_ddl.SelectedValue.ToString() + "'" + "," + "'" + dok_imie_tbx.Text + "'" + "," + 
                                            "'" + dok_drugieImie_tbx.Text + "'" + "," + "'" + dok_nazwisko_tbx.Text + "'" + "," + "'" + dok_nazwiskoRodowe_tbx.Text + "'" + "," + 
                                            "'" + dok_imieOjca_tbx.Text + "'" + "," + "'" + dok_imieMatki_tbx.Text + "'" + "," + "'" + dok_PESEL_tbx.Text + "'" + "," + 
                                            "'" + dok_dataUrodzenia_tbx.Text + "'" + "," + "'" + dok_miejsceUrodzenia_tbx.Text + "'" + "," + "'" + dok_obywatelstwo_tbx.Text + "'" + "," + 
                                            "'" + dok_seriaNumerID_tbx.Text + "'" + "," + "'" + dok_militaryFactor_ddl.SelectedValue.ToString() + "'" + "," + "'" + asz_kodPocztowy_tbx.Text + "'" + "," + 
                                            "'" + asz_miejscowosc_tbx.Text + "'" + "," + "'" + asz_ulica_tbx.Text + "'" + "," + "'" + asz_nrDomu_tbx.Text + "'" + "," + 
                                            "'" + asz_nrLokalu_tbx.Text + "'" + "," + "'" + asz_wojewodztwo_ddl.SelectedValue.ToString() + "'" + "," + "'" + az_kodPocztowy_tbx.Text + "'" + "," + 
                                            "'" + az_miejscowosc_tbx.Text + "'" + "," + "'" + az_ulica_tbx.Text + "'" + "," + "'" + az_nrDomu_tbx.Text + "'" + "," + "'" + az_nrLokalu_tbx.Text + "'" + "," + 
                                            "'" + az_wojewodztwo_ddl.SelectedValue.ToString() + "'" + "," + "'" + az_nrTelefonu_tbx.Text + "'" + "," + "'" + az_adresEmail_tbx.Text + "'" + "," + 
                                            "'" + w1_uczelniaWyzsza_ddl.SelectedValue.ToString() + "'" + "," + "'" + w1_miejscowosc_tbx.Text + "'" + "," + "'" + w1_kierunekStudiow_tbx.Text + "'" + "," + 
                                            "'" + w1_wyksztalcenie_ddl.SelectedValue.ToString() + "'" + "," + "'" + w1_rokUkonczenia_tbx.Text + "'" + "," + "'" + w2_uczelniaWyzsza_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + w2_miejscowosc_tbx.Text + "'" + "," + "'" + w2_kierunekStudiow_tbx.Text + "'" + "," + "'" + w2_wyksztalcenie_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + w2_rokUkonczenia_tbx.Text + "'" + "," + "'" + w3_uczelniaWyzsza_ddl.SelectedValue.ToString() + "'" + "," + "'" + w3_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + w3_kierunekStudiow_tbx.Text + "'" + "," + "'" + w3_wyksztalcenie_ddl.SelectedValue.ToString() + "'" + "," + "'" + w3_rokUkonczenia_tbx.Text + "'" + "," + 
                                            "'" + ks_nazwaUczelni_tbx.Text + "'" + "," + "'" + ks_miejscowosc_tbx.Text + "'" + "," + "'" + ks_kierunek_tbx.Text + "'" + "," + "'" + ks_stanZaawansowania_tbx.Text + "'" + "," + 
                                            "'" + zjo_jezyki_tbx.Text + "'" + "," + "'" + zjo_certyfikat_tbx.Text + "'" + "," + "'" + sip_odbyteStazePraktyki_tbx.Text + "'" + "," + "'" + pz1_od_tbx.Text + "'" + "," + 
                                            "'" + pz1_do_tbx.Text + "'" + "," + "'" + pz1_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz1_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz1_stanowisko_tbx.Text + "'" + "," + "'" + pz1_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz1_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz1_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz2_od_tbx.Text + "'" + "," + "'" + pz2_do_tbx.Text + "'" + "," + 
                                            "'" + pz2_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz2_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz2_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz2_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz2_miejscowosc_tbx.Text + "'" + "," + "'" + pz2_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz3_od_tbx.Text + "'" + "," + "'" + pz3_do_tbx.Text + "'" + "," + "'" + pz3_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz3_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz3_stanowisko_tbx.Text + "'" + "," + "'" + pz3_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz3_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz3_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz4_od_tbx.Text + "'" + "," + "'" + pz4_do_tbx.Text + "'" + "," + 
                                            "'" + pz4_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz4_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz4_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz4_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz4_miejscowosc_tbx.Text + "'" + "," + "'" + pz4_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz5_od_tbx.Text + "'" + "," + "'" + pz5_do_tbx.Text + "'" + "," + "'" + pz5_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz5_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz5_stanowisko_tbx.Text + "'" + "," + "'" + pz5_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz5_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz5_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz6_od_tbx.Text + "'" + "," + "'" + pz6_do_tbx.Text + "'" + "," + 
                                            "'" + pz6_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz6_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz6_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz6_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz6_miejscowosc_tbx.Text + "'" + "," + "'" + pz6_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz7_od_tbx.Text + "'" + "," + "'" + pz7_do_tbx.Text + "'" + "," + "'" + pz7_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz7_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz7_stanowisko_tbx.Text + "'" + "," + "'" + pz7_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz7_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz7_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz8_od_tbx.Text + "'" + "," + "'" + pz8_do_tbx.Text + "'" + "," + 
                                            "'" + pz8_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz8_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz8_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz8_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz8_miejscowosc_tbx.Text + "'" + "," + "'" + pz8_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz9_od_tbx.Text + "'" + "," + "'" + pz9_do_tbx.Text + "'" + "," + "'" + pz9_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz9_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz9_stanowisko_tbx.Text + "'" + "," + "'" + pz9_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz9_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz9_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz10_od_tbx.Text + "'" + "," + "'" + pz10_do_tbx.Text + "'" + "," + 
                                            "'" + pz10_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz10_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz10_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz10_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz10_miejscowosc_tbx.Text + "'" + "," + "'" + pz10_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz11_od_tbx.Text + "'" + "," + "'" + pz11_do_tbx.Text + "'" + "," + "'" + pz11_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz11_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz11_stanowisko_tbx.Text + "'" + "," + "'" + pz11_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz11_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz11_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + pz12_od_tbx.Text + "'" + "," + "'" + pz12_do_tbx.Text + "'" + "," + 
                                            "'" + pz12_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz12_komorkaOrganizacyjna_tbx.Text + "'" + "," + "'" + pz12_stanowisko_tbx.Text + "'" + "," + 
                                            "'" + pz12_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz12_miejscowosc_tbx.Text + "'" + "," + "'" + pz12_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + pz13_od_tbx.Text + "'" + "," + "'" + pz13_do_tbx.Text + "'" + "," + "'" + pz13_nazwaPracodawscy_tbx.Text + "'" + "," + "'" + pz13_komorkaOrganizacyjna_tbx.Text + "'" + "," + 
                                            "'" + pz13_stanowisko_tbx.Text + "'" + "," + "'" + pz13_zakresObowiazkow_tbx.Text + "'" + "," + "'" + pz13_miejscowosc_tbx.Text + "'" + "," + 
                                            "'" + pz13_pracaWAdministracji_ddl.SelectedValue.ToString() + "'" + "," + "'" + o_kodeksKarnyJestem_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + o_jezykEgzaminacyjny_ddl.SelectedValue.ToString() + "'" + "," + "'" + o_egzaminKSAP_ddl.SelectedValue.ToString() + "'" + "," + 
                                            "'" + o_kolegiumKSAP_ddl.SelectedValue.ToString() + "'" + "," + "'" + o_zrodloRekKSAP_ddl.SelectedValue.ToString() + "'" + ")";

            //zapisz_btn_insert.CommandText = "INSERT INTO web_test_skasowac.rekrutacjaksap(id_kandydata,dok_plec,dok_imie) VALUES (" + MAXval + "," + "'" + dok_plec_ddl.SelectedValue.ToString() + "'" + "," + "'" + dok_imie_tbx.Text + "'" + ")";   //działa            
            zapisz_btn_insert.Connection = connection;
            connection.Open();
            zapisz_btn_insert.ExecuteNonQuery();
            connection.Close();

            #region kasownie_pol
                dok_plec_ddl.Text = "";
                dok_imie_tbx.Text = "";
                dok_drugieImie_tbx.Text = "";
                dok_nazwisko_tbx.Text = "";
                dok_nazwiskoRodowe_tbx.Text = "";
                dok_imieOjca_tbx.Text = "";
                dok_imieMatki_tbx.Text = "";
                dok_PESEL_tbx.Text = "";
                dok_dataUrodzenia_tbx.Text = "";
                dok_miejsceUrodzenia_tbx.Text = "";
                dok_obywatelstwo_tbx.Text = "";
                dok_seriaNumerID_tbx.Text = "";
                dok_militaryFactor_ddl.Text = "";
                asz_kodPocztowy_tbx.Text = "";
                asz_miejscowosc_tbx.Text = "";
                asz_ulica_tbx.Text = "";
                asz_nrDomu_tbx.Text = "";
                asz_nrLokalu_tbx.Text = "";
                asz_wojewodztwo_ddl.Text = "";
                az_kodPocztowy_tbx.Text = "";
                az_miejscowosc_tbx.Text = "";
                az_ulica_tbx.Text = "";
                az_nrDomu_tbx.Text = "";
                az_nrLokalu_tbx.Text = "";
                az_wojewodztwo_ddl.Text = "";
                az_nrTelefonu_tbx.Text = "";
                az_adresEmail_tbx.Text = "";
                w1_uczelniaWyzsza_ddl.Text = "";
                w1_miejscowosc_tbx.Text = "";
                w1_kierunekStudiow_tbx.Text = "";
                w1_wyksztalcenie_ddl.Text = "";
                w1_rokUkonczenia_tbx.Text = "";
                w2_uczelniaWyzsza_ddl.Text = "";
                w2_miejscowosc_tbx.Text = "";
                w2_kierunekStudiow_tbx.Text = "";
                w2_wyksztalcenie_ddl.Text = "";
                w2_rokUkonczenia_tbx.Text = "";
                w3_uczelniaWyzsza_ddl.Text = "";
                w3_miejscowosc_tbx.Text = "";
                w3_kierunekStudiow_tbx.Text = "";
                w3_wyksztalcenie_ddl.Text = "";
                w3_rokUkonczenia_tbx.Text = "";
                ks_nazwaUczelni_tbx.Text = "";
                ks_miejscowosc_tbx.Text = "";
                ks_kierunek_tbx.Text = "";
                ks_stanZaawansowania_tbx.Text = "";
                zjo_jezyki_tbx.Text = "";
                zjo_certyfikat_tbx.Text = "";
                sip_odbyteStazePraktyki_tbx.Text = "";
                pz1_od_tbx.Text = "";
                pz1_do_tbx.Text = "";
                pz1_nazwaPracodawscy_tbx.Text = "";
                pz1_komorkaOrganizacyjna_tbx.Text = "";
                pz1_stanowisko_tbx.Text = "";
                pz1_zakresObowiazkow_tbx.Text = "";
                pz1_miejscowosc_tbx.Text = "";
                pz1_pracaWAdministracji_ddl.Text = "";
                pz2_od_tbx.Text = "";
                pz2_do_tbx.Text = "";
                pz2_nazwaPracodawscy_tbx.Text = "";
                pz2_komorkaOrganizacyjna_tbx.Text = "";
                pz2_stanowisko_tbx.Text = "";
                pz2_zakresObowiazkow_tbx.Text = "";
                pz2_miejscowosc_tbx.Text = "";
                pz2_pracaWAdministracji_ddl.Text = "";
                pz3_od_tbx.Text = "";
                pz3_do_tbx.Text = "";
                pz3_nazwaPracodawscy_tbx.Text = "";
                pz3_komorkaOrganizacyjna_tbx.Text = "";
                pz3_stanowisko_tbx.Text = "";
                pz3_zakresObowiazkow_tbx.Text = "";
                pz3_miejscowosc_tbx.Text = "";
                pz3_pracaWAdministracji_ddl.Text = "";
                pz4_od_tbx.Text = "";
                pz4_do_tbx.Text = "";
                pz4_nazwaPracodawscy_tbx.Text = "";
                pz4_komorkaOrganizacyjna_tbx.Text = "";
                pz4_stanowisko_tbx.Text = "";
                pz4_zakresObowiazkow_tbx.Text = "";
                pz4_miejscowosc_tbx.Text = "";
                pz4_pracaWAdministracji_ddl.Text = "";
                pz5_od_tbx.Text = "";
                pz5_do_tbx.Text = "";
                pz5_nazwaPracodawscy_tbx.Text = "";
                pz5_komorkaOrganizacyjna_tbx.Text = "";
                pz5_stanowisko_tbx.Text = "";
                pz5_zakresObowiazkow_tbx.Text = "";
                pz5_miejscowosc_tbx.Text = "";
                pz5_pracaWAdministracji_ddl.Text = "";
                pz6_od_tbx.Text = "";
                pz6_do_tbx.Text = "";
                pz6_nazwaPracodawscy_tbx.Text = "";
                pz6_komorkaOrganizacyjna_tbx.Text = "";
                pz6_stanowisko_tbx.Text = "";
                pz6_zakresObowiazkow_tbx.Text = "";
                pz6_miejscowosc_tbx.Text = "";
                pz6_pracaWAdministracji_ddl.Text = "";
                pz7_od_tbx.Text = "";
                pz7_do_tbx.Text = "";
                pz7_nazwaPracodawscy_tbx.Text = "";
                pz7_komorkaOrganizacyjna_tbx.Text = "";
                pz7_stanowisko_tbx.Text = "";
                pz7_zakresObowiazkow_tbx.Text = "";
                pz7_miejscowosc_tbx.Text = "";
                pz7_pracaWAdministracji_ddl.Text = "";
                pz8_od_tbx.Text = "";
                pz8_do_tbx.Text = "";
                pz8_nazwaPracodawscy_tbx.Text = "";
                pz8_komorkaOrganizacyjna_tbx.Text = "";
                pz8_stanowisko_tbx.Text = "";
                pz8_zakresObowiazkow_tbx.Text = "";
                pz8_miejscowosc_tbx.Text = "";
                pz8_pracaWAdministracji_ddl.Text = "";
                pz9_od_tbx.Text = "";
                pz9_do_tbx.Text = "";
                pz9_nazwaPracodawscy_tbx.Text = "";
                pz9_komorkaOrganizacyjna_tbx.Text = "";
                pz9_stanowisko_tbx.Text = "";
                pz9_zakresObowiazkow_tbx.Text = "";
                pz9_miejscowosc_tbx.Text = "";
                pz9_pracaWAdministracji_ddl.Text = "";
                pz10_od_tbx.Text = "";
                pz10_do_tbx.Text = "";
                pz10_nazwaPracodawscy_tbx.Text = "";
                pz10_komorkaOrganizacyjna_tbx.Text = "";
                pz10_stanowisko_tbx.Text = "";
                pz10_zakresObowiazkow_tbx.Text = "";
                pz10_miejscowosc_tbx.Text = "";
                pz10_pracaWAdministracji_ddl.Text = "";
                pz11_od_tbx.Text = "";
                pz11_do_tbx.Text = "";
                pz11_nazwaPracodawscy_tbx.Text = "";
                pz11_komorkaOrganizacyjna_tbx.Text = "";
                pz11_stanowisko_tbx.Text = "";
                pz11_zakresObowiazkow_tbx.Text = "";
                pz11_miejscowosc_tbx.Text = "";
                pz11_pracaWAdministracji_ddl.Text = "";
                pz12_od_tbx.Text = "";
                pz12_do_tbx.Text = "";
                pz12_nazwaPracodawscy_tbx.Text = "";
                pz12_komorkaOrganizacyjna_tbx.Text = "";
                pz12_stanowisko_tbx.Text = "";
                pz12_zakresObowiazkow_tbx.Text = "";
                pz12_miejscowosc_tbx.Text = "";
                pz12_pracaWAdministracji_ddl.Text = "";
                pz13_od_tbx.Text = "";
                pz13_do_tbx.Text = "";
                pz13_nazwaPracodawscy_tbx.Text = "";
                pz13_komorkaOrganizacyjna_tbx.Text = "";
                pz13_stanowisko_tbx.Text = "";
                pz13_zakresObowiazkow_tbx.Text = "";
                pz13_miejscowosc_tbx.Text = "";
                pz13_pracaWAdministracji_ddl.Text = "";
                o_kodeksKarnyJestem_ddl.Text = "";
                o_jezykEgzaminacyjny_ddl.Text = "";
                o_egzaminKSAP_ddl.Text = "";
                o_kolegiumKSAP_ddl.Text = "";
                o_zrodloRekKSAP_ddl.Text = "";
            #endregion
        }

        protected void w2_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (w2_Panel.Visible == false)
                w2_Panel.Visible = true;
            else
                w2_Panel.Visible = false;
        }

        protected void w3_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (w3_Panel.Visible == false)
                w3_Panel.Visible = true;
            else
                w3_Panel.Visible = false;
        }        

        protected void pz2_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz2_panel.Visible == false)
                pz2_panel.Visible = true;
            else
                pz2_panel.Visible = false;
        }

        protected void pz3_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz3_panel.Visible == false)
                pz3_panel.Visible = true;
            else
                pz3_panel.Visible = false;
        }

        protected void pz4_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz4_panel.Visible == false)
                pz4_panel.Visible = true;
            else
                pz4_panel.Visible = false;
        }

        protected void pz5_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz5_panel.Visible == false)
                pz5_panel.Visible = true;
            else
                pz5_panel.Visible = false;
        }

        protected void pz6_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz6_panel.Visible == false)
                pz6_panel.Visible = true;
            else
                pz6_panel.Visible = false;
        }

        protected void pz7_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz7_panel.Visible == false)
                pz7_panel.Visible = true;
            else
                pz7_panel.Visible = false;
        }

        protected void pz8_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz8_panel.Visible == false)
                pz8_panel.Visible = true;
            else
                pz8_panel.Visible = false;
        }

        protected void pz9_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz9_panel.Visible == false)
                pz9_panel.Visible = true;
            else
                pz9_panel.Visible = false;
        }

        protected void pz10_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz10_panel.Visible == false)
                pz10_panel.Visible = true;
            else
                pz10_panel.Visible = false;
        }

        protected void pz11_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz11_panel.Visible == false)
                pz11_panel.Visible = true;
            else
                pz11_panel.Visible = false;
        }

        protected void pz12_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz12_panel.Visible == false)
                pz12_panel.Visible = true;
            else
                pz12_panel.Visible = false;
        }
        
        protected void pz13_kolejne_cbx_CheckedChanged(object sender, EventArgs e)
        {
            if (pz13_panel.Visible == false)
                pz13_panel.Visible = true;
            else
                pz13_panel.Visible = false;
        }
        
    }
}