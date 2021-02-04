using System;
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
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Killi\source\repos\WebFormTuto\WebFormTuto\App_Data\Database1.mdf;Integrated Security=True";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("Connection MAde");
            cnn.Close();

            this.date = DateTime.Now;
            Response.Write(Session["Name"]);

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            

            //Response.Write(txtName.Text + "</br>");

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