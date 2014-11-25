using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
            SqlConnection con = new SqlConnection(a);
            try
            {
                con.Open();

                //DropDownList1.Items.Clear();
                SqlDataAdapter da = new SqlDataAdapter("Select * from employee_details", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataTextField = ds.Tables[0].Columns["First_Name"].ToString();
                DropDownList1.DataValueField = ds.Tables[0].Columns["id"].ToString();

                DropDownList1.DataSource = ds.Tables[0];
                DropDownList1.DataBind();

                DropDownList3.DataTextField = ds.Tables[0].Columns["Last_Name"].ToString();
                DropDownList3.DataValueField = ds.Tables[0].Columns["id"].ToString();

                DropDownList3.DataSource = ds.Tables[0];
                DropDownList3.DataBind();
                
                SqlDataAdapter da2 = new SqlDataAdapter("Select * from Contractors", con);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2);
                DropDownList2.DataTextField = ds2.Tables[0].Columns["First_Name"].ToString();
                DropDownList2.DataValueField = ds2.Tables[0].Columns["Id"].ToString();

                DropDownList2.DataSource = ds2.Tables[0];
                DropDownList2.DataBind();

                DropDownList4.DataTextField = ds2.Tables[0].Columns["Last_Name"].ToString();
                DropDownList4.DataValueField = ds2.Tables[0].Columns["Id"].ToString();

                DropDownList4.DataSource = ds2.Tables[0];
                DropDownList4.DataBind();
                //DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
                SqlDataAdapter da1 = new SqlDataAdapter("Select * from Employee_login", con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "Employee_login");
                GridView1.DataSource = ds1.Tables["Employee_login"];
                GridView1.DataBind();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error in Connection');</script>");
            }
            finally
            {
                con.Close();
            }
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Orientation.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
            SqlConnection con = new SqlConnection(a);
            //string dropdown = DropDownList1.SelectedItem.ToString();
            try
            {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from employee_details where First_Name='" + DropDownList1.SelectedItem.ToString() + "' and Last_Name='" + DropDownList3.SelectedItem.ToString() + "'", con);
            //Response.Write(DropDownList1.SelectedItem.ToString());
            int fname = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(fname);
            //if(fname!=null)
            
            if (fname>0)
            {
                SqlCommand cmda = new SqlCommand("Insert into Employee_login(Firstname,Lastname,date,SignInTime) values(@a,@b,@c,@d)", con);
                cmda.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.ToString());
                cmda.Parameters.AddWithValue("@b", DropDownList3.SelectedItem.ToString());
                cmda.Parameters.AddWithValue("@c", DateTime.Now.ToString("yyyy-MM-dd"));
                cmda.Parameters.AddWithValue("@d", DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt"));
                cmda.ExecuteNonQuery();
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        //string cd=DateTime.Now.ToString("hh:mm:ss");
        string dropdown = DropDownList1.SelectedItem.ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from employee_details where First_Name='" + dropdown + "' and Last_Name='" + DropDownList3.SelectedItem.ToString() + "'", con);
            int b = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(b);
        if(b>0)
            {
                SqlCommand cmda = new SqlCommand("update Employee_login set SignOutTime ='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt") + "' where Firstname= '" + dropdown + "'", con);
            cmda.ExecuteNonQuery();
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            SendMail();

        }
        catch (Exception) { }
    }
    protected void SendMail()
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Employee_login", con);
        SqlDataReader dr = cmd.ExecuteReader();
        
        var fromAddress = "id@gmail.com";// Gmail Address from where you send the mail
        var toAddress = "id@gmail.com";
        const string fromPassword = "password";//Password of your gmail address
        string subject = "Attendance";
        while(dr.Read())
        {
            //int id = dr.GetInt32(0);
            string Firstname = dr.GetString(1);
            string Lastname = dr.GetString(2);
            DateTime date1 = dr.GetDateTime(3);
            DateTime Signin1 = dr.GetDateTime(4);
            DateTime Signout1 = dr.GetDateTime(5);
            string date = date1.ToString();
            string Signin = Signin1.ToString();
            string Signout = Signout1.ToString();

            string body="First name: " + Firstname+ "\n";
            body += "Last name: " + Lastname + "\n";
            body += "Date: " + date + "\n";
            body += "SignInTime: " + Signin + "\n";
            body += "SignOutTime: \n" + Signout + "\n";
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, subject, body);
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Details.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddContractors.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        //string dropdown = DropDownList1.SelectedItem.ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Contractors where First_Name='" + DropDownList2.SelectedItem.ToString() + "' and Last_Name='" + DropDownList4.SelectedItem.ToString() + "'", con);
            //Response.Write(DropDownList1.SelectedItem.ToString());
            int fname = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(fname);
            //if(fname!=null)

            if (fname > 0)
            {
                SqlCommand cmda = new SqlCommand("Insert into Contractor_login(Firstname,Lastname,date,SignInTime) values(@a,@b,@c,@d)", con);
                cmda.Parameters.AddWithValue("@a", DropDownList2.SelectedItem.ToString());
                cmda.Parameters.AddWithValue("@b", DropDownList4.SelectedItem.ToString());
                cmda.Parameters.AddWithValue("@c", DateTime.Now.ToString("yyyy-MM-dd"));
                cmda.Parameters.AddWithValue("@d", DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt"));
                cmda.ExecuteNonQuery();
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
    protected void Button7_Click(object sender, EventArgs e)
    {
        string a = ConfigurationManager.ConnectionStrings["office_project"].ConnectionString;
        SqlConnection con = new SqlConnection(a);
        //string cd=DateTime.Now.ToString("hh:mm:ss");
        string dropdown = DropDownList2.SelectedItem.ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Contractors where First_Name='" + dropdown + "' and Last_Name='" + DropDownList4.SelectedItem.ToString() + "'", con);
            int b = Convert.ToInt32(cmd.ExecuteScalar());
            //Response.Write(b);
            if (b > 0)
            {
                SqlCommand cmda = new SqlCommand("update Contractor_login set SignOutTime ='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss tt") + "' where Firstname= '" + dropdown + "'", con);
                cmda.ExecuteNonQuery();
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
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contractor_time.aspx");
    }
}