﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class EmployeeRegisteration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.FirstNametxt.Focus();
    }
    protected void Registerbtn_Click(object sender, EventArgs e)
    {
        String connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Payroll"].ConnectionString;
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand())
            {
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "usp_RegisterUser";
                command.Parameters.AddWithValue("@FirstName", FirstNametxt.Text);
                command.Parameters.AddWithValue("@LastName", LastNametxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", PhoneNumbertxt.Text);
                command.Parameters.AddWithValue("@EmailId", EmailIdtxt.Text);
                command.Parameters.AddWithValue("@UserName", UserNametxt.Text);
                command.Parameters.AddWithValue("@Password", Passwordtxt.Text);
                command.Parameters.AddWithValue("@Address", Addresstxt.Text);
                command.Parameters.AddWithValue("@DOB", DateOfBirthtxt.Text);
                command.Parameters.AddWithValue("@joinDate", JoiningDatetxt.Text);
                int numberofrowsaffected = command.ExecuteNonQuery();
                if (numberofrowsaffected > 0)
                {
                    errorlbl.Visible = true;
                    errorlbl.Text = " successfully registered";
                }
                else
                {
                    errorlbl.Visible = true;
                    errorlbl.Text = " not registered";
                }

            }
            connection.Close();
        }
    }
}