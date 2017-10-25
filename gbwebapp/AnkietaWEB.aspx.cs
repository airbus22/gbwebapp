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

            //lbl1.Text = pyt.Ciag(10);
            lbl1.Text = Pytanie.Ciag(10).ToString();
        }
    }

    class Ankieta
    {
        public Ankieta(int iloscPytan)
        {

        }
    }

    public class Pytanie
    {
        //public Pytanie(int iloscPytan)
        //{
        //    //for (int i = 1; i = n; i++)
        //    //{
        //    //    trescPytania[i];
        //    //    Pytanie[i] pyt = new Pytanie[trescPytaniai];
        //    //}
        //}

        public static string Ciag(int m)
        {
            string a, l;

            for (int i = 1; i < m; i++)
            {
                a = i.ToString();
                if (i == 1)
                {
                    l = a;
                    return l;
                }
                else
                {
                    l = l + ", " + i;
                    return l;
                }
            }
        }

        int numerPytania { get; set; }
        string trescPytania { get; set; }
        int numerOdpowiedzi { get; set; }
        string trescOdpowiedzi { get; set; }
    }
    
}