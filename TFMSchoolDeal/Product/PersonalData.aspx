<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalData.aspx.cs" Inherits="PersonalCenter.PersonalData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        i { 
            font-size:12px;
            color:#808080;
        }
        table { 
            width:300px;
        }
        td { 
            text-align:right;
        }
        .one { 
            text-align:left;
        }
        #box { 
            margin-left:50px;  
            width:500px;
        }
        .auto-style1 { height: 43px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
                <div id="box" >
                    <div id="GerenInfo">
                        <p>基本信息</p>
                        <hr />
                        <div id="Pic">
                            <asp:Image ID="ImagePic" runat="server" Width="70px" Height="70px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="None" />
                            <asp:Button ID="butUpload"  OnClick="butUpload_Click" runat="server" Text="上传头像" />
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        </div>
                        <hr />
                    </div>
                    <div id="XianxiInfo">
                        <p>详细信息<i>您的个人信息将完全保密，请放心填写</i></p>

                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="昵称:"></asp:Label></td>
                                <td class="one">
                                    <asp:TextBox ID="txtNickname" runat="server"></asp:TextBox></td>
                            </tr>                          
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="家庭住址:"></asp:Label></td>
                                <td class="one">
                                   <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="院系:"></asp:Label></td>
                                <td class="one">
                                   <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="QQ号:"></asp:Label></td>
                                <td class="one">
                                    <asp:TextBox ID="txtqq" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="姓名:"></asp:Label></td>
                                <td class="one">
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="个性签名:"></asp:Label></td>
                                <td class="one">
                                    <asp:TextBox ID="txtAutograph" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="专业:"></asp:Label></td>
                                <td class="one">
                                    <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox></td>
                            </tr>
                             <tr>
                                <td colspan="2" style="text-align:center; margin-top:7px;" class="auto-style1">
                                    <asp:Button ID="Btnxiugai" runat="server" 
                                        Width="100px" Height="30px" OnClientClick="retrun confirm('确定要修改吗？')" Text="修改" OnClick="Btnxiugai_Click" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
    </form>
</body>
</html>
