using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserControl_DS_DONHANG : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            HienThi();
    }

    private void HienThi()
    {
        try
        {
            string cau_lenh = "SELECT * FROM DON_DAT_HANG";
            DataTable bang_hoa = XL_DuLieu.Doc_bang(cau_lenh); ;
            gdvDs_DH.DataSource = bang_hoa;
            gdvDs_DH.DataBind();
            gdvDs_DH.Columns[1].Visible = false;
        }
        catch
        {
            Response.Write("<script>alert('Lỗi CSDL')");
        }
    }

    /// <summary>
    /// Xóa đơn đặt hàng (không khả dụng/ vì đơn hàng không nên xóa mà hãy ghi chú thêm vào là bị hủy hoặc lý do khác vẫn lưu lại)
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdvDs_DH_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Sdh = int.Parse(e.Keys[0].ToString()); //---Dựa vào Ms để DELETE dữ liệu trong bảng Đơn hàng (Chỉ dành cho Admin)
        string strSql = "DELETE FROM DON_DAT_HANG where Sdh='" + Sdh + "'";
        RunData runSQl = new RunData();
        runSQl.Execute(strSql);

        gdvDs_DH.EditIndex = -1;
        HienThi();
    }

    /// <summary>
    /// Khi ấn nút sửa hiện trong GridView/ Ghi lại vị trí chỉnh sửa 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdvDs_DH_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdvDs_DH.EditIndex = e.NewEditIndex;
        HienThi();
    }

    /// <summary>
    /// Cho phép phân trang
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdvDs_DH_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvDs_DH.PageIndex = e.NewPageIndex;
        HienThi();
    }

    /// <summary>
    /// Hủy chỉnh sửa 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdvDs_DH_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdvDs_DH.EditIndex = -1;
        HienThi();
    }

    /// <summary>
    /// Cập nhật những gì đã chỉnh sửa
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdvDs_DH_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Sdh = int.Parse(e.Keys[0].ToString()); //---Dựa vào Sdh để UPDATE dữ liệu trong bảng Đơn hàng (Chỉ dành cho Admin)
        
        //---Chỉ cho phép chỉnh sửa trạng thái đơn hàng và ghi chú thêm vào đơn hàng.
        //string Mkh = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        //string NgayDH = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        //string Trigia = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string Dagiaohang = ((DropDownList)gdvDs_DH.Rows[e.RowIndex].FindControl("ddlGiaoHang")).SelectedValue;
        //string Ngaygiaohang = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        //string Hoten = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        //string Diachi = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        //string Sdt = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        //string Email = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
        string GhiChu = ((TextBox)gdvDs_DH.Rows[e.RowIndex].Cells[10].Controls[0]).Text; //--Cột ghi chú chỉ có 1 textbox nên Controls[0]

        string strSql = "UPDATE DON_DAT_HANG set Ghi_chu = N'" + GhiChu + "', Da_giao_hang = N'" + Dagiaohang + "'  where Sdh='" + Sdh + "'";

        RunData runSQl = new RunData();
        runSQl.Execute(strSql);
        gdvDs_DH.EditIndex = -1;
        HienThi();
    }

    protected void gdvDs_DH_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string Sdh = gdvDs_DH.DataKeys[e.NewSelectedIndex].Value.ToString().Trim();
        Response.Redirect("XemCT_DH.aspx?Sdh=" + Sdh);
    }

    //--Hàm hiển thị trạng thái giao hàng (0 chưa giao / 1 thì đã giao)
    public string DisplayGH(object obj)
    {
        bool gt = bool.Parse(obj.ToString());
        if (gt)
            return "Đã giao";
        else
            return "Chưa giao";
    }
}