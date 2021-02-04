using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormTuto
{
    public partial class Demo : System.Web.UI.Page
    {
        public object date;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.date = DateTime.Now;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write(txtName.Text + "</br>");

            Response.Write(lstLocation.SelectedItem.Text + "</br>");

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