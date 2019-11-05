<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalOrder.aspx.cs" Inherits="PersonalCenter.Product.PersonalOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        img
        {
            width:100px;
            height:60px;
        }
        table 
        {
            border:1px solid #69e335;
            border-collapse:collapse;
            text-align:center;
        }
        th 
        { 
            background-color:#078b18;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" style="overflow:scroll; width: 770px; height: 365px;">
            <tr>
                <th>商品名称</th>
                <th>商品类型</th>
                <th>数量</th>
                <th>价格</th>
                <th>商品图片</th>
                <th>昵称</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Tradename") %></td>
                        <td><%#Eval("Categortid") %></td>
                        <td><%#Eval("Number") %></td>
                        <td><%#Eval("Conversion") %></td>
                        <td><img src="../Images/<%#Eval("Pictures") %>" /></td>                       
                        <td><%#Eval("Nickname") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    </form>
</body>
</html>
