using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_DS_HOA : System.Web.UI.UserControl
{
    static PagedDataSource p = new PagedDataSource();
    public static int trang_hh = 0;

    protected void hienthi()
    {
        string cau_lenh = "SELECT Ms,Ten_hoa,Mo_ta,Hinh_minh_hoa,Don_gia FROM HOA where Ten_hoa like N'%Giỏ%'";
        DataTable bang_hoa = XL_DuLieu.Doc_bang(cau_lenh);
        p.DataSource = bang_hoa.DefaultView;
        p.PageSize = 12;
        p.CurrentPageIndex = trang_hh;
        p.AllowPaging = true;
        btdau.Enabled = bttrai.Enabled = btphai.Enabled = btcuoi.Enabled = true;

        if (p.IsFirstPage)
            btdau.Enabled = bttrai.Enabled = false;

        if (p.IsLastPage)
            btcuoi.Enabled = btphai.Enabled = false;

        txttrang.Text = (trang_hh + 1) + "/" + p.PageCount;
        dlHoa.DataSource = p;
        dlHoa.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            hienthi();
         if (Request.QueryString["tenhoa"] != null)
            {
                String ten_hoa = Request.QueryString["tenhoa"].ToString();

                String cau_lenh = "select * from HOA where Ten_hoa like N'%" + ten_hoa + "%' order by ngay_cap_nhat desc";
                DataTable bang_hoa = XL_DuLieu.Doc_bang(cau_lenh);

                if (bang_hoa.Rows.Count > 0)
                {
                    dlHoa.DataSource = bang_hoa;
                    lblCaption.Text = "<h2> Kết quả tìm hoa " + ten_hoa + ":</h2>";
                }
                else

                    lblCaption.Text = "<h2> Không tìm thấy hoa!!! </h2>";

            }
            else
            {
                dlHoa.DataSource = XL_DuLieu.Doc_bang("select * from HOA where Ten_hoa like N'%Giỏ%'");

            }
            dlHoa.DataBind();
        
        }
    }

    protected void btdau_Click(object sender, EventArgs e)
    {
        trang_hh = 0;
        hienthi();
    }

    protected void bttrai_Click(object sender, EventArgs e)
    {
        trang_hh--;
        hienthi();
    }

    protected void btphai_Click(object sender, EventArgs e)
    {
        trang_hh++;
        hienthi();
    }

    protected void btcuoi_Click(object sender, EventArgs e)
    {
        trang_hh = p.PageCount - 1;
        hienthi();
    }


    protected void dlHoa_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chonmua")
        {
            //---Tạo giỏ hàng mới
            DataTable bang_gio_hang = (DataTable)Session["gio_hang"];

            //---Xác định mã hoa
            int ms = int.Parse(e.CommandArgument.ToString());

            bool mua_them_hoa_da_dat = false;
            TextBox txtsl = (TextBox)e.Item.FindControl("txtsl");
            for (int i = 0; i < bang_gio_hang.Rows.Count; i++)
            {
                if (int.Parse(bang_gio_hang.Rows[i]["Ms"].ToString()) == ms)
                {
                    bang_gio_hang.Rows[i]["So_luong"] = int.Parse(bang_gio_hang.Rows[i]["So_luong"].ToString()) + int.Parse(txtsl.Text);
                    mua_them_hoa_da_dat = true;
                    break;
                }
            }
            if (mua_them_hoa_da_dat == false)
            {
                DataTable bang_hoa = XL_DuLieu.Doc_bang("SELECT Ms,Ten_hoa,Hinh_minh_hoa,Don_gia FROM HOA WHERE Ms = " + ms.ToString());
                DataRow r = bang_gio_hang.NewRow();
                r["Ms"] = bang_hoa.Rows[0]["Ms"];
                r["Ten_hoa"] = bang_hoa.Rows[0]["Ten_hoa"];
                r["Hinh_minh_hoa"] = bang_hoa.Rows[0]["Hinh_minh_hoa"];
                r["Don_gia"] = bang_hoa.Rows[0]["Don_gia"];
                r["So_luong"] = int.Parse(txtsl.Text);
                bang_gio_hang.Rows.Add(r);
            }
            bang_gio_hang.AcceptChanges();
            Session["gio_hang"] = bang_gio_hang;
            Response.Redirect(Request.RawUrl);
        }
    
    }

}