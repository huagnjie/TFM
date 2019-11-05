<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="TFMSchoolDeal.Check" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    #conter_left { width: 985px; margin: 10px auto; overflow: hidden; }

#conter_left_box { width: 700px; float: left; border: 1px solid #dedede; }

#conter_left_box1, #conter_left_box2 { margin: 10px 10px; border-bottom: 1px dashed #dedede; overflow: hidden; }

#conter_left_box #conter_left_box1 h2 { text-align: left; font: bold 14px; margin-top: 10px; margin-bottom: 10px; }
#conter_left_box2 p a {
color:red;
}
   
#conter_left_box #conter_left_box1 ul li { float: left; height: 30px; line-height: 20px; }

#conter_left_box #conter_left_box2 h2 { text-align: left; font: bold 14px; margin-bottom: 10px; }

#conter_left_box #conter_left_box2 p { text-align: left; font: 12px bold, Verdana,Geneva,sna-serif; margin-bottom: 10px; }

#conter_left_box3 { overflow: hidden; margin: 10px; }

#conter_left_box #conter_left_box3 h2 { text-align: left; font: bold 14px; margin-bottom: 10px; }

    #conter_left_box #conter_left_box3 h2 span { color: orange; font-size: 16px; }

#conter_left_box3 ul.cash { margin-top: 20px; margin-left: 10px; }

#conter_left_box3 ul.cash { list-style: none; text-align: left; overflow: hidden; }

    #conter_left_box3 ul.cash li span { background-image: url(Images/cart/jt1.jpg); width: 15px; height: 13px; float: left; display: block; margin-top: 5px; }

    #conter_left_box3 ul.cash li { line-height: 25px; height: 25px; overflow: hidden; }

        #conter_left_box3 ul.cash li ul li { margin-right: 20px; float: left; height: 45px; }

        #conter_left_box3 ul.cash li:hover { height: auto; cursor: pointer; }

            #conter_left_box3 ul.cash li:hover span { background-image: url(Images/cart/jt2.jpg); }

#conter_left_box3 h3 { margin: 10px 0px; text-align: right; font: bold 14px; clear: both; }

#conter_left_box3 img { float: right; clear: both; }

#conter_nr { width: 985px; margin: 0px auto; overflow: hidden; position: relative; }

#conter_right { border: 1px solid #dedede; width: 265px; /*height: 400px;*/ position: absolute; top: 10px; left: 715px; text-align: left; overflow: hidden; }

#conter_right_top h2 { font: bold; font-size: 16px; margin: 10px; }

#conter_right_top dl { height: 60px; position: relative; }

    #conter_right_top dl dd { height: 25px; line-height: 25px; position: absolute; margin-top: -55px; font-size: 13px; margin-left: 65px; }

#conter_right_bottom { margin-top: 10px; }

    #conter_right_bottom h2 { font: bold; font-size: 16px; margin: 10px; }

    #conter_right_bottom dl, dd { padding: 0px; margin: 0px; }

    #conter_right_bottom dl { margin-top: 5px; margin-left: 10px; }

        #conter_right_bottom dl.help { height: 30px; overflow: hidden; width: 237px; }

            #conter_right_bottom dl.help dt { height: 30px; font-size: 13px; line-height: 30px; }

            #conter_right_bottom dl.help:hover { height: auto; cursor: pointer; }

            #conter_right_bottom dl.help dd { color: #999; font-size: 12px; }
            </style>
        
    <div id="conter_nr">
                <div id="conter_left">
                <div id="conter_left_box">
                    <div id="conter_left_box1">
                        <img src="../../images/cart/step2.jpg" />
                        <h2>项目名称及数量:</h2>
                        <ul>
                            <li>欢乐空间量贩式KTV:欢唱套餐2选1,国家法定假日需到店付款20元，共一份</li>
                            <li>途乐时尚主题量贩式KTV:任选1小时欢唱,可升级,提供免费WiFi,共一份</li>
                        </ul>
                    </div>

                    <div id="conter_left_box2">
                        <h2>接受消费券的手机号</h2>
                        <p><a>130****4939</a>,凭美消费券去商家消费</p>
                    </div>

                    <div id="conter_left_box3">
                        <h2>应付总额<span>&yen;<asp:Label Text="42.9" ID="lbl_price" runat="server" /></span></h2>
                        <ul class="cash">
                            <li><span></span>网上银行支付（支持储蓄卡和信用卡）<br />
                                <ul>
                                    <li>
                                        <input type="radio" name="bank" checked="checked" />
                                        <img src="../../images/cart/jhbank.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/jtbank.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/zgbank.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/xybank.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/zsbank.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/gdbank.jpg" align="middle" />
                                    </li>
                                </ul>
                            </li>
                            <li><span></span>支付宝/财付通支付<br />
                                <ul>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/zfb.jpg" align="middle" />
                                    </li>
                                    <li>
                                        <input type="radio" name="bank" />
                                        <img src="../../images/cart/cft.jpg" align="middle" height="45px" /></li>
                                </ul>
                            </li>
                        </ul>
                        <img src="../../images/cart/fk.jpg" />
                    </div>
                </div>
            </div>

            <div id="conter_right">
                <div id="conter_right_top">
                    <h2>请放心购买</h2>
                    <dl>
                        <dt> <img src="../../images/cart/warn.jpg" align="middle" /></dt>
                        <dd>采用网银和第三方平台支付<br />最大限度保证您支付安全</dd>
                    </dl>
                    <dl>
                        <dt> <img src="../../images/cart/ie.jpg" align="middle" height="60px"/></dt>
                        <dd>为了支付便捷，建议windows<br />用户使用IE浏览器支付</dd>
                    </dl>
                </div>

                <div id="conter_right_bottom">
                    <h2>支付帮助？</h2>
                    <dl class="help">
                        <dt>没有开通网上银行如何购买？</dt>
                        <dd>各银行已有支付无需网银的小额支付产品，可直接选择付款.或者,可以选择银联在线支付或快捷支付(只支付信用卡)付款</dd>
                    </dl>
                     <dl class="help">
                        <dt>没有我常用的网上银行？</dt>
                        <dd>建议选择银联在线支付付款,支付成功180家银行,包括主流银行和地方银行,如华夏银行、汉口银行和南京银行等等</dd>
                    </dl>
                     <dl class="help">
                        <dt>什么是地方银行？</dt>
                        <dd>地方银行主要是指注册和经营在当地的城市商业银行、农村合作银行及村镇银行等中小金融机构,如江苏银行、南京银行和华夏银行等.</dd>
                    </dl>
                     <dl class="help">
                        <dt>无法跳到对应的支付页面支付？</dt>
                        <dd>建议刷新当前页面,如果没有恢复正常建议重启或更换到IE浏览器.</dd>
                    </dl>
                </div>
            </div>
    </div>
</asp:Content>
