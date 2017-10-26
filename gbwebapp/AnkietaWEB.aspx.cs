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
            lbl1.Text = pyt.Ciag(40);
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
        public string l { get; private set; }

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
                    l = l + ", " + i;
                }
            }            
            return l;
        }

        int numerPytania { get; set; }
        string trescPytania { get; set; }
        int numerOdpowiedzi { get; set; }
        string trescOdpowiedzi { get; set; }
    }
    
}