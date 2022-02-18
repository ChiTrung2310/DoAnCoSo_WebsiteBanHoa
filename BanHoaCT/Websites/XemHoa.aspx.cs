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
        string Ms = Request.QueryString["Ms"].ToString().Trim();
        string strSQL = "select * from HOA where Ms='" + Ms + "' ";

        RunData runSQL = new RunData();
        DataTable dt = runSQL.GetData(strSQL);

        lblMs.Text = Ms;
        lblTenHoa.Text = dt.Rows[0][1].ToString();
       
        lblDonGia.Text = dt.Rows[0][2].ToString();

        lblDVT.Text = dt.Rows[0][3].ToString();

        lblMoTa.Text = dt.Rows[0][4].ToString();

        lblHinhDD.Text = dt.Rows[0][5].ToString();

        lblMCD.Text = dt.Rows[0][6].ToString();

        lblNgayCn.Text = dt.Rows[0][7].ToString();

        lblSLB.Text = dt.Rows[0][8].ToString();

        lblSLX.Text = dt.Rows[0][9].ToString();

      
    }

    protected void btnThoat_Click(object sender, EventArgs e)
    {
        Response.Redirect("QuanLyAdmin.aspx");
    }
}