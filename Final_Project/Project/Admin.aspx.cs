using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        //string dropdown = DropDownList1.SelectedItem.ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Admin_login where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read())
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or Password');</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Error in Click');</script>");
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}