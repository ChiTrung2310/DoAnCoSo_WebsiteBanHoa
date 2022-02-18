using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_TH_TIMKIEM : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void txtTen_Hoa_TextChanged(object sender, EventArgs e)
    {
        if (txtTen_Hoa.Text != "")
            Response.Redirect("Shop.aspx?Tenhoa=" + txtTen_Hoa.Text);
    }
}