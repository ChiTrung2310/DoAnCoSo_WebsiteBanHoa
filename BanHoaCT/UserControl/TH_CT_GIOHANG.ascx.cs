using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserControl_TH_CT_GIOHANG : System.Web.UI.UserControl
{
    void Hien_Thi_Gio_Hang()
    {
        if (((DataTable)Session["gio_hang"]).Rows.Count == 0)
            Response.Redirect("Default.aspx");
        gdvGioHang.DataSource = (DataTable)Session["gio_hang"];
        gdvGioHang.DataBind();

        //---Hiển thị cột số thứ tự trong giỏ hàng
        for (int i = 0; i < gdvGioHang.Rows.Count; i++)
            gdvGioHang.Rows[i].Cells[0].Text = (i + 1).ToString();

        //---Hiển thị tổng thành tiền dưới bảng
        gdvGioHang.FooterRow.Cells[4].Text = "Tổng tiền:";
        double tongsoluong = double.Parse(((DataTable)Session["gio_hang"]).Compute("sum(So_luong)", "").ToString());
        double tongtien = double.Parse(((DataTable)Session["gio_hang"]).Compute("sum(Thanh_tien)", "").ToString());
        gdvGioHang.FooterRow.Cells[5].Text = tongsoluong.ToString();
        gdvGioHang.FooterRow.Cells[6].Text = tongtien.ToString("#,### VNĐ");

        ////Nếu đã đăng nhập---Không cần đăng nhập nên bỏ dòng này. Khách hàng chỉ việc cung cấp tên, địa chỉ và số điện thoại để giao hàng thôi
        //if (Session["makh"].ToString() != "")
        //{
        //    txtHoTen.Text = Session["hoten"].ToString();
        //    txtEmail.Text = Session["email"].ToString();
        //    txtDiaChi.Text = Session["diachi"].ToString();
        //    txtPhone.Text = Session["dienthoai"].ToString();
        //}

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Hien_Thi_Gio_Hang();
    }

    protected void gdvGioHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdvGioHang.EditIndex = -1; //---Quay về trạng thái trước khi chỉnh sửa
        Hien_Thi_Gio_Hang();  //--Hiển thị lại giỏ hàng
    }

    protected void gdvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ms = int.Parse(e.Keys[0].ToString());
        DataTable Gio_hang = (DataTable)Session["gio_hang"];
        for (int i = 0; i < Gio_hang.Rows.Count; i++)
        {
            if (int.Parse(Gio_hang.Rows[i]["Ms"].ToString()) == ms)
            {
                Gio_hang.Rows.RemoveAt(i);
                Gio_hang.AcceptChanges();
                Hien_Thi_Gio_Hang();
                Session["gio_hang"] = Gio_hang;
                Response.Redirect(Request.RawUrl);
            }
        }
    }

    protected void gdvGioHang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (e.NewEditIndex >= 0)
        {
            gdvGioHang.EditIndex = e.NewEditIndex;
            Hien_Thi_Gio_Hang();
        }
    }


    protected void gdvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int ms = int.Parse(e.Keys[0].ToString());
        int soluong = 0;
        int.TryParse(((TextBox)gdvGioHang.Rows[e.RowIndex].Cells[5].Controls[0]).Text, out soluong);
        if (soluong <= 0)
        {
            Response.Write("<script>alert('Số lượng phải lớn hơn 0')</script>");
        }
        else
        {
            DataTable Gio_hang = (DataTable)Session["gio_hang"];
            for (int i = 0; i < Gio_hang.Rows.Count; i++)
            {
                if (int.Parse(Gio_hang.Rows[i]["Ms"].ToString()) == ms)
                {
                    Gio_hang.Rows[i]["So_luong"] = soluong;
                    Gio_hang.AcceptChanges();
                    Session["gio_hang"] = Gio_hang;
                    gdvGioHang.EditIndex = -1;
                    Hien_Thi_Gio_Hang();
                    Response.Redirect(Request.RawUrl);
                }
            }
        }
    }

    protected void btnMuaHang_Click(object sender, EventArgs e)
    {
        double tongtien = double.Parse(((DataTable)Session["gio_hang"]).Compute("sum(Thanh_tien)", "").ToString());
        DataTable Gio_hang = (DataTable)Session["gio_hang"];
        if (Gio_hang.Rows.Count > 0)
        {
            int Mkh = 0;
            if (Session["makh"] != "")
                Mkh = int.Parse(Session["makh"].ToString());
            string cau_lenh = "INSERT INTO DON_DAT_HANG (Mkh, Ho_ten, Dia_chi, Dien_thoai, Email, Ngay_dat_hang, Tri_gia, Da_giao_hang) values (" + Mkh.ToString() + ",N'" + txtHoTen.Text + "',N'" + txtDiaChi.Text + "','" + txtPhone.Text + "','" + txtEmail.Text + "','" + DateTime.Today.ToString("MM/dd/yyyy") + "'," + tongtien.ToString() + ",0)";
            XL_DuLieu.Thuc_hien_lenh(cau_lenh);

            DataTable bang_don_dat_hang = XL_DuLieu.Doc_bang("SELECT TOP 1 Sdh FROM DON_DAT_HANG ORDER BY Sdh DESC");
            int sdh = int.Parse(bang_don_dat_hang.Rows[0]["sdh"].ToString());

            cau_lenh = "INSERT INTO CT_DAT_HANG(Sdh,Ms, So_luong,Don_gia,Thanh_tien) VALUES";
            for (int i = 0; i < Gio_hang.Rows.Count; i++)
                cau_lenh += "(" + sdh.ToString() + "," + Gio_hang.Rows[i]["Ms"] + "," + Gio_hang.Rows[i]["So_luong"] + "," + Gio_hang.Rows[i]["Don_gia"] + "," + Gio_hang.Rows[i]["Thanh_tien"] + "),";
            cau_lenh = cau_lenh.Substring(0, cau_lenh.Length - 1);

            XL_DuLieu.Thuc_hien_lenh(cau_lenh);
            Response.Write("<script>alert('Bạn đã đặt hàng thành công, chúng tôi sẽ giao hàng trong vòng 24H')</script>");
            Session["gio_hang"] = XL_DuLieu.Tao_gio_hang();
        }
    }
}