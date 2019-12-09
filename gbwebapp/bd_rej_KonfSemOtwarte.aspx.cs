using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using MySql.Data.MySqlClient;

namespace gbwebapp
{
    public partial class bd_rej_SemKonfOtwarte : System.Web.UI.Page
    {
        //MySqlConnection connection, pobierzMAXvalue;
        //string ConnectionString = gbwebapp.Properties.Settings.Default.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.ksap.gov.pl");
        }

        protected void ks_przeslij_btn_Click(object sender, EventArgs e)
        {
            string nadawca = "powiadomienia@ksap.gov.pl";
            string odbiorca = email_tbx.Text;
            string temat = "Potwierdzenie uczestnictwa w wydarzeniu w KSAP";
            string tekst_wiadomosci = "Potwierdzamy rejestrację na wydarzenie w KSAP." + "\n\n" + "Płeć: " + plec_ddl.SelectedValue.ToString() + "\n" +
                "Imię: " + imie_tbx.Text.ToString() + "\n" +
                "Drugie imię: " + drugieImie_tbx.Text.ToString() + "\n" +
                "Nazwisko: " + nazwisko_tbx.Text.ToString() + "\n" +
                "Aders e-mail: " + email_tbx.Text.ToString() + "\n" +
                "Zgoda na przetwarzanie danych osobowych: " + daneOsobowe_zgoda_ddl.SelectedValue.ToString();
            //string SMTPServer = "148.81.171.126";
            //string SMTPServer = "mail.ksap.gov.pl/gw/webacc";
            //string SMTPServer = "http://mail.ksap.gov.pl";
            //string SMTPServer = "mail.ksap.gov.pl";
            //string SMTPServer = "172.17.60.16";
            string SMTPServer = "smtp.office365.com";
            int SMTPPort = 587;
            string uzytkownik = "powiadomienia@ksap.gov.pl";
            string haslo = "KpYg%8Ce*4@!hxEi";
            MailMessage wiadonmosc = new MailMessage(nadawca, odbiorca, temat, tekst_wiadomosci);
            //SmtpClient klientEmail = new SmtpClient(SMTPServer);
            SmtpClient klientEmail = new SmtpClient(SMTPServer, SMTPPort);
            NetworkCredential SMTP_dane_uzytkownika = new NetworkCredential(uzytkownik, haslo);

            try
            {                
                klientEmail.UseDefaultCredentials = false;
                klientEmail.Credentials = SMTP_dane_uzytkownika;
                klientEmail.EnableSsl = true;
                klientEmail.Send(wiadonmosc);
                statusWiadomosci_lbl.ForeColor = System.Drawing.Color.Green;
                statusWiadomosci_lbl.Text = "Zgłoszenie wysłane";
                statusWiadomosci_lbl.Visible = true;

                //// tu DB
                //pobierzMAXvalue = new MySqlConnection(ConnectionString);
                //MySqlCommand zapytanieMAXvalue = new MySqlCommand("SELECT MAX(id_zgloszenia) FROM web_test_skasowac.bd_rej_semkonfotwart", pobierzMAXvalue);
                //zapytanieMAXvalue.Connection.Open();
                //string MAXval_ = zapytanieMAXvalue.ExecuteScalar().ToString();
                //if (MAXval_ == "")
                //    MAXval_ = "0";

                //int MAXval = UInt16.Parse(MAXval_) + 1;    //obliczenie wartości id_zgloszenia dla kolejnego INSERTa

                //connection = new MySqlConnection(ConnectionString);
                //MySqlCommand przeslij_btn_insert = new MySqlCommand();
                //przeslij_btn_insert.CommandType = System.Data.CommandType.Text;
                //przeslij_btn_insert.CommandText = "INSERT INTO web_test_skasowac.bd_rej_semkonfotwart(id_zgloszenia,plec,imie,drugieImie,nazwisko,email,daneOsobowe_zgoda) VALUES (" + MAXval + "," + "'" + plec_ddl.SelectedValue.ToString() + "'" + "," + "'" + imie_tbx.Text + "'" + "," + "'" + drugieImie_tbx.Text + "'" + "," + "'" + nazwisko_tbx.Text + "'" + "," + "'" + email_tbx.Text + "'" + "," + "'" + daneOsobowe_zgoda_ddl.SelectedValue.ToString() + "'" + ")";
                //przeslij_btn_insert.Connection = connection;
                //connection.Open();
                //przeslij_btn_insert.ExecuteNonQuery();
                //connection.Close();
            }
            catch (Exception ex)
            {
                statusWiadomosci_lbl.ForeColor = System.Drawing.Color.Red;
                statusWiadomosci_lbl.Text = ex.ToString();
                statusWiadomosci_lbl.Visible = true;
            }            
        }
    }
}