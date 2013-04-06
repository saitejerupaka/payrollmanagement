using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WelcomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)(Session["username"]);
        string firstname = (string)(Session["firstname"]);
        GuestNamelbl.Text = firstname;
        UserProfileFromDatabase(username);
       
    }

    protected void UserProfileFromDatabase(string username)
    {
        string currentuser = username;
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Payroll"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand command = new SqlCommand("select FirstName,LastName,PhoneNumber,EmailId,Address,DOB,JoinDate from tbl_EmployeeDetail where UserName='" + currentuser + "'", connection))
            {
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet dataset = new DataSet();
                adapter.Fill(dataset, "tbl_EmployeeDetail");
                for (int i = 1, column = 0; column < 7;column++,i++)
                {
                    Profiletbl.Rows[i].Cells[1].InnerHtml = dataset.Tables["tbl_EmployeeDetail"].Rows[0][column].ToString();
                }
            }
            connection.Close();
  
        }

    }
}