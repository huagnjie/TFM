<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="goods_fenlei.aspx.cs" Inherits="TFMSchoolDeal.iconfont.goods_fenlei" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="format-detection" content="telephone=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<link href="../css/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="../font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="../css/module.css" rel="stylesheet" type="text/css" />
		<link href="../css/pages.css" rel="stylesheet" type="text/css" />
		<title>用户信息</title>
		<script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="../js/HUpages.js" type="text/javascript"></script>
		<script src="../js/common.js" type="text/javascript"></script>
        <style>
            h3 { 
                float:right;
            }
        </style>
	</head>
    	<body id="pagestyle" class="backgrounddd">
        <form id="form1" runat="server">
		 <div class="bk-con-message message-section" id="iframe_box">
			<div class="box-module height100b margin0">
				<div class="box-title">用户信息</div>
                 
			  <!--列表内容-->
         




			</div>
	    </div>

        </form>
	</body>
</html>
<script>
    $(function () {
        $("#pagestyle").Hupage({
            slide: '#breadcrumb',
            scrollbar: function (e) {
                e.niceScroll({
                    cursorcolor: "#dddddd",
                    cursoropacitymax: 1,
                    touchbehavior: false,
                    cursorwidth: "3px",
                    cursorborder: "0",
                    cursorborderradius: "3px",
                });
            },
            expand: function (thisBox, settings) {
                settings.scrollbar(thisBox);//设置当前页滚动样式
            }
        })
    })
</script>