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
        //string checkbox1_insert = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + DateTime.Now + ", 1, 'udało się wstawić wartość')";
        string netAddress, hostname;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "Adres sieciowy komputera to: " + Request.UserHostAddress;
            //Label2.Text = "Nazwa komputera to: " + Request.UserHostName;
            netAddress = Request.UserHostAddress;
            hostname = Request.UserHostName;
        }

        protected void chbx1_Checked(object sender, EventArgs e)
        {
            if (chbx1.Checked)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx1_insert = new MySqlCommand();
                chbx1_insert.CommandType = System.Data.CommandType.Text;
                chbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 1', " + "'" + DateTime.Now + "'" + ", 1, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx1_insert.Connection = connection;

                try
                {
                    connection.Open();
                    chbx1_insert.ExecuteNonQuery();
                    connection.Close();
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('Nieobsłużony wyjątek: " + ex + "')</script>");
                }
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx1_insert = new MySqlCommand();
                chbx1_insert.CommandType = System.Data.CommandType.Text;
                chbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony','CheckBox 1', " + "'" + DateTime.Now + "'" + ", 0, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx1_insert.Connection = connection;

                connection.Open();
                chbx1_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void chbx2_Checked(object sender, EventArgs e)
        {
            if (chbx2.Checked)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx2_insert = new MySqlCommand();
                chbx2_insert.CommandType = System.Data.CommandType.Text;
                chbx2_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 2', " + "'" + DateTime.Now + "'" + ", 1, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx2_insert.Connection = connection;

                connection.Open();
                chbx2_insert.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx2_insert = new MySqlCommand();
                chbx2_insert.CommandType = System.Data.CommandType.Text;
                chbx2_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony','CheckBox 2', " + "'" + DateTime.Now + "'" + ", 0, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx2_insert.Connection = connection;

                connection.Open();
                chbx2_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void chbx3_Checked(object sender, EventArgs e)
        {
            if (chbx3.Checked)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx3_insert = new MySqlCommand();
                chbx3_insert.CommandType = System.Data.CommandType.Text;
                chbx3_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony','CheckBox 3', " + "'" + DateTime.Now + "'" + ", 1, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx3_insert.Connection = connection;

                connection.Open();
                chbx3_insert.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand chbx3_insert = new MySqlCommand();
                chbx3_insert.CommandType = System.Data.CommandType.Text;
                chbx3_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony','CheckBox 3', " + "'" + DateTime.Now + "'" + ", 0, 'udało się wstawić wartość " + netAddress + " " + hostname + "')";
                chbx3_insert.Connection = connection;

                connection.Open();
                chbx3_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection = new MySqlConnection(ConnectionString);
            MySqlCommand cbx1_insert = new MySqlCommand();
            cbx1_insert.CommandType = System.Data.CommandType.Text;
            cbx1_insert.CommandText = "DELETE FROM web_test_skasowac.stany_checkboxow WHERE id>=1";
            cbx1_insert.Connection = connection;

            connection.Open();
            cbx1_insert.ExecuteNonQuery();
            connection.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rekrutacja_KSAP.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LayOutTestWebForm.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("bd_rej_KonfSemOtwarte.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogowanieAplikacji.aspx");
        }
    }
}