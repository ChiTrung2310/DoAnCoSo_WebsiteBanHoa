using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class UserControl_TH_LOGIN_ADMIN : System.Web.UI.UserControl
{
    SqlConnection connection = null;
    string str = @" Server = LAPTOP-G0I3AISP; Database = QL_BANHOA_CT ; Integrated Security = SSPI ";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Mở kết nối 
    /// </summary>
    public void OpenConnection()
    {
        if (connection == null)
            connection = new SqlConnection(str);

        if (connection.State == ConnectionState.Closed)
            connection.Open();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //string taiKhoan = this.txtAccount.Text.Trim();
        //string matKhau = this.txtPassword.Text.Trim();
        DataTable tb = XL_DuLieu.Doc_bang("select * from QUAN_TRI where Ten_dang_nhap ='" + txtAccount.Text + "' and Mat_khau='" + txtPassword.Text + "'");

        if (tb.Rows.Count > 0)
        {
            //Session["ma"] = tb.Rows[0]["Mkh"].ToString();
            //Session["hoten"] = tb.Rows[0]["Ho_ten"].ToString();
            //Session["tendn"] = tb.Rows[0]["Ten_dang_nhap"].ToString();
            //Session["email"] = tb.Rows[0]["Email"].ToString();

            Response.Write("<script>alert('Đăng nhập thành công')</script>");
            Response.Redirect("QuanLyAdmin.aspx");
        }

        else
            Response.Write("<script>alert('Thông tin đăng nhập sai')</script>");

        //--Ngăn chặn lỗi SQL Injection-- chưa thành công
        //string str = @" Server = LAPTOP-G0I3AISP; Database = QL_BANHOA_CT ; Integrated Security = SSPI ";
        //SqlConnection con = new SqlConnection(str);
        //con.Open();

        //OpenConnection();
        //string sql = @"select * from QUAN_TRI where Ten_dang_nhap = @tk and Mat_khau = @mk ";
        //SqlCommand command = new SqlCommand(sql, connection);

        //command.Parameters.AddWithValue("@tk", txtAccount.Text.Trim());
        //command.Parameters.AddWithValue("@mk", txtPassword.Text.Trim());



        //int kq = command.ExecuteNonQuery();

        //if (kq > 0)
        //{
        //    Response.Write("<script>alert('Đăng nhập thành công')</script>");
        //    Response.Redirect("QuanLyAdmin.aspx");
        //}

        //else
        //{
        //    Response.Write("<script>alert('Thông tin đăng nhập sai')</script>");
        //}

    }


    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); //---Quay về trang chủ
    }
}