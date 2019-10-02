using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Configuration;
using System.Data;

using System.Data.SqlClient;

namespace HRManagement.Pages
{
    public partial class AddDepartment : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



       

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if ( cbAgree.Checked)
            {
                con.Open();

                string qry = " INSERT INTO Departments (DeptName,DeptType,DeptDesc) VALUES (@deptname,@deptype,@depdesc)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@deptname", txtDeprtName.Text);
                cmd.Parameters.AddWithValue("@deptype", txtDeptype.Text);
                cmd.Parameters.AddWithValue("@depdesc", txtDepDescription.Text);


                cmd.ExecuteNonQuery();

                lblMessage.Text = ("Record saved successfully!!!");

                //Clear Text Box After Data Inserted 
                txtDepDescription.Text = "";
                txtDeprtName.Text = "";
                txtDeptype.Text = "";


                con.Close();
                
            }

            else
            {
                lblMessage.Text = ("something Wrong");

            }
        }
    }
}