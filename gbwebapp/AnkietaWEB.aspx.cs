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
            Pytanie pyt = new Pytanie();
            //lbl1.Text = pyt.Ciag(401);

            Ankieta ankieta_test = new Ankieta();
            ankieta_test.UtworzPytanie(11);

        }
    }

    public class Ankieta
    {
        public string Test { get; set; }
        //public Ankieta(int iloscPytan)
        //{                      

        //}

        public void UtworzPytanie(int m)
        {
            int ilosc_pytan = m;
<<<<<<< HEAD
            string[] obiekty_pyt_nazwy = new string[m];
            string p = "Pytanie";
            for (int i = 1; i < ilosc_pytan; i++)
            {
                obiekty_pyt_nazwy[i] = p + i.ToString();
            }

=======
            //string p = "Pytanie";
            string[] pytania_obiekty;
            for (int i = 1; i < ilosc_pytan; i++)
            {
                //string[] obiekty_pyt_nazwy = p + i.ToString();
                pytania_obiekty = new string[] { "pytanie" + i };
            }

            string L="";
            for (int i = 1; i < pytania_obiekty.Length; i++)
            {
                if (i <= 1)
                {
                    L = pytania_obiekty;
                }
                else
                {
                    L = L + ", " + i;
                }
            }

>>>>>>> cec7b8f9af46007494e6dec177fbff9e7b85cde9
            //for (int i = 1; i < m; i++)
            //{
            //    Pytanie pytanie = new Pytanie();
            //}
        }
    }

    public class Pytanie
    {
        //public string L { get; private set; }

        //public string Ciag(int m)
        //{                        
        //    for (int i = 1; i < m; i++)
        //    {                
        //        if (i <= 1)
        //        {
        //            L = i.ToString();
        //        }
        //        else
        //        {
        //            L = L + ", " + i;
        //        }
        //    }            
        //    return L;
        //}

        int NumerPytania { get; set; }
        string TrescPytania { get; set; }
        int NumerOdpowiedzi { get; set; }
        string TrescOdpowiedzi { get; set; }
    }    
}