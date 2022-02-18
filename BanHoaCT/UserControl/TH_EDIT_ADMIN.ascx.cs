using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_TH_EDIT_ADMIN : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            HienThi();
    }

    /// <summary>
    /// Khi vừa load trang web hiện như thế này
    /// </summary>
    private void HienThi()
    {
        try
        {
            string cau_lenh = "SELECT * FROM HOA";
            DataTable bang_hoa = XL_DuLieu.Doc_bang(cau_lenh); ;
            gdvAdmin.DataSource = bang_hoa;
            gdvAdmin.DataBind();
        }
        catch
        {
            Response.Write("<script>alert('Lỗi CSDL')");
        }
    }


    protected void gdvAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvAdmin.PageIndex = e.NewPageIndex;
        HienThi();
    }

    //protected void gdvAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
    //{

    //}


    protected void gdvAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdvAdmin.EditIndex = -1;
        HienThi();
    }

    protected void gdvAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ms = int.Parse(e.Keys[0].ToString()); //---Dựa vào Ms để DELETE dữ liệu trong bảng hoa (Chỉ dành cho Admin)
        string strSql = "DELETE FROM HOA where Ms='" + Ms + "'";
        RunData runSQl = new RunData();
        runSQl.Execute(strSql);

        gdvAdmin.EditIndex = -1;
        HienThi();
    }

    protected void gdvAdmin_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdvAdmin.EditIndex = e.NewEditIndex;
        HienThi();
    }

    protected void gdvAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Ms = int.Parse(e.Keys[0].ToString()); //---Dựa vào Ms để UPDATE dữ liệu trong bảng hoa (Chỉ dành cho Admin).

        //---Lệnh update các cột cần thiết có trong bảng sản phẩm hoa
        string tenhoa = ((TextBox)gdvAdmin.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string donvitinh = ((TextBox)gdvAdmin.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string mota = ((TextBox)gdvAdmin.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string soluongban = ((TextBox)gdvAdmin.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

        int soluong = 0;
        int.TryParse(((TextBox)gdvAdmin.Rows[e.RowIndex].Cells[8].Controls[0]).Text, out soluong);
        if (soluong <= 0)
        {
            Response.Write("<script>alert('Số lượng phải lớn hơn 0')</script>");
        }
        else
        {
            string strSql = "UPDATE HOA set Ten_hoa = N'" + tenhoa + "', Don_vi_tinh = N'" + donvitinh + "', Mo_ta = N'" + mota + "', So_luong_ban = " + soluongban + " where Ms='" + Ms + "'";

            RunData runSQl = new RunData();
            runSQl.Execute(strSql);
            gdvAdmin.EditIndex = -1;
            HienThi();
        }
    }


    /// <summary>
    /// Xác nhận lại trước khi xóa tránh xóa nhầm cột không mong muốn!!!
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    //protected void gdvAdmin_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if(e.Row.RowType==DataControlRowType.DataRow && gdvAdmin.EditIndex == -1)
    //    {
    //        ((LinkButton)e.Row.Cells[5].Controls[2]).OnClientClick = "return confirm('Admin có chắc chắn muốn xóa không?');";
    //    }
    //}


    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChiTietHoa.aspx"); //---Đưa Admin đến trang cho phép thêm dữ liệu vào bảng HOA
    }

    protected void btnThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); //---Đưa Admin về lại websites
    }

    protected void gdvAdmin_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string Ms = gdvAdmin.DataKeys[e.NewSelectedIndex].Value.ToString().Trim();
        Response.Redirect("XemHoa.aspx?Ms="+ Ms);
    }
}