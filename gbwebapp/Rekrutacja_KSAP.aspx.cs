using System;
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
        MySqlConnection connection;
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
            connection = new MySqlConnection(ConnectionString);
            MySqlCommand chbx1_insert = new MySqlCommand();
            chbx1_insert.CommandType = System.Data.CommandType.Text;
            chbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + "'" + DateTime.Now + "'" + ", 1, 'udało się wstawić wartość')";
            chbx1_insert.Connection = connection;

            connection.Open();
            chbx1_insert.ExecuteNonQuery();
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