using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace gbwebapp
{
    public partial class bd_rej_SemKonfOtwarte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://www.ksap.gov.pl");
        }

        protected void ks_przeslij_btn_Click(object sender, EventArgs e)
        {
            string nadawca = "info@ksap.gov.pl";
            string odbiorca = ks_emailAddress_tbx.Text;
            string temat = "Potwierdzenie uczestnictwa w wydarzeniu w KSAP";
            string tekst_wiadomosci = "Potwierdzamy rejestracje na wydarzenie w KSAP.";
            string SMTPServer = "mail.ksap.gov.pl";
            //string SMTPServer = "172.17.60.16";
            int SMTPPort = 25;
            string uzytkownik = "info";
            string haslo = "info";
            MailMessage wiadonmosc = new MailMessage(nadawca, odbiorca, temat, tekst_wiadomosci);
            SmtpClient klientEmail = new SmtpClient(SMTPServer, SMTPPort);
            NetworkCredential SMTP_dane_uzytkownika = new NetworkCredential(uzytkownik, haslo);

            try
            {                
                klientEmail.UseDefaultCredentials = false;
                klientEmail.Credentials = SMTP_dane_uzytkownika;                
                klientEmail.Send(wiadonmosc);
                statusWiadomosci_lbl.ForeColor = System.Drawing.Color.Green;
                statusWiadomosci_lbl.Text = "Zgłoszenie wysłane";
                statusWiadomosci_lbl.Visible = true;

                // tu DB
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