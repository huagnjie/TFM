<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeftFrame.aspx.cs" Inherits="PersonalCenter.Frame.LeftFrame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/stylees.css" rel="stylesheet" />
    <link href="../css/iconfont.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="left">
                <ul>
                    <li>
                        <a href="/Product/Replay.aspx" target="Main" class="active">
                            <i class="icon iconfont icon-lingdang"></i>
                             消息
                        </a>
                    </li>
                    <li>
                        <a href="/Product/PersonalOrder.aspx" target="Main">
                            <i class="icon iconfont icon-fangzidichan"></i>
                            我的商品
                        </a>
                    </li>
                    <%--<li>
                        <a href="#">
                            <i class="icon iconfont icon-wenda"></i>
                            我的帖子
                        </a>
                    </li>--%>
                    <li>
                        <a href="/Product/Bangzhu.aspx" target="Main"">
                            <i class="icon iconfont icon-icon--"></i>
                           帮助
                        </a>
                    </li>
                  <%--  <li>
                        <a href="#">
                            <i class="icon iconfont icon-pinglun"></i>
                            我的评论
                        </a>
                    </li>--%>
                    <li>
                        <a href="/Product/GeRenInfo.aspx" target="Main">
                            <i class="icon iconfont icon-geren"></i>
                           <%-- <asp:Button ID="Button1" runat="server" Text="个人资料" BorderStyle="None" OnClick="Button1_Click" Font-Size="Medium" BackColor="White" />--%>
                        个人资料
                           
                        </a>
                    </li>
                    <li>
                        <a href="/Product/Login.aspx" target="Main">
                            <i class="icon iconfont icon-jilu"></i>
                            个人设置
                        </a>
                    </li>
                </ul>
            </div>
    </form>
</body>
</html>
