using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using MySql.Data.MySqlClient;

namespace gbwebapp
{
    public partial class checkbox_manipulacje : System.Web.UI.Page
    {
        MySqlConnection connection;
        string ConnectionString = gbwebapp.Properties.Settings.Default.ConnectionString;
        string checkbox1_insert = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + DateTime.Now + ", 1, 'udało się wstawić wartość')";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //protected void chbx1_CheckedChanged(object sender, EventArgs e)
        //{

        //    MySqlCommand cbx1_insert = new MySqlCommand();
        //    cbx1_insert.CommandType = System.Data.CommandType.Text;
        //    cbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + DateTime.Now + ", 1, 'udało się wstawić wartość')";
        //    cbx1_insert.Connection = connection;

        //    connection.Open();
        //    cbx1_insert.ExecuteNonQuery();
        //    connection.Close();
        //}



        protected void chbx1_Checked(object sender, EventArgs e)
        {
            connection = new MySqlConnection(ConnectionString);
            MySqlCommand cbx1_insert = new MySqlCommand();
            cbx1_insert.CommandType = System.Data.CommandType.Text;
            cbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + DateTime.Now + ", 1, 'udało się wstawić wartość')";
            cbx1_insert.Connection = connection;

            connection.Open();
            cbx1_insert.ExecuteNonQuery();
            connection.Close();
            Label1.Text = "G1"; 
        }

        protected void chbx2_CheckedChanged(object sender, EventArgs e)
        {
            if (chbx1.Checked == true)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx2_insert = new MySqlCommand();
                cbx2_insert.CommandType = System.Data.CommandType.Text;
                cbx2_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + DateTime.Now + ", 1, 'udało się wstawić wartość')";
                cbx2_insert.Connection = connection;

                connection.Open();
                cbx2_insert.ExecuteNonQuery();
                connection.Close();
                Label2.Text = "G2";
            }
            else
                Label2.Text = "Wykonano ELSE dla chbox2";    
        }

        protected void chbx3_CheckedChanged(object sender, EventArgs e)
        {
            Label3.Text = "G3";
        }
    }
}