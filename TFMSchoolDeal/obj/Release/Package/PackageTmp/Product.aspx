<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="TFMSchoolDeal.Product" %>

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
        }

        #center_top {
            background-color: #fff;
            margin: 20px auto;
            width: 985px;
            height: 90px;
        }

        #center_top_top {
            border-bottom: 1px solid gray;
            height: 45px;
            width: 885px;
            margin: 0px auto;
        }

            #center_top_top ul li {
                float: left;
                height: 30px;
                line-height: 30px;
                margin-left: 10px;
                margin-top: 19px;
            }

                #center_top_top ul li a {
                    color: gray;
                    font-size: 13px;
                }

                    #center_top_top ul li a:hover {
                        color: #000;
                    }

        #center_top_footer {
            height: 45px;
            width: 885px;
            margin: 0px auto;
            overflow: hidden;
        }

            #center_top_footer ul li {
                float: left;
                height: 30px;
                line-height: 30px;
                margin-left: 10px;
            }

                #center_top_footer ul li a {
                    color: gray;
                    font-size: 13px;
                }

                    #center_top_footer ul li a:hover {
                        color: #000;
                    }

        #center_footer {
            width: 985px;
            margin: 30px auto;
            background-color: #fff;
        }

        .wapper {
            overflow: hidden;
            width: 985px;
            margin: 0px auto;
        }

            .wapper a, img {
                border: 0;
            }

            .wapper a {
                color: #333;
                text-decoration: none;
            }

                .wapper a:hover {
                    color: #333;
                    text-decoration: underline;
                }

            .wapper li {
                margin-top: 20px;
                float: left;
                margin-left: 20px;
                width: 220px;
                height: 280px;
                background-color: #fff;
                color: #fff;
                text-align: center;
                font-weight: bold;
                display: inline-block;
            }

                .wapper li .pic {
                    margin: 0 0 30px 0;
                    margin-top: 15px;
                }

                .wapper li .title {
                    margin: 0 10px 2px;
                }

                    .wapper li .title a {
                        color: #333;
                        display: block;
                        text-overflow: ellipsis;
                        white-space: nowrap;
                        overflow: hidden;
                        _zoom: 1;
                    }

                .wapper li .desc {
                    margin-top: 6px;
                    margin-bottom: 6px;
                    height: 18px;
                    font-size: 12px;
                    text-align: center;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    overflow: hidden;
                    _zoom: 1;
                    color: #b0b0b0;
                }

                .wapper li .price {
                    margin: 0 10px 14px;
                    color: #ff6700;
                }

            .wapper li {
                transition: All 0.4s ease-in-out;
                -webkit-transition: All 0.4s ease-in-out;
                -moz-transition: All 0.4s ease-in-out;
                -o-transition: All 0.4s ease-in-out;
            }

                .wapper li:hover {
                    transform: translate(0,-10px);
                    -webkit-transform: translate(0,-10px);
                    -moz-transform: translate(0,-10px);
                    -o-transform: translate(0,-10px);
                    -ms-transform: translate(0,-10px);
                    -webkit-box-shadow: 0px 5px 15px #e5e5e5;
                    -moz-box-shadow: 0px 5px 15px #e5e5e5;
                    box-shadow: 0px 5px 15px #e5e5e5;
                }
    </style>
    <div id="center_box">
        <div id="center_top">
            <div id="center_top_top">
                <ul>
                    <li><a href="#">全部</a></li>
                    <li><a href="#">家电</a></li>
                    <li><a href="#">数码产品</a></li>
                    <li><a href="#">手机</a></li>
                    <li><a href="#">电脑</a></li>
                    <li><a href="#">厨餐</a></li>
                    <li><a href="#">日用品</a></li>
                    <li><a href="#">服装</a></li>
                </ul>
            </div>
            <div id="center_top_footer">
                <ul>
                    <li><a href="#">全部</a></li>
                    <li><a href="#">九成新</a></li>
                    <li><a href="#">八成新</a></li>
                    <li><a href="#">七成新</a></li>
                    <li><a href="#">六成新</a></li>
                    <li><a href="#">五成新</a></li>
                    <li><a href="#">四成新及以下</a></li>
                </ul>
            </div>
        </div>

        <div id="center_footer">
            <div class="wapper">
                <ul>
                    <asp:Repeater runat="server" ID="Repeaters">
                        <ItemTemplate>
                            <li>
                                <div class="pic">
                                    <asp:Image runat="server" ID="Images" Style="width: 160px; height: 160px;" ImageUrl='<%# Page.ResolveUrl("~/Images/"+Eval("Pictures")) %>' />
                                </div>
                                <h3 class="title"><a href="#">
                                    <asp:LinkButton runat="server" Text='<%# Eval("Tradename") %>' ID="text_D" OnCommand="text_D_Command" CommandArgument='<%# Eval("Goodsnumber") %>'></asp:LinkButton></a></h3>
                                <p class="desc"><%# Eval("Information") %></p>
                                <p class="price"><span class="num"><%# Eval("Conversion") %></span>元 </p>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div id="wapper_footer" class="text-center" style="text-align:center;">
                <ul class="pagination">
                   <li class="page-item">
                       <asp:LinkButton runat="server" CssClass="page-link" id="LinkUp" OnClick="LinkUp_Click">上一页</asp:LinkButton>
                        </li>
                    <asp:Repeater runat="server" ID="repeaterASP">
                        <ItemTemplate>
                            <li class="page-item">
                               <asp:LinkButton runat="server" OnClick="Unnamed_Click" CommandArgument='<%# Eval("pageId") %>'><%# Eval("pageId") %></asp:LinkButton>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <li class="page-item">
                        <asp:LinkButton runat="server" CssClass="page-link" ID="LinkDown" OnClick="LinkDown_Click">下一页</asp:LinkButton>
                        </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
