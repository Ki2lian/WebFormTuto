﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebFormTuto
{
    public partial class Demo : System.Web.UI.Page
    {
        public object date;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;
            connetionString = @"Server=localhost\SQLEXPRESS;Trusted_Connection=True;Database=school ;User ID=user1;Password=123456789";

            cnn = new SqlConnection(connetionString);

            cnn.Open();
            Response.Write("Connexion réussie");
            cnn.Close();

            /*
            string connetionString;
            SqlConnection cnn;
            connetionString = @"Server=localhost\SQLEXPRESS;Trusted_Connection=True;Database=school ;User ID=user1;Password=123456789";
            //connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Killi\source\repos\WebFormTuto\WebFormTuto\App_Data\Database1.mdf;Integrated Security=True";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select nom,prenom from compte";

            command = new SqlCommand(sql, cnn);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + " " + dataReader.GetValue(1) + "</br>";
            }*/

            //Response.Write(Output);
            //dataReader.Close();

            //SqlDataAdapter adapter = new SqlDataAdapter();
            /* Insertion / Update */
            //sql = "Insert into compte(nom, prenom) values('Martin', 'Pierre')";
            //sql = "Update compte set nom='Martin' where nom='Correc'";
            //adapter.InsertCommand = new SqlCommand(sql, cnn);
            //adapter.InsertCommand.ExecuteNonQuery();

            /* Pour supprimer un élément d'une table */
            //sql = "Delete compte where Id=3";
            //adapter.DeleteCommand = new SqlCommand(sql,cnn); 
            //adapter.DeleteCommand.ExecuteNonQuery();
            //command.Dispose();
            //cnn.Close();

            this.date = DateTime.Now;
            Response.Write(Session["Name"]);

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["Name"] = txtName.Text;
            

            Response.Write(txtName.Text + "</br>");

            //Response.Write(lstLocation.SelectedItem.Text + "</br>");

            lblName.Visible = false;
            txtName.Visible = false;
            lstLocation.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            rdFemme.Visible = false;
            btnSubmit.Visible = false;
        }


    }
}