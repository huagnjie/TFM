<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="TFMSchoolDeal.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        #center_box {
            width: 100%;
            background-color: #f5f5f5;
            margin-bottom: 15px;
        }

        #center_div {
            width: 985px;
            background-color: #fff;
            margin: 0px auto;
        }
        
    </style>
    <link href="Content/Details.css" rel="stylesheet" />
    <div id="center_box">
        <div id="center_div">
            <div id="conter_left_top">
                <ul class="picture">
                    <li>                        
                        <asp:Image runat="server" ID="images_left" ImageUrl="~/Images/1001.jpg" Style="width: 400px; height: 400px;" />
                    </li>
                    <li>
                        <asp:Image runat="server" ID="image1" ImageUrl="~/Images/1001.jpg" Style="width: 100px; height: 100px;" />                       
                    </li>
                   <%-- <li>
                        <asp:Image runat="server" ID="image2" ImageUrl="~/Images/1001.jpg" Style="width: 100px; height: 100px;" />
                    </li>
                    <li>
                        <asp:Image runat="server" ID="image3" ImageUrl="~/Images/1001.jpg" Style="width: 100px; height: 100px;" />
                    </li>
                    <li>
                        <asp:Image runat="server" ID="image4" ImageUrl="~/Images/1001.jpg" Style="width: 100px; height: 100px;" />
                    </li>--%>
                </ul>

                <asp:Repeater runat="server" ID="repeaters_Details">
                    <ItemTemplate>
                        <ul class="infore">
                            <li>商品名称：&nbsp;<%# Eval("Tradename") %></li>
                            <li>原价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&yen;<%# Eval("Cost_price") %></li>
                            <li>转让价：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&yen;<%# Eval("Conversion") %></li>
                            <li>商品类别：&nbsp;<%# Eval("Categortid.Categort") %></li>
                            <li>几成新：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("New") %></li>
                            <li>交易方式：&nbsp;校园交易&nbsp;--&nbsp;<%# Eval("Nickname.Department") %></li>
                            <li>手机号码：&nbsp;<%# Eval("Nickname.Phone") %></li>
                            <li>QQ：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("Nickname.QQ") %></li>
                            <li>商品信息：&nbsp;<%# Eval("Information") %></li>
                            <li style="height: 16px; margin-bottom: 5px;">使用感受：</li>
                            <li class="text"><%# Eval("Feel") %>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div id="conter_left_footer">
                <div class="tuijian">
                    <div class="tuijian-m">温馨提示</div>
                    <div class="tuijian-inf">
                        <ul>
                            <li>请勿随意接收任何来源不明的文件，请勿随意点击任何来源不明的链接。涉及资金往来的事项请务必仔细核对资金往来信息。</li>
                            <li>TFM校园网不会以订单有问题，让您提供任何银行卡、密码、手机验证码！ </li>
                            <li>TFM校园网为第三方交易平台及互联网信息服务提供者</li>
                            <li>TFM校园网（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。 </li>
                            <li>TFM校园网存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向天猫举报并提供有效线索。 </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="center_footer_TinJin_box">
            <div id="center_TinJin">推荐</div>
            <style type="text/css">

                #image1 {
                border:1px solid gray;
                }
                    .spfinbin {
            margin-top: 15px;
        }

        .spfinbin {
            width: 985px;
            margin: 0px auto;
            margin-top:36px;
            margin-bottom:20px;
        }

            .spfinbin ul {
                width: 985px;
                overflow: hidden;
            }

                .spfinbin ul li {
                    float: left;
                    margin-top:20px;
                    margin-left:15px;
                    width: 190px;
                    border: 1px solid gray;
                    padding: 10px;
                    height:300px;
                }
                    .spfinbin ul li:hover {
                    border:1px solid red;
                    }
            .spfinbin dl dt {
            text-align:center;
            }
            .spfinbin dl dd.price span {
                color: orange;
                font: bold 14px Verdana,Geneva,sans-serif;
            }

            .spfinbin dl dd.number {
                /*float: right;*/
                /*margin-top:-17px;*/
                position: absolute;
                /*margin-left:160px;*/
            }

            .spfinbin dl dd {
                margin-top: 8px;
            }
            </style>
            <div class="spfinbin">
                <ul>
                    <li>
                        <dl>
                            <dt><a>
                                <img src="Images/1005.jpg" style="width: 180px; height: 180px;" /></a></dt>
                            <dd class="name">
                                <h3><a href="Details.aspx?Goodsnumber=8">Meizu/魅族 PRO 7</a></h3>
                            </dd>
                            <dd>品牌: Meizu/魅族  魅族型号: PRO 7 非常牛皮</dd>
                            <dd class="price"><span>&yen;638</span></dd>
                            <dd class="number"><span>永州职业技术学院</span></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a>
                                <img src="Images/1006.jpg" style="width: 180px; height: 180px;" /></a></dt>
                            <dd class="name">
                                <h3><a href="Details.aspx?Goodsnumber=9">OPPO A57全网通手机</a></h3>
                            </dd>
                            <dd>全新无破损，非常好  但是我要买新的</dd>
                            <dd class="price"><span>&yen;700</span></dd>
                            <dd class="number"><span>永州职业技术学院</span></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a>
                                <img src="Images/1007.jpg" style="width: 180px; height: 180px;" /></a></dt>
                            <dd class="name">
                                <h3><a href="Details.aspx?Goodsnumber=10">Meizu/魅族 MX6</a></h3>
                            </dd>
                            <dd>屏幕有点裂缝 , 但是不影响使用的 放心</dd>
                            <dd class="price"><span>&yen;570</span></dd>
                            <dd class="number"><span>永州职业技术学院</span></dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt><a>
                                <img src="Images/1008.jpg" style="width: 180px; height: 180px;" /></a></dt>
                            <dd class="name">
                                <h3><a href="Details.aspx?Goodsnumber=11">Meitu/美图 M8</a></h3>
                            </dd>
                            <dd>美少女全网通美颜手机 64G机身内存</dd>
                            <dd class="price"><span>&yen;840</span></dd>
                            <dd class="number"><span>永州职业技术学院</span></dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div id="center_footer_footer" style="height:30px;width:985px;"></div>
            <div id="footersss" style="height: 30px;"></div>
        </div>
        <div id="footer_nav" style="background-color: #f5f5f5; height: 30px; margin-top: -30px; margin-bottom: 18px;"></div>
    </div>


</asp:Content>
