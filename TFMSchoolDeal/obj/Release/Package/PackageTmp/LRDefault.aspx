<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="LRDefault.aspx.cs" Inherits="TFMSchoolDeal.LRDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/jquery-1.11.0.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Content/zzsc.css" />
    <link href="Content/LRDefaultCss.css" rel="stylesheet" />

    <div class="demo form-bg" style="background-image:url(Images/reg_bg.jpg);background-repeat:no-repeat;background-size:100% 800px;">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div id="Form1" class="form-horizontal">

                        <%--用户登录窗口的DIV--%>
                        <div id="login_div">
                            <span class="heading">用户登录</span>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="login_txt_userName" runat="server"  ForeColor="Gray" placeholder="用户名" ></asp:TextBox>
                                <i class="fa fa-user"></i>
                            </div>
                            <asp:TextBox CssClass="PinDuin" ID="TextBox1" runat="server"  ForeColor="Gray" placeholder="用户名" style="display:none"></asp:TextBox>
                            <div class="form-group help">
                                <asp:TextBox runat="server" CssClass="form-control" TextMode="Password"  ID="login_txt_passWord" placeholder="密码" ForeColor="Gray"></asp:TextBox>
                                <i class="fa fa-lock"></i>
                                <a href="#" class="fa fa-question-circle"></a>
                                <asp:TextBox runat="server" CssClass="CheckPinDu"  ID="TextBox2" placeholder="密码" ForeColor="Gray" style="display:none"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <div class="drag">
                                    <div class="bg"></div>
                                    <div class="text" onselectstart="return false;">请拖动滑块解锁</div>
                                    <div class="btn">>></div>
                                </div>
                            </div>
                            <div class="form-group" id="main_checkboxdiv">
                                <div class="main-checkbox">
                                    <%--<asp:CheckBox  runat="server" ID="checkbox1"  Checked="True" />--%>
                                    <input type="checkbox" id="checkbox1"/>
                                    <label for="checkbox1"></label>
                                </div>
                                <span class="RL_text" style="font-size: 14px; margin-bottom: -4px; font-family: '宋体';">记住我</span>
                                <%--<asp:Button ID="RL_btn_login" OnClientClick="return true"  runat="server" CssClass="RL_btn RL_btn-default" Text="立即登录" OnClick="RL_btn_login_Click" />--%>
                                <asp:Button  OnClick="RL_btn_login_Click1" ID="RL_btn_login" runat="server" CssClass="RL_btn RL_btn-default" Text="立即登录" OnClientClick="return true" CausesValidation="True"/>
                            </div>

                            <div class="form-group">
                                <div style="text-align: right; margin-right: 6px" class="a_divssssswsss">
                                    <a href="#" style="font-size: 12px;" onclick="$('#login_div').hide(1000);$('#resgin_div').show(1000);">还没有账号？点我立即注册</a>
                                </div>
                            </div>
                            <%--通过获取其的Text来判断是否通过滑动验证--%>
                            <asp:TextBox runat="server" CssClass="lblasss" ID="post" Style="display:none" ></asp:TextBox>
                            <%--通过获取其的Text来判断是否选择了   记住我--%>
                            <asp:TextBox runat="server" Text="false" CssClass="lblchecked" ID="lblChecked" Style="display:none"></asp:TextBox>
                        </div>


                        <%--用户注册窗口的DIV--%>
                        <div id="resgin_div">
                            <span class="heading">用户注册</span>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="resgin_txt_userName"  runat="server" placeholder="用户名" ForeColor="Gray" ></asp:TextBox>
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="form-group help">
                                <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" placeholder="密码" ID="resgin_txt_passWord"  ForeColor="Gray"></asp:TextBox>
                                <i class="fa fa-lock"></i>
                            </div>
                            <div class="form-group help">
                                <asp:TextBox runat="server" CssClass="form-control" TextMode="Password" placeholder="确认密码" ID="resgin_txt_qinPassWord"  ForeColor="Gray"></asp:TextBox>
                                <i class="fa a fa-lock"></i>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="RL_btn_resgin" runat="server"  CssClass="RL_btn  RL_btn-default" Text="立即注册" OnClick="RL_btn_resgin_Click" UseSubmitBehavior="False" />
                            </div>
                            <div class="form-group">
                                <div style="text-align: right; margin-right: 6px" class="a_divssssswsss">
                                    <a href="#" style="font-size: 12px;" onclick="$('#login_div').show(1000);$('#resgin_div').hide(1000);">注册好了？点我立即登录</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <script src="Scripts/LRDefaultJs.js"></script>
</asp:Content>
