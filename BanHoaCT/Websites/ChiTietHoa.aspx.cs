using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Websites_ChiTietHoa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtMs.Focus();

    }

    private void LamLai()
    {
        txtMs.Text = "";
        txtTenHoa.Text = "";
        txtDonGia.Text = "";
        txtDonViTinh.Text = "";
        txtMoTa.Text = "";
        txtHinhMinhHoa.Text = "";
        txtMaCD.Text = "";
        txtNgayCapNhat.Text = "";
        txtSLB.Text = "";
        txtSLX.Text = "";
    }

    /// <summary>
    /// Thêm data mới vào bảng HOA -- chỉ dành cho admin
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnThem_Click(object sender, EventArgs e)
    {
        string ms = txtMs.Text;
        string tenhoa = txtTenHoa.Text;
        string dongia = txtDonGia.Text;
        string dvt = txtDonViTinh.Text;
        string mota = txtMoTa.Text;
        string hinhdd = txtHinhMinhHoa.Text;
        string mcd = txtMaCD.Text;
        string ngaycn = txtNgayCapNhat.Text;
        string slban = txtSLB.Text;
        string slxem = txtSLX.Text;

        if (txtMs.Text != "" && txtTenHoa.Text != "")
        {
            string strSQL = "SET IDENTITY_INSERT HOA ON insert into HOA (Ms, Ten_hoa, Don_gia, Don_vi_tinh, Mo_Ta, Hinh_minh_hoa, Mcd, Ngay_cap_nhat, So_luong_ban, So_lan_xem) values ('" + ms + "',N'" + tenhoa + "','" + dongia + "', N'" + dvt + "', N'" + mota + "', '" + hinhdd + "', '" + mcd + "', '" + ngaycn + "', '" + slban + "', '" + slxem + "')";
            RunData runSQL = new RunData();
            runSQL.Execute(strSQL);
            Response.Write("<script>alert('Thêm thành công')</script>");
            LamLai();
        }
        else
            Response.Write("<script>alert('Dữ liệu rỗng kìa Admin ơi !!!')</script>");
    }
  

    protected void btnThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyAdmin.aspx"); //---Đưa Admin về lại trang xem dữ liệu đã thêm
    }

}