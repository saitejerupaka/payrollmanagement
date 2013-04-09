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
        UsingSqlConnection(connectionString);
        }

    private void UsingSqlConnection(string connectionString)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            UsingSqlCommand(connection);
            connection.Close();
        }
    }

    private void UsingSqlCommand(SqlConnection connection)
    {
        using (SqlCommand command = new SqlCommand())
        {
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_ValidateUser";
            command.Connection = connection;
            command.Parameters.AddWithValue("@username", UserNametxt.Text);
            command.Parameters.AddWithValue("@password", Passwordtxt.Text);
            command.ExecuteNonQuery();

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            VerifyingLoginDetails(dataset);
            connection.Close();
        }
    }

    private void VerifyingLoginDetails(DataSet dataset)
    {
        if( (0 < dataset.Tables[0].Rows.Count) &&  (dataset!=null) )
        {
                LoginMessagelbl.Text = "Login Success";
                Session["username"] = UserNametxt.Text;
                Session["firstname"] = dataset.Tables[0].Rows[0]["FirstName"].ToString();
                Response.Redirect("WelcomePage.aspx");
        }
        else
        {
              LoginMessagelbl.Text = "Invalid User name or Password";
        }
       
    }
    }
