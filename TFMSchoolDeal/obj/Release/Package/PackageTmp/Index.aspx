<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TFMSchoolDeal.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/jquery-1.7.1.js"></script>
    <style type="text/css">
        /*轮播特效*/
        .banner {
            margin: 0px auto;
            text-align: center;
        }

            .banner ul#imgs {
                height: 340px;
                overflow: hidden;
            }

        #numbers {
            width: 250px;
            margin: 0px auto;
            margin-top: -25px;
            margin-bottom: 50px;
        }

            #numbers li {
                background-color: #000;
                width: 36px;
                height: 12px;
                opacity: 0.15;
                text-align: center;
                border: solid 1px #999;
                margin-right: 15px;
                font-size: 13px;
                line-height: 18px;
                cursor: pointer;
                float: left;
            }

                #numbers li.number_over {
                    border: 1px solid #F90;
                    opacity: 0.4;
                }

        .w {
            width: 985px;
            margin: 0 auto;
        }

        .c-info li, .wetg li {
            background-image: url('index_v2-new.png');
        }


        .c-info {
            height: 115px;
            background: #fff;
            padding-top:1px;
        }

            .c-info:after {
                content: "\0020";
                display: block;
                clear: both;
                height: 0;
                visibility: hidden;
            }

            .c-info li {
                margin-bottom: 10px;
                height: 45px;
                float: left;
                _display: inline;
                _overflow: hidden;
            }

            .c-info span {
                padding-left: 25px;
                margin-left: 55px;
                display: block;
                color: #666;
                font: 16px/45px 'Microsoft YaHei';
                margin-bottom: 9px;
                overflow: hidden;
            }

            .c-info li.icon01 {
                width: 245px;
                background-position: -233px -116px;
            }

            .c-info li.icon02 {
                width: 245px;
                background-position: -243px -162px;
            }

            .c-info li.icon03 {
                width: 245px;
                background-position: -243px -210px;
            }

            .c-info li.icon04 {
                width: 245px;
                background-position: -243px -252px;
            }

        .row {
            width: 985px;
            margin: 0px auto;
            margin-top: 30px;
            margin-bottom: 20px;
        }

        .tuijian p {
            /*font-family:"方正悠黑简体_纤", "Microsoft YaHei", Arial;
        font-size:24px;*/
            color: rgb(51, 51, 51);
            font-family: "方正悠黑简体_纤", "Microsoft YaHei", Arial;
            font-feature-settings: normal;
            font-kerning: auto;
            font-language-override: normal;
            font-size: 24px;
            font-size-adjust: none;
            font-style: normal;
            font-variant: normal;
            font-variant-alternates: normal;
            font-variant-caps: normal;
            font-variant-east-asian: normal;
            font-variant-ligatures: normal;
            font-variant-numeric: normal;
            font-variant-position: normal;
        }

        .tuijian span {
            float: right;
            position: absolute;
            margin-left: 800px;
            margin-top: -20px;
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

        .title1 {
            height: 40px;
            border-left: 1px #ebebeb solid;
            border-right: 1px #ebebeb solid;
            background: #fff url("pic20.png") repeat-x 0 0;
            position: relative;
        }

            .title1 h2 {
                float: left;
                line-height: 40px;
                height: 40px;
                border-right: 1px #ebebeb solid;
                font-size: 14px;
                font-weight: bold;
            }

                .title1 h2 a {
                    padding: 0 20px;
                    display: inline-block;
                    height: 40px;
                    color: #494949;
                }

                    .title1 h2 a:hover {
                        text-decoration: none;
                    }

                .title1 h2.on {
                    left: 0;
                    background: #fff;
                    border-top: 1px #494949 solid;
                    border-bottom: 2px #fff solid;
                    line-height: 36px;
                    height: 36px;
                    font-size: 14px;
                    color: #fc5300;
                }

                    .title1 h2.on a {
                        color: #fc5300;
                        height: 36px;
                    }

        .content {
            padding: 0px 0 0 0;
        }

            .content .detail {
                display: none;
                height: 60px;
                overflow: hidden;
                _zoom: 1;
            }

            .content ul li {
                margin: 5px 0 5px 0;
                padding: 0 10px;
                line-height: 14px;
                font-family: 'Microsoft YaHei';
                float: left;
                border-right: 1px solid #ccc;
            }

                .content ul li a {
                    white-space: nowrap;
                    outline: 0;
                }

                .content ul li.letter {
                    border: 0;
                    width: 1175px;
                    padding: 0 5px 5px 10px;
                }

                    .content ul li.letter a {
                        width: 24px;
                        height: 24px;
                        text-align: center;
                        background: #ebebeb;
                        margin: 0 10px 0 0;
                        padding: 0;
                        border: 0;
                        line-height: 24px;
                        display: inline-block;
                        float: left;
                    }

                        .content ul li.letter a:hover {
                            text-decoration: none;
                        }

                        .content ul li.letter a.current, #links .content ul li.letter a.more {
                            color: #fff;
                            background: #fc5300;
                        }

                        .content ul li.letter a.more {
                            width: 48px;
                            float: left;
                        }

                .content ul li.last {
                    border-right: 0;
                }

            .content .on {
                display: block;
            }
        #DinHunDivBox {
        width:985px;
        margin:0px auto;
        margin-top:-431px;
        }
             .DinHunContainer {
            font-family: 'Raleway', sans-serif;
            color: #FFF;
            height: 100%;
            max-width: 200px;
            background:#22ac38;
            margin: 40px auto;
            padding: 10px 0px 20px 0px;
            border: 1px solid #22ac38;
            border-radius: 4px;
            box-shadow: 0px 4px 5px #22ac38;
            position:absolute;
            height:305px;
            width:170px;
            opacity:0.8;
        }

        .DinHunLink {
            font-size: 16px;
            font-weight: 300;
            text-align: center;
            position: relative;
            height: 50px;
            line-height: 50px;
            margin-top: 10px;
            overflow: hidden;
            width: 90%;
            margin-left: 5%;
            cursor: pointer;
        }
            .DinHunLink a {
            text-decoration:none;
            color:white;
            font-size:16px;
            }
            .DinHunLink:after {
                content: '';
                position: absolute;
                width: 80%;
                border-bottom: 1px solid rgba(255, 255, 255, 0.5);
                bottom: 50%;
                left: -100%;
                transition-delay: all 0.5s;
                transition: all 0.5s;
            }

            .DinHunLink:hover:after,
            .DinHunLink.hover:after {
                left: 100%;
            }

            .DinHunLink .DinHunText {
                text-shadow: 0px -40px 0px rgba(255, 255, 255, 1);
                transition: all 0.75s;
                transform: translateY(100%) translateZ(0);
                transition-delay: all 0.25s;
            }

            .DinHunLink:hover .DinHunText,
            .DinHunLink.hover .DinHunText {
                text-shadow: 0px -40px 0px rgba(255, 255, 255, 0);
                transform: translateY(0%) translateZ(0) scale(1.1);
                font-weight: 600;
            }
    </style>

    <%--图片轮播--%>
    <div class="banner">
        <ul id="imgs">
            <li>
                <img src="Images/19031.jpg" style="width: 100%; height: 340px" /></li>
            <li>
                <img src="Images/19032.jpg" style="width: 100%; height: 340px;" /></li>
            <li>
                <img src="Images/19033.jpg" style="width: 100%; height: 340px;" /></li>
            <li>
                <img src="Images/19034.jpg" style="width: 100%; height: 340px;" /></li>
        </ul>
        <ul id="numbers">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
        </ul>
    </div>

    <%--部分简介--%>
    <div class="c-info">
        <div class="w">
            <ul>
                <li class="icon01"><span>
                    <img src="Images/GinXin.png" style="width: 55px; height: 55px; margin-left: 35px;" /></span></li>
                <li class="icon02"><span>
                    <img src="Images/MDMJY.png" style="width: 55px; height: 55px; margin-left: 20px;" /></span></li>
                <li class="icon03"><span>
                    <img src="Images/XXJY.png" style="width: 55px; height: 55px; margin-left: 25px;" /></span></li>
                <li class="icon04"><span>
                    <img src="Images/Money.png" style="width: 55px; height: 55px; margin-left: 20px;" /></span></li>
            </ul>
            <ul style="margin-bottom: 25px;">
                <li class="icon01"><span>针对高校交易平台</span></li>
                <li class="icon02"><span>信息真实可靠</span></li>
                <li class="icon03"><span>面对面交易安全</span></li>
                <li class="icon04"><span>完全免费模式</span></li>
            </ul>
        </div>
        <div id="DinHunDivBox">
            <div class="DinHunContainer">
        <div class="DinHunLink">
            <div class="DinHunText"><a href="Product.aspx?Shopping=0">闲置商品</a></div>
        </div>
        <div class="DinHunLink">
            <div class="DinHunText"><a href="Product.aspx?Shopping=3">手机专场</a></div>
        </div>
        <div class="DinHunLink">
            <div class="DinHunText"><a href="Product.aspx?Shopping=4">电脑专场</a></div>
        </div>
        <div class="DinHunLink">
            <div class="DinHunText"><a href="Product.aspx?Shopping=8">日用百货</a></div>
        </div>
        <div class="DinHunLink">
            <div class="DinHunText"><a href="#">联系我们</a></div>
        </div>
    </div>
        </div>
    </div>

    

    <script>
        var DinHunLinks = document.getElementsByClassName('DinHunLink')
        for (var i = 0; i <= DinHunLinks.length; i++)
            addClass(i)


        function addClass(id) {
            setTimeout(function () {
                if (id > 0) DinHunLinks[id - 1].classList.remove('hover')
                DinHunLinks[id].classList.add('hover')
            }, id * 750)
        }
    </script>

    <%--部分商品展示--%>
    <div id="SinPanZinSie" style="background-color: #f7f7f7;">
        <div class="row">
            <div id="hot_brands">
                <div id="hot_brands_one" style="padding-top:2px;">
                    <div class="tuijian" style="margin-top:10px;">
                        <p class="on js_link_title" style=" padding-top: 10px; text-align: center;">新&nbsp;品&nbsp;特&nbsp;卖</p>
                        <span class="fr" style="margin-top: -45px;"><a href="/">免费发布信息</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a class="red" href="/">怎么推荐到首页？</a></span>
                    </div>
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
                </div>
                ,
                <div id="hot_brands_two" style="margin-top: 24px;">
                    <div class="tuijian" style="margin-top: 10px;">
                        <p class="on js_link_title" style="padding-top: 10px; text-align: center;">精&nbsp;品&nbsp;手&nbsp;机</p>
                    </div>
                    <div class="wapper">
                        <ul>
                            <asp:Repeater runat="server" ID="ResPinDe">
                                <ItemTemplate>
                                    <li>
                                        <div class="pic">
                                            <asp:Image runat="server" ID="Images" Style="width: 160px; height: 160px;" ImageUrl='<%# Page.ResolveUrl("~/Images/"+Eval("Pictures")) %>' />
                                        </div>
                                        <h3 class="title"><a href="#">
                                            <asp:LinkButton runat="server" Text='<%# Eval("Tradename") %>' OnCommand="text_D_Command" CommandArgument='<%# Eval("Goodsnumber") %>'></asp:LinkButton></a></h3>
                                        <p class="desc"><%# Eval("Information") %></p>
                                        <p class="price"><span class="num"><%# Eval("Conversion") %></span>元 </p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <div id="hot_brands_Sin" style="margin-top:24px">
                     <div class="tuijian" style="margin-top: 10px;">
                        <p class="on js_link_title" style="padding-top: 10px; text-align: center;">精&nbsp;品&nbsp;电&nbsp;脑</p>
                    </div>
                    <div class="wapper">
                        <ul>
                            <asp:Repeater runat="server" ID="Rep_ConPamTer">
                                <ItemTemplate>
                                    <li>
                                        <div class="pic">
                                            <asp:Image runat="server" ID="Images" Style="width: 160px; height: 160px;" ImageUrl='<%# Page.ResolveUrl("~/Images/"+Eval("Pictures")) %>' />
                                        </div>
                                        <h3 class="title"><a href="#">
                                            <asp:LinkButton  runat="server" Text='<%# Eval("Tradename") %>' OnCommand="text_D_Command" CommandArgument='<%# Eval("Goodsnumber") %>'></asp:LinkButton></a></h3>
                                        <p class="desc"><%# Eval("Information") %></p>
                                        <p class="price"><span class="num"><%# Eval("Conversion") %></span>元 </p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

                <div id="hot_brands_For" style="margin-top:24px">
                    <div class="tuijian" style="margin-top: 10px;">
                        <p class="on js_link_title" style="padding-top: 10px; text-align: center;">日&nbsp;用&nbsp;百&nbsp;货</p>
                    </div>
                    <div class="wapper">
                        <ul>
                            <asp:Repeater runat="server" ID="Rep_ReYinPan">
                                <ItemTemplate>
                                    <li>
                                        <div class="pic">
                                            <asp:Image runat="server" ID="Images" Style="width: 160px; height: 160px;" ImageUrl='<%# Page.ResolveUrl("~/Images/"+Eval("Pictures")) %>' />
                                        </div>
                                        <h3 class="title"><a href="#">
                                            <asp:LinkButton   runat="server" Text='<%# Eval("Tradename") %>' OnCommand="text_D_Command" CommandArgument='<%# Eval("Goodsnumber") %>'></asp:LinkButton></a></h3>
                                        <p class="desc"><%# Eval("Information") %></p>
                                        <p class="price"><span class="num"><%# Eval("Conversion") %></span>元 </p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <div class="more" style="width: 200px; margin: 20px auto; height: 30px; color: #fff; background-color: #179500; height: 30px; text-align: center; line-height: 30px;"><a href="Product.aspx?Shopping=1" style="color: #fff">查看更多信息</a></div>
            </div>

        </div>
    </div>

    <%--合作伙伴等--%>
    <div class="row" id="links" style="margin-top: 10px;">
        <div class="row">
            <div class="title1">
                <h2 class="js_link_title on sss"><a href="javascript:void 0;">友情链接</a></h2>
                <h2 class="js_link_title kkk"><a href="javascript:void 0;">合作伙伴</a></h2>
            </div>
        </div>
        <div class="content clearfix">
            <div class="detail on js_link_detail sss_d" style="display: block;">
                <ul>
                    <li><a href="http://www.topqikan.com/sheke/art/" target="_blank">艺术论文发表</a> </li>

                    <li><a href="http://renrenhezuoshe.com/" target="_blank">人人合作社</a> </li>

                    <li><a href="https://www.jiaowoba.com/" target="_blank">教我吧平台</a> </li>

                </ul>
            </div>
            <div class="detail js_link_detail kkk_d" style="display: none;">
                <ul>
                    <li><a href="/" target="_blank">合作伙伴</a></li>
                </ul>
            </div>
        </div>
        <p class="tip"></p>
    </div>

    <%--nav--%>
    <div id="footer_nav" style="background-color: #f5f5f5; height: 30px; margin-top: -30px; margin-bottom: 18px;">
    </div>


    <script type="text/javascript">
        $(".sss").mouseover(function () {
            $(".sss").css({ "border-top": "1px #494949 solid" });
            $(".kkk a").css("color", "#000");
            $(".sss a").css("color", "red");
            $(".kkk").css({ "border-top": "none" });
            $(".sss_d").css("display", "block");
            $(".kkk_d").css("display", "none");
        })
        $(".kkk").mousemove(function myfunction() {
            $(".kkk").css({ "border-top": "1px #494949 solid" });
            $(".sss").css({ "border-top": "none" });
            $(".sss a").css("color", "#000");
            $(".kkk a").css("color", "red");
            $(".kkk_d").css("display", "block");
            $(".sss_d").css("display", "none");
        })
        $('#DinBin_A').bind('click', function () { $(window).scrollTop(0); });
        function LinBu() {
            var pindu = false;
            var index = 0;
            var li = $(".banner #imgs li");
            var indexli = $(".banner #numbers li");
            //number_over
            indexli.eq(index).addClass("number_over").stop().siblings().removeClass("number_over");
            setInterval(function () {
                if (pindu) return;
                index++;
                if (index >= li.length) {
                    index = 0;
                }
                //li.eq(index).fadeIn("slow").stop().siblings().fadeOut("slow");
                li.eq(index).slideDown(200).siblings().fadeOut(200);
                indexli.eq(index).addClass("number_over").stop().siblings().removeClass("number_over");
            }, 3333);
            indexli.hover(function () {
                pindu = true;
                index = indexli.index($(this));
                li.eq(index).stop().fadeIn("slow").siblings().fadeOut("slow");
                $(this).addClass("number_over").stop().siblings().removeClass("number_over");
            }, function () {
                pindu = false;
            })
            li.hover(function () {
                pindu = true;
            }, function () {
                pindu = false;
            })

        }

        function ZinLin() {
            var left = 0;
            var pindu = false;
            setInterval(function () {
                if (pindu) return;
                $(".tgjlx li:first").animate({ "margin-left": left-- }, 0, function () {
                    if (!$(this).is(":animated")) {
                        if ((-left) > $(this).width()) {
                            $(this).css({ "margin-left": 0 }).appendTo(".tgjlx ul");
                            left = 0;
                        }
                    }
                })
            }, 30)
        }

        $(function myfunction() {
            LinBu();
            ZinLin();
        })
    </script>
</asp:Content>
