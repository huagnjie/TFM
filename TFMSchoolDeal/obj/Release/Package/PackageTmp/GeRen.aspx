<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeRen.aspx.cs" Inherits="PersonalCenter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/stylees.css" rel="stylesheet" />
    <link href="css/iconfont.css" rel="stylesheet" />
    <title></title>
</head>
<frameset rows="150,*" frameborder="no" border="0" framespacing="0" id="a">
    <frameset cols="*" frameborder="no" border="0" framespacing="0" id="Frameset1">
  <frame src="Frame/TopFrame.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
	</frameset>
    <frameset cols="*" frameborder="no" border="0" framespacing="0" id="Frameset2">
	<frameset rows="*" id="setFrame" frameborder="no" border="0" framespacing="0">
        <frameset cols="220,*" id="Frameset3" frameborder="no" border="0" framespacing="0">
    <frame src="Frame/LeftFrame.aspx" name="leftFrame" noresize                                                                                                                                               scrolling="auto" id="leftFrame" title="leftFrame" />
    <frame src="Frame/MainFrame.aspx" name="Main" noresize scrolling="auto" id="Main" title="mainFrame" />
        </frameset>
  </frameset>
    </frameset>
</frameset>

</html>
