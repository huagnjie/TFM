<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="TFMSchoolDeal.Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        #Shopping_Div {
            position: relative;
            width: 100%;
            min-height: 950px;
        }
    </style>
    <script src="Scripts/jquery-1.7.1.min.js"></script>
    <link href="Content/carts.css" rel="stylesheet" />
    <link href="Content/reset.css" rel="stylesheet" />
    <style type="text/css">
         .sum {
        height:30px;
        }
    </style>
    <div id="Shopping_Div">
        <section class="cartMain">
	<div class="cartMain_hd">
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选-->
				<input type="checkbox" id="all" class="whole_check">
				<label for="all"></label>
				全选
			</li>
			<li class="list_con">商品信息</li>
			<li class="list_info">商品参数</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		<%--<div class="shop_info">
			<div class="all_check">
				<!--店铺全选-->
				<input type="checkbox" id="shop_a" class="shopChoice">
				<label for="shop_a" class="shop"></label>
			</div>
			<div class="shop_name">
				店铺：<a href="javascript:;">搜猎人艺术生活</a>
			</div>
		</div>--%>
		<div class="order_content">
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_2" class="son_check">
					<label for="checkbox_2"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="Images/1.png" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男1</a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥980</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum" style="height:24px;">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥980</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_3" class="son_check">
					<label for="checkbox_3"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="Images/2.png" alt=""/></a></div>
					<div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男2</a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥780</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum" style="height:24px;">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥780</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_6" class="son_check">
					<label for="checkbox_6"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="Images/3.png" alt=""></a></div>
					<div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男3</a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥180</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum" style="height:24px;">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥180</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
		</div>
	</div>

	<!--底部-->
	<div class="bar-wrapper">
		<div class="bar-right">
			<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			<div class="totalMoney">共计: <%--<strong class="total_text">0.00</strong>--%>  <asp:Label CssClass="total_text" runat="server" ID="lbl_price" style="color:red;" Text="0.00"></asp:Label> </div>
			<div class="calBtn"><a href="Check.aspx" onclick="<%--window.location.href="login.jsp?backurl="+window.location.href;--%>
            <%--window.location.href='Check.aspx?Price='+ $('.total_text').text().substring(1)+'&Name='+$('.list_text').text()+$('.sum_price').text().substring(1);--%>
                <%--alert($('.total_text').text().substring(1));--%>
                ">结算</a></div>
		</div>
	</div>
</section>
<section class="model_bg"></section>
<section class="my_model">
	<p class="title">删除宝贝<span class="closeModel">X</span></p>
	<p>您确认要删除该宝贝吗？</p>
	<div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>
        </div>
        <script src="Scripts/jquery.min.js"></script>
        <script src="Scripts/carts.js"></script>
    <script >
       
    </script>
</asp:Content>
