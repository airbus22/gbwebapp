﻿using System;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void chbx1_CheckedChanged(object sender, EventArgs e)
        {
            if (chbx1.Checked == true)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx1_insert = new MySqlCommand();
                cbx1_insert.CommandType = System.Data.CommandType.Text;
                cbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony', 'chbx1', " + "'" + DateTime.Now + "'" + ", 1, 'stan zapisany')";
                cbx1_insert.Connection = connection;

                connection.Open();
                cbx1_insert.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx1_insert = new MySqlCommand();
                cbx1_insert.CommandType = System.Data.CommandType.Text;
                cbx1_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony', 'chbx1', " + "'" + DateTime.Now + "'" + ", 0, 'stan zapisany')";
                cbx1_insert.Connection = connection;

                connection.Open();
                cbx1_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void chbx2_CheckedChanged(object sender, EventArgs e)
        {
            if (chbx1.Checked == true)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx2_insert = new MySqlCommand();
                cbx2_insert.CommandType = System.Data.CommandType.Text;
                cbx2_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony', 'chbx2', " + "'" + DateTime.Now + "'" + ", 1, 'stan zapisany')";
                cbx2_insert.Connection = connection;

                connection.Open();
                cbx2_insert.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx2_insert = new MySqlCommand();
                cbx2_insert.CommandType = System.Data.CommandType.Text;
                cbx2_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony', 'chbx2', " + "'" + DateTime.Now + "'" + ", 0, 'stan zapisany')";
                cbx2_insert.Connection = connection;

                connection.Open();
                cbx2_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void chbx3_CheckedChanged(object sender, EventArgs e)
        {
            if (chbx1.Checked == true)
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx3_insert = new MySqlCommand();
                cbx3_insert.CommandType = System.Data.CommandType.Text;
                cbx3_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('zaznaczony', 'chbx3', " + "'" + DateTime.Now + "'" + ", 1, 'stan zapisany')";
                cbx3_insert.Connection = connection;

                connection.Open();
                cbx3_insert.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                connection = new MySqlConnection(ConnectionString);
                MySqlCommand cbx3_insert = new MySqlCommand();
                cbx3_insert.CommandType = System.Data.CommandType.Text;
                cbx3_insert.CommandText = "INSERT INTO web_test_skasowac.stany_checkboxow(stany_checkboxa, nazwa_checkboxa, znacznik_czasowy, stany_checkboxa_bool, uwagi) VALUES ('odznaczony', 'chbx3', " + "'" + DateTime.Now + "'" + ", 0, 'stan zapisany')";
                cbx3_insert.Connection = connection;

                connection.Open();
                cbx3_insert.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection = new MySqlConnection(ConnectionString);
            MySqlCommand btn1_delete = new MySqlCommand();
            btn1_delete.CommandType = System.Data.CommandType.Text;
            btn1_delete.CommandText = "DELETE FROM web_test_skasowac.stany_checkboxow WHERE id >= 1";
            btn1_delete.Connection = connection;

            connection.Open();
            btn1_delete.ExecuteNonQuery();
            connection.Close();
        }
    }
}