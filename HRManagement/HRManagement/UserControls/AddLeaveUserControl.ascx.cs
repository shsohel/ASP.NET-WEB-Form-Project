using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
//using System.Data;

using System.Data.SqlClient;


namespace HRManagement.UserControls
{
    public partial class AddLeaveUserControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if (cbAgree.Checked)
            {
                con.Open();

                string qry = " INSERT INTO EmLeaveType (LeaveType, LeaveDescription) VALUES (@leavetype,@leavedes)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@leavetype", txtLeaveType.Text);
                cmd.Parameters.AddWithValue("@leavedes", txtLeaveDes.Text);

                cmd.ExecuteNonQuery();

                lblMessage.Text = ("Record saved successfully!!!");

                //Clear Text Box After Data Inserted 
                txtLeaveDes.Text = "";
                txtLeaveType.Text = "";


                con.Close();
        
            }

            else
            {
                lblMessage.Text = ("something Wrong");

            }
        }
    }
}