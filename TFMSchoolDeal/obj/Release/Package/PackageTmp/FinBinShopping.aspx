<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="FinBinShopping.aspx.cs" Inherits="TFMSchoolDeal.FinBinShopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
        #center_box {
            background-color: #f7f7f7;
            width: 100%;
            overflow: hidden;
            height: 560px;
        }

        #center {
            background-color: #fff;
            margin: 20px auto;
            width: 985px;
            height: 520px;
        }

        table tr td {
            margin-top: 20px;
            height: 50px;
        }

        #center table tr td span {
            color: red;
        }

        .tdsss {
            width: 120px;
            text-align: right;
            margin-left: 10px;
            margin-top: 10px;
        }

        .tdsss {
            font-size: 16px;
        }
    </style>

    <div id="center_box">
        <div id="center">
            <table>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品分类：</strong></td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddpList" AutoPostBack="True" class="form-control"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品标题：</strong></td>
                    <td>
                        <asp:TextBox ID="txt_title" runat="server" class="form-control" placeholder="商品的名称"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品价格：</strong></td>
                    <td>
                        <asp:TextBox ID="txt_price" runat="server" class="form-control" placeholder="商品的价格" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">几成新：</strong></td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddpXin" AutoPostBack="True" class="form-control">
                            <asp:ListItem Value="9">九成新</asp:ListItem>
                            <asp:ListItem Value="8">八成新</asp:ListItem>
                            <asp:ListItem Value="7">七成新</asp:ListItem>
                            <asp:ListItem Value="6">六成新</asp:ListItem>
                            <asp:ListItem Value="5">五成新</asp:ListItem>
                            <asp:ListItem Value="4">四成新</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品描述：</strong></td>
                    <td style="height: 120px;">
                        <asp:TextBox ID="txt_desc" runat="server" placeholder="建议100字以内" Height="111px" Width="353px" class="form-control mt-3" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品图片：</strong></td>
                    <td style="height: 80px;">
                        <asp:Image ID="images" runat="server" Style="width: 60px; height: 60px; float: left;" class="rounded" />
                        <asp:FileUpload runat="server" ID="file" Style="float: left; margin-top: 35px; margin-left: 10px;" />
                        <asp:Button Text="上传" runat="server" ID="btn_Sin" OnClick="Unnamed_Click" Style="width: 50px; float: left; margin-top: 28px; border-radius: 4px; background-color: transparent; border: 1px solid transparent; transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out; color: #212529; padding: 0.375rem 0.75rem; font-size: 16px; color: #fff; background-color: #28a745; border-color: #28a745;" />
                        <asp:Label runat="server" ID="lblGind" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdsss"><span>*</span><strong style="font-size: 1.5rem;">商品短标题：</strong></td>
                    <td>
                        <asp:TextBox ID="txt_Dintitle" class="form-control" runat="server" placeholder="商品的小描述"></asp:TextBox></td>
                </tr>
                <tr style="text-align: center;">
                    <td colspan="2">
                        <asp:Button Text="发布商品" runat="server" ID="btn_SinCin" OnClick="btn_SinCin_Click" Style="width: 100px; border-radius: 4px; background-color: transparent; border: 1px solid transparent; transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out; color: #212529; padding: 0.375rem 0.75rem; font-size: 16px; color: #fff; background-color: #28a745; border-color: #28a745;" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
