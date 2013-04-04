using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Payroll"].ConnectionString;
        using(SqlConnection connection=new SqlConnection(connectionString))
        {
           connection.Open();

           using(SqlCommand command=new SqlCommand("select UserName, Pswd from tbl_EmployeeDetail",connection))
           {
               Session["FirstName"] = UserNametxt.Text;
               SqlDataAdapter adapter = new SqlDataAdapter(command);
               DataSet dataset = new DataSet();
               adapter.Fill(dataset, "tbl_EmployeeDetail");
                   for (int i = 0; i < dataset.Tables["tbl_EmployeeDetail"].Rows.Count; i++)
                   {
                       if (UserNametxt.Text == dataset.Tables["tbl_EmployeeDetail"].Rows[i]["UserName"].ToString() &
                           Passwordtxt.Text == dataset.Tables["tbl_EmployeeDetail"].Rows[i]["Pswd"].ToString())
                       {
                           LoginMessagelbl.Text = "Login Success";
                           break;
                       }
                       else
                       {
                           LoginMessagelbl.Text = "Login Failed";
                       }
                   }
                   connection.Close();
                   Response.Redirect("WelcomePage.aspx");
               }                   
                                       
           }
        }
    }
