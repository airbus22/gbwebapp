﻿using System;
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
            
        }

        protected void GenerujAnkiete_btn_Click(object sender, EventArgs e)
        {
            if (tbx1.Text != "" && Int32.Parse(tbx1.Text) <= 999)
            {
                Ankieta ankieta_test = new Ankieta();
                int iloscPytan = Int32.Parse(tbx1.Text);
                ankieta_test.UtworzPytanie(iloscPytan);
            }
            else if (tbx1.Text != "" && Int32.Parse(tbx1.Text) > 1000)
                liczbaPytan_walidacja_lbl.Text = "Maksymalna ilość pytań to 999";
            else if (tbx1.Text == "")
                liczbaPytan_walidacja_lbl.Text = "Należy podać liczbę pytań w ankiecie!";
            //p1_lbl.Text = pytanie[0].NumerPytania.ToString();
        }
    }

    public class Ankieta
    {
        public void UtworzPytanie(int m)
        {
            Pytanie[] pytanie = new Pytanie[m];
            //Pytanie[] pytanie = new Pytanie[m+1];
            string p = "Pytanie";
            Random rand = new Random();
            string[] obiekty_pyt_nazwy = new string[m];
            string[] tresc_pytn = new string[m];
            Console.WriteLine("\n\n");

            for (int i = 0; i < m; i++)
            {
                obiekty_pyt_nazwy[i] = p + "_" + (i + 1).ToString();
                //tresc_pytn[i] = p + "_" + (i + 1).ToString() + ": " + "Tresc_pytania_" + (i + 1).ToString();
            }

            for (int i = 0; i < m; i++)
            {
                tresc_pytn[i] = p + "_" + (i + 1).ToString() + ": " + "Tresc_pytania_" + (i + 1).ToString();
            }

            for (int i = 0; i < m; i++)
            {
                //Pytanie obiekty_pyt_nazwa = new Pytanie(1, "Która godzina?", 2, "11:32");
                //Console.WriteLine(i.ToString());
                pytanie[i] = new Pytanie(i, tresc_pytn[i], rand.Next(1, 5), DateTime.Today.ToString());
                //pytanie[i] = new Pytanie("jakiś tekst");
            }

            //Label p1_lbl, p2_lbl, p3_lbl, p4_lbl;
            //p1_lbl = new Label();
            //p2_lbl = new Label();
            //p3_lbl = new Label();
            //p4_lbl = new Label();

            //p1_lbl.Text = pytanie[0].NumerPytania.ToString();
            //p2_lbl.Text = pytanie[0].TrescPytania;
            //p3_lbl.Text = pytanie[0].NumerOdpowiedzi.ToString();
            //p4_lbl.Text = pytanie[0].TrescOdpowiedzi;
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