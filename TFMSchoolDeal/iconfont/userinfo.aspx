<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="TFMSchoolDeal.iconfont.userinfo" %>

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
                    <!--编辑内容-->
                  <div class="operation  mb15">

                      
                     
           	<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;第一页</button>
           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;上一页</button>
           	<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;下一页</button>
           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;最后一页</button>
                      <h3>找到条 当前第页 一共页 每页显示</h3>
           </div>
			  <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           		<thead>
		        <tr>
				<%--<th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>--%>
				<th >昵称</th>
				<th width="130">头像</th>

				<th >学号</th>
				<th >加入时间</th>
				<th >密码</th>                
				<th >个性签名</th>
                 <th>操作</th>
		       </tr>
		       </thead>		      
                   
            <asp:Repeater ID="repeater_yonhu" runat="server">
                <ItemTemplate>
                    <tbody>
                    <tr>

                      <td><%#Eval("Nickname")%></td>
                        <td><%#Eval("Image")%></td>
                        <td><%#Eval("Stuid")%></td>
                        <td><%#Eval("Joindate")%></td>
                        <td><%#Eval("PassWord")%></td>
                        <td><%#Eval("Autograph")%></td>
                        <td>
                            <asp:LinkButton ID="link_update" runat="server">修改</asp:LinkButton>
                            <asp:LinkButton ID="link_delete" runat="server" OnCommand="link_delete_Command" CommandArgument='<%# Eval("Nickname") %>'>删除</asp:LinkButton>
                        </td>
                    </tr>

                    </tbody>
                </ItemTemplate>


            </asp:Repeater>
                   

		      
           	</table>
           </div>




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
