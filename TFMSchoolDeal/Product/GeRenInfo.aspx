<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeRenInfo.aspx.cs" Inherits="PersonalCenter.Product.GeRenInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        td { text-align: right; }
        img { width: 80px; height: 80px; }
        table {border:1px solid orange; }
        th {background-color:orange; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="margin-right: 146px;">         
       <tr>
           <th>图片</th>
           <th>昵称</th>
           <th>家庭住址</th>
           <th>院系</th>
           <th>姓名</th>
           <th class="auto-style6">个性签名</th>
           <th>专业</th>
       </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td> <img src="../Images/<%#Eval("Image") %>" /></td>                  
                        <td><%#Eval("Nickname")%></td>
                        <td><%#Eval("Address")%></td>
                        <td><%#Eval("Department")%></td>
                        <td><%#Eval("name")%></td>                        
                        <td><%#Eval("Autograph")%></td>
                        <td><%#Eval("Major")%></td>
                </tr>
                </ItemTemplate>
                </asp:Repeater>     
    </table>
    </form>
</body>
</html>
