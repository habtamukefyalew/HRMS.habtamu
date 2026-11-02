
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public partial class EmployeeLoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        Response.BufferOutput = true;
        SqlCommand cmd = new SqlCommand("CheckUser", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter p1 = new SqlParameter("username", txtUserName.Text);
        SqlParameter p2 = new SqlParameter("password", txtPwd.Text);
        cmd.Parameters.Add(p1);
        cmd.Parameters.Add(p2);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Response.Redirect("Employee.aspx");
        }
        else
        {
           lblMsg.Text = "Invalid username or password.";
        }

        //{
        //    Session["username"] = rd["UserName"];
        //    Session.Timeout = 1;
        //   Response.Redirect("Employee.aspx");
        //}
        //else
        //{
        //    Session["username"] = "";
        //}
    }
}





//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;
//using System.Data;


//public partial class Default2 : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }
//    protected void btnLogin_Click(object sender, EventArgs e)
//    {
//        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
//        SqlConnection con = new SqlConnection(connectionString);

//        SqlCommand cmd = new SqlCommand("CheckUser", con);
//        cmd.CommandType = CommandType.StoredProcedure;
//        SqlParameter p1 = new SqlParameter("username", txtUserName.Text);
//        SqlParameter p2 = new SqlParameter("password", txtPwd.Text);
//        cmd.Parameters.Add(p1);
//        cmd.Parameters.Add(p2);
//        con.Open();
//        SqlDataReader rd = cmd.ExecuteReader();
//        if (rd.HasRows)
//        {
//            Response.Redirect("Employee.aspx");
//            //Session["UserName"] = rd["UserName"];
//            //rd.Read();
//          //  lblMsg.Text = "Login successful.";
          
//          //  con.Close(); 
//        }

//        else
//        {
//            lblMsg.Text = "Invalid username or password.";

//        }
//    }

//}
    


        
        //Create SQL connection
        //SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters

        //SqlCommand cmd = new SqlCommand("select * from Users where UserName =@username and Password=@password", con);
        //cmd.Connection = con;
        //cmd.CommandType = CommandType.Text;
        //SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        //userName.Value = txtUserName.Text.ToString();
        //cmd.Parameters.Add(userName);
        //SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        //pwd.Value = txtPwd.Text.ToString();
        //cmd.Parameters.Add(pwd);

        //cmd.CommandText = selectSql;

        //try
       // {
           // con.Open();
            //cmd.ExecuteNonQuery();
            //lblMsg.Text = "Employee Login successful";
            //ClearControls(Page);
        //}
        //catch (SqlException ex)
        //{
            //string errorMessage = "Invalid User Name or Password";
            //errorMessage += ex.Message;
            //throw new Exception(errorMessage);

        //}
        //finally
        //{
         //   con.Close();
        //}
    //}

    //public static void ClearControls(Control Parent)
    //{
        //foreach (Control c in Parent.Controls)
          //  ClearControls(c);
   // }
//}
