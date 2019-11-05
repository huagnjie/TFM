<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopFrame.aspx.cs" Inherits="PersonalCenter.TopFrame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/iconfont.css" rel="stylesheet" />
    <link href="../css/stylees.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="header">
            <div class="bar">
                <div class="w1200"> 
                   
                    <span class="l">
                        <img src="../Images/logo11.png" /> <font>用户中心</font></span> 
                   
                    <span class="r"><a href="../Index.aspx" target="_top"><i class="icon iconfont icon-dianyuan"></i>退出</a></span>
                </div>
            </div>
            <div class="user-info">
                <div class="w1200">
                   <asp:Repeater runat="server" ID="repeaters">
                       <ItemTemplate>
                            <div class="user-headface">
                        <%--<img src="../images/user_face.jpg" />--%>
                        <img src="../Images/<%#Eval("Image") %>" />
                    </div>
                    <div class="user-account">
                        <p class="tip">下午好，<%#Eval("NickName") %></p>
                        <p class="account">
                            <span>帐户名:<%#Eval("NickName") %></span>
                            <span>用户：<%#Eval("name") %></span>
                        </p>
                    </div>
                       </ItemTemplate>
                   </asp:Repeater>
                    <div class="user-modify">
                        <a href="/Product/PersonalData.aspx" target="Main">修改资料></a>
                    </div>
                </div>
            </div>
        </div>

  
    </form>
</body>
</html>
