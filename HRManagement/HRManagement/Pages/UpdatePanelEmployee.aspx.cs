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
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
                      
                DropDownListDataBind();
            
        }


        private void DropDownListDataBind()
        {       
        SqlConnection con = new SqlConnection(cs);

            con.Open();

            string qry = "SELECT EmpFirstName FROM Employees";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            ddlName.DataSource = ds;
            ddlName.DataTextField = "EmpFirstName";
            ddlName.DataBind();
            con.Close();
        }

        protected void ddlName_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataBindToDropDownlist(ddlName.SelectedValue.ToString());
        }


        private void DataBindToDropDownlist(string ENmae)
        {
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            string query = "SELECT EmpFirstName,EmpLastName, CellPhone,DOB,Email,Address, EmImage FROM Employees Where EmpFirstName='" + ENmae + "'";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            grdEmployee.DataSource = ds;
            grdEmployee.DataBind();
            con.Close();
        }

    }
}