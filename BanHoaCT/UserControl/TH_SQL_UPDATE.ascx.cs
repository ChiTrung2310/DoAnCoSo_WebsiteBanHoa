using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UserControl_TH_SQL_UPDATE : System.Web.UI.UserControl
{
    SqlConnection conn = new SqlConnection("Data Source = LAPTOP - G0I3AISP; Initial Catalog = QL_BANHOA_CT; Integrated Security = True");


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    void ExecuteSQL(string query, string [] parameter, object[] values)
    {
        try
        {
            conn.Open();
            var cmd = new SqlCommand(query, conn);
            if (parameter != null)
                for (var i = 0; i < parameter.Length; i++)
                    cmd.Parameters.AddWithValue(parameter[i], values[i]);
            cmd.ExecuteNonQuery();

        }catch (Exception)
        {
            Response.Write("<script>alert('Kết nối SQL thất bại!!!')</script>");
        }
        finally
        {
            conn.Close();
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnThem_Click(object sender, EventArgs e)
    {
        //string strConnection = "Data Source = LAPTOP - G0I3AISP; Initial Catalog = QL_BANHOA_CT; Integrated Security = True";
        //SqlConnection connection = new SqlConnection(strConnection);

        //try
        //{
        //    connection.Open();
        //    string sql = "SET IDENTITY_INSERT HOA ON insert into HOA (Ms, Ten_hoa, Don_gia, Don_vi_tinh, Mo_ta, Hinh_minh_hoa, Mcd, Ngay_cap_nhat, So_luong_ban, So_lan_xem) values (@ms, @tenhoa, @dongia, @donvitinh, @mota, @hinhminhhoa, @mcd, @ngaycapnhat, @soluongban, @soluongxem)";
        //    SqlCommand command = new SqlCommand(sql, connection);

        //    //---
        //    command.Parameters.AddWithValue("@ms", txtMaHoa.Text);
        //    command.Parameters.AddWithValue("@tenhoa", txtTenHoa.Text);
        //    command.Parameters.AddWithValue("@dongia", txtDonGia.Text);
        //    command.Parameters.AddWithValue("@donvitinh", txtDonViTinh.Text);
        //    command.Parameters.AddWithValue("@mota", txtMoTa.Text);
        //    command.Parameters.AddWithValue("@hinhminhhoa", txtHinhDD.Text);
        //    command.Parameters.AddWithValue("@mcd", txtMaCD.Text);
        //    command.Parameters.AddWithValue("@ngaycapnhat", txtNgayNhap.Text);
        //    command.Parameters.AddWithValue("@soluongban", txtSoLuongBan.Text);
        //    command.Parameters.AddWithValue("@soluongxem", txtSoLanXem.Text);


        //    int kq = command.ExecuteNonQuery();

        //    if (kq > 0)
        //    {
        //        Response.Write("<script>alert('Thêm thành công')</script>");
        //    }
        //    else
        //        Response.Write("<script>alert('Thêm thất bại')</script>");
        //}
        //catch (Exception)
        //{
        //    Response.Write("<script>alert('Lỗi kết nối hệ thống!!!')</script>");
        //}
        //finally
        //{
        //    connection.Close();
        //}

        var query = "insert into HOA (Ms, Ten_hoa) values (@ms, @tenhoa)";
        string[] parameter = { "ms","tenhoa" };
        object[] values = { txtMaHoa.Text, txtTenHoa.Text };
        ExecuteSQL(query, parameter, values); 


    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnXoa_Click(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSua_Click(object sender, EventArgs e)
    {

    }
}