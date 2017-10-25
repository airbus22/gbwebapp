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
            lbl1.Text = pyt.Ciag(100);
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
        string l;
        public string Ciag(int m)
        {                        
            for (int i = 1; i < m; i++)
            {                
                if (i <= 1)
                {
                    l = i.ToString();
                }
                else
                {
                    //l = l + ", " + i;
                    l = l + ", " + i;
                }
            }
            string w = l.ToString();
            return w;
        }

        int numerPytania { get; set; }
        string trescPytania { get; set; }
        int numerOdpowiedzi { get; set; }
        string trescOdpowiedzi { get; set; }
    }
    
}