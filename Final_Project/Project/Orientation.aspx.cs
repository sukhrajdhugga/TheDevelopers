using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Orientation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        try
        {
            con.Open();
            SqlCommand cmd=new SqlCommand("Insert into employee_details values('"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox1.Text+"','"+TextBox8.Text+"','"+TextBox7.Text+"','"+TextBox9.Text+"')",con );
            cmd.CommandType=CommandType.Text;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Inserted');</script>");
            Response.Redirect("Default.aspx");
        }
        catch(Exception)
        {
            Response.Write("<script>alert('Error in Inserting');</script>");
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        //TextBox3.Text = "";
        //TextBox7.Text = "";
        //TextBox8.Text = "";
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table Employee_login", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Inserted');</script>");
            Response.Redirect("Default.aspx");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Error in Inserting');</script>");
        }
        finally
        {
            con.Close();
        }
    }
}