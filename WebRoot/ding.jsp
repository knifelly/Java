<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ding.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {font-family: "楷体"}
-->
    </style>
</head>
  
  <body>
    <table style="border-collapse:collapse" >
      <!--DWLayoutTable-->
      <tr >
    <td width="285" height="28" align="right" valign="middle" bgcolor="#F0F0F0"><span class="STYLE1">欢迎来到第一课堂网校</span> </td>
       <td width="80" colspan="5" align="center" valign="middle" bgcolor="#F0F0F0"><a href="login.jsp" class=" STYLE1">请登录</a></td>
    <td width="62" align="center" valign="middle" bgcolor="#F0F0F0"><a href="zc.jsp" class=" STYLE1">注册</a></td>
    <td width="472" bgcolor="#F0F0F0">&nbsp;</td>
    <td width="93" align="center" valign="middle" bgcolor="#F0F0F0"><a href="ShoppingClServlet?type=show"><img src="img/face_wps13FE.tmp.jpg" width="85" height="22" /></a></td>
    <td width="87" align="center" valign="middle" bgcolor="#F0F0F0"><a href="kefu.html" class=" STYLE1">问题反馈</a></td>
    <td width="79" align="center" valign="middle" bgcolor="#F0F0F0"><a href="mst.jsp" class="STYLE1">名师堂</a></td>
    <td width="87" align="center" valign="middle" bgcolor="#F0F0F0"><a href="htdl.html" class="STYLE1">后台管理</a></td>
    
  </tr>
  
  
  
     <tr >
    <td height="102" colspan="20" align="center" valign="top" bgcolor="#FFFFFF">
   <img src="img/t0.gif" width="194" height="96"><a href="face.jsp"><img  border="0" src="img/t1.gif" width="89" height="100"></a><a href="xxlt.jsp"><img  border="0" src="img/t2.gif" width="89" height="100"/></a><a href="zxzx.jsp"><img  border="0" src="img/t3.gif" width="82" height="100"></a><a href="gkk.jsp"><img  border="0" src="img/t4.gif" width="85" height="100"></a><a href="zst.jsp"><img border="0" src="img/t5.gif" width="78" height="100"></a><a href="dnabc.html"><img border="0" src="img/t6.gif" width="94" height="100"></a><a href="qypx.html"><img border="0" src="img/t7.gif" width="91" height="100"></a><img border="0" src="img/t8.gif" width="219" height="100"></td>
  </tr>
      <tr >
    <td height="29" colspan="13" align="center" valign="top" bgcolor="#00CC99"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  </table>
</body>
</html>
