using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
//using System.Data;

using System.Data.SqlClient;

namespace HRManagement.Pages
{
    public partial class AddDesignation1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillgrid();
        }

        void fillgrid()
        {
            SqlConnection con = new SqlConnection(cs);


            string qry = "SELECT * FROM HrDesignation";
            SqlCommand cmd = new SqlCommand(qry, con);

            con.Open();
            GVDesignation.DataSource = cmd.ExecuteReader();
            GVDesignation.DataBind();
            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if (txtDesignation.Text != "")
            {
                con.Open();

                string qry = " INSERT INTO HrDesignation (DegName) VALUES (@degname)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@degname", txtDesignation.Text);
                cmd.ExecuteNonQuery();

                lblMessage.Text = ("Record saved successfully!!!");

                //Clear Text Box After Data Inserted 
                txtDesignation.Text = "";

                con.Close();
                fillgrid();
            }

            else
            {
                lblMessage.Text = ("something Wrong");

            }
        }
    }
}