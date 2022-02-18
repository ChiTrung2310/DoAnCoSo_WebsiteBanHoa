using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Websites_XemHoa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Sdh = Request.QueryString["Sdh"].ToString().Trim();
        string strSQL = "select * from DON_DAT_HANG where Sdh='" + Sdh + "' ";

        RunData runSQL = new RunData();
        DataTable dt = runSQL.GetData(strSQL);

        lblSoDH.Text = Sdh;

        //-- Gán các thông tin chi tiết đơn hàng vào một trang riêng.
        lblMaKH.Text = dt.Rows[0][1].ToString();
       
        lblNgayDat.Text = dt.Rows[0][2].ToString();

        lblTriGia.Text = dt.Rows[0][3].ToString();

        lblDaGiaoHang.Text = dt.Rows[0][4].ToString();

        lblNgayGiaoHang.Text = dt.Rows[0][5].ToString();

        lblHoTen.Text = dt.Rows[0][6].ToString();

        lblDiaChi.Text = dt.Rows[0][7].ToString();

        lblDienThoai.Text = dt.Rows[0][8].ToString();

        lblEmail.Text = dt.Rows[0][9].ToString();

        lblGhiChu.Text = dt.Rows[0][10].ToString();

    }

    protected void btnThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyAdmin.aspx");
    }
}