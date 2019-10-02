using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




using System.Data.SqlClient;
using System.Configuration;


using System.Drawing;
using System.IO;
using System.Drawing.Imaging;
using System.Data;


namespace HRManagement.Pages
{
    public partial class AddEmployee : System.Web.UI.Page
    {


        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        //We can use gobal if We haven't same type selection.

        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dtDepart = new DataTable();

        //string imageLocation = "";

        int active;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillDepartCombo();
                fillDesCombo();
            }
        }




        private void fillDepartCombo()
        {

            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string showQry = "SELECT DeptID, DeptName FROM Departments";

            SqlDataAdapter da = new SqlDataAdapter(showQry, con);
            DataTable ds = new DataTable();

            da.Fill(ds);
            comboBoxDept.DataSource = ds;
            comboBoxDept.DataTextField = "DeptName";
            comboBoxDept.DataValueField = "DeptID";
            comboBoxDept.DataBind();

            con.Close();
        }


        private void fillDesCombo()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string showQry = "SELECT DegID, DegName FROM HrDesignation";

            SqlDataAdapter da = new SqlDataAdapter(showQry, con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            comboBoxDes.DataSource = ds;
            comboBoxDes.DataTextField = "DegName";
            comboBoxDes.DataValueField = "DegID";
            comboBoxDes.DataBind();
            con.Close();

        }

        private void loadData()
        {
            //Data Load 
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            string showQry = "SELECT*FROM SGHR.Employees";
            cmd = new SqlCommand(showQry, con);
            dtDepart = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtDepart);
            FVEmployee.DataSource = dtDepart.DefaultView;
            FVEmployee.DataBind();
            con.Close();
        }




        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if (checkboxYes.Checked || checkboxNo.Checked)
            {
                con.Open();
                string qry = "sp_AllCRUDEmployee";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empid", SqlDbType.Int);
                cmd.Parameters.AddWithValue("@empfirstname", SqlDbType.VarChar).Value = txtEmpFirstName.Text;
                cmd.Parameters.AddWithValue("@emplastname", SqlDbType.VarChar).Value = txtEmpLastName.Text;
                cmd.Parameters.AddWithValue("@gender", SqlDbType.VarChar).Value = comboBoxGender.Text;
                cmd.Parameters.AddWithValue("@maritalstatus", SqlDbType.VarChar).Value = comboBoxMarital.Text;
                cmd.Parameters.AddWithValue("@cellphone", SqlDbType.VarChar).Value = txtEmpPhone.Text;
                cmd.Parameters.AddWithValue("@dob", SqlDbType.Date).Value = Convert.ToDateTime(txtDOB.Text);
                cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = txtEmpEmail.Text;
                cmd.Parameters.AddWithValue("@bloodgroup", SqlDbType.VarChar).Value = CombEmpBloodGroup.Text;

                cmd.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = txtEmpAddress.Text;
                cmd.Parameters.AddWithValue("@joiningdate", SqlDbType.Date).Value = Convert.ToDateTime(txtEmpJoinDate.Text);
                cmd.Parameters.AddWithValue("@terminationdate", SqlDbType.Date).Value = Convert.ToDateTime(txtEmpTerDate.Text);


                //byte[] images = null;
                //FileStream stream = new FileStream(imageLocation, FileMode.Open, FileAccess.Read);
                //BinaryReader brs = new BinaryReader(stream);
                //images = brs.ReadBytes((int)stream.Length);

                if (picUpload.HasFile)
                {
                    string fileExt = Path.GetExtension(picUpload.FileName);
                    if (fileExt.ToLower() != ".png" && fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".jpeg")
                    {
                        lblMess.Text = "Only files with .jpg , .jpeg and .png extension are allowed";
                    }
                    else
                    {
                        int filesize = picUpload.PostedFile.ContentLength;
                        if (filesize > 2097152)
                        {
                            lblMess.Text = "File size cannot be greater than 2 MB";
                        }
                        else
                        {
                            picUpload.SaveAs(Server.MapPath("~/Images/" + picUpload.FileName));
                        }
                    }
                }


                cmd.Parameters.AddWithValue("@emimage", picUpload.FileName.ToString());



                cmd.Parameters.AddWithValue("@deptid", SqlDbType.Int).Value = comboBoxDept.SelectedValue.ToString();

                cmd.Parameters.AddWithValue("@designationid", SqlDbType.Int).Value = comboBoxDes.SelectedValue.ToString();

                cmd.Parameters.AddWithValue("@isactive", SqlDbType.Bit).Value = (Convert.ToInt32(active));


                cmd.Parameters.AddWithValue("@operation", SqlDbType.VarChar).Value = "INSERT";


                cmd.ExecuteNonQuery();
                lblMess.Text = ("Record saved successfully!!!");

                txtEmpAddress.Text = "";
                CombEmpBloodGroup.Text = "";
                txtEmpEmail.Text = "";
                txtEmpFirstName.Text = "";
                txtEmpLastName.Text = "";
                txtEmpPhone.Text = "";

                con.Close();

                //Data Load 
                con.Open();
                string showQry = "SELECT*FROM SGHR.Employees";
                cmd = new SqlCommand(showQry, con);
                dtDepart = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dtDepart);
                FVEmployee.DataSource = dtDepart.DefaultView;
                FVEmployee.DataBind();
                con.Close();
            }
            else
            {
                lblMess.Text = "Something Wrong";
            }
        }

        protected void checkboxYes_CheckedChanged(object sender, EventArgs e)
        {
            active = 1;
        }

        protected void checkboxNo_CheckedChanged(object sender, EventArgs e)
        {
            active = 2;
        }

        
    }
}