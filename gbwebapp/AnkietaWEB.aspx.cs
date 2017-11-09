using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gbwebapp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Ankieta ankieta_test = new Ankieta();
            ankieta_test.UtworzPytanie(11);
        }
    }

    public class Ankieta
    {
        public void UtworzPytanie(int m)
        {
            int ilosc_pytan = m;
            string[] obiekty_pyt_nazwy = new string[m];
            string p = "Pytanie";

            for (int i = 1; i < ilosc_pytan; i++)
            {
                obiekty_pyt_nazwy[i] = p + i.ToString();
            }
        }

        public class Pytanie
        {
            public Pytanie(string TrescPytania)
            {
                this.TrescPytania = TrescPytania;
            }

            public Pytanie(int NumerPytania, string TrescPytania, int NumerOdpowiedzi, string TrescOdpowiedzi)
            {
                this.NumerPytania = NumerPytania;
                this.TrescPytania = TrescPytania;
                this.NumerOdpowiedzi = NumerOdpowiedzi;
                this.TrescOdpowiedzi = TrescOdpowiedzi;
            }

            int NumerPytania { get; set; }
            string TrescPytania { get; set; }
            int NumerOdpowiedzi { get; set; }
            string TrescOdpowiedzi { get; set; }
        }
    }
}