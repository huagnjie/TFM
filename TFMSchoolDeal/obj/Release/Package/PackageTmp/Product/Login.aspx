<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PersonalCenter.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .btn 
        {
            border-radius:5px;
            background-color:orange;
            border:none;
           
        }
        table ,tr
        {
            border:1px solid #ffd800;
            border-collapse:collapse;
            color:red;
            border-color:green;
            text-align:right;
        }
        .auto-style1 { height: 53px; }
        .btn 
        { 
            font-size:28px;
            font-family:"微软雅黑";
        }
        .btn:hover 
         {
            color:red;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table border="1" style="height: 145px; width: 310px">
            <%--<tr>
                <td>用户名:</td>
                <td class="t1"><asp:TextBox ID="txt_username" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>密码:</td>
                <td class="t1"><asp:TextBox ID="txt_pwd" runat="server" CssClass="t1"></asp:TextBox></td>
            </tr>--%>
            <tr>
                <td colspan="2" style="text-align:center;" class="auto-style1"><asp:Button ID="btn" runat="server" 
                     Text="切换账号" CssClass="btn" Height="67px" Width="182px" OnClick="btn_Click"/>

                </td>
            </tr>
      </table>       
    </form>
</body>
</html>
