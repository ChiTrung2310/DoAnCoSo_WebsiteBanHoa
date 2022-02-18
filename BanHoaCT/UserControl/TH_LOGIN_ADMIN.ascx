<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_LOGIN_ADMIN.ascx.cs" Inherits="UserControl_TH_LOGIN_ADMIN" %>

<style type="text/css">
    body{
        background-image:url(../images/bg5.jpg);
    }
    .auto-style1 {
        width: 50%;
    }
    .auto-style2 {
        text-align: center;
        padding:15px;
    }
    .login-auto-style3{
        padding: 1em 3em 1em 1em;
        border-radius:30px;
        letter-spacing: 1px;
        font-size: .9em;
        opacity:0.6;
        outline:none;
    }

    .login-auto-style4{
        padding: 1em 1em 1em 1em;
        border-radius:30px;
        letter-spacing: 1px;
        font-size: .9em;
        background:#ea2858;
        color:white;
    }

    .login-auto-style4:hover{
        background: white;
        color:black;
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        text-align: right;
        padding: 15px;
    }
    .auto-style6 {
        text-align: left;
        padding: 15px;
    }
</style>


<table align="center" cellpadding="10" cellspacing="10" class="auto-style1">
    <tr>
        <td colspan="2" class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="LOGIN ADMIN" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:TextBox ID="txtAccount" runat="server" Width="320px" CssClass="login-auto-style3" BorderStyle="None" placeholder="Account"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:TextBox ID="txtPassword" runat="server" Width="320px" CssClass="login-auto-style3" BorderStyle="None" placeholder="Password" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Button ID="btnLogin" runat="server" BorderStyle="None" Font-Bold="True" Text="Login" Width="165px" CssClass="login-auto-style4" OnClick="btnLogin_Click" />
        </td>
        <td class="auto-style6">
            <asp:Button ID="btnExit" runat="server" BorderStyle="None" Font-Bold="True" Text="Exit" Width="165px" CssClass="login-auto-style4" OnClick="btnExit_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="2">&nbsp;</td>
    </tr>
</table>


