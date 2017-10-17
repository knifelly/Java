<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学习论坛</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <table width="100%" border="0">
  <tr >
 <td colspan="4"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
 
    <td width="3"></td>
 </tr>
  <tr>
    <td colspan="2"><img src="img/xxlt1" alt="" /></td>
  </tr>
  <tr>
    <td colspan="2"><img src="img/untitled.jpg" alt="" width="1306" height="415" /></td>
  </tr>
  <tr>
    <td colspan="2"><img src="img/xxlt2" alt="" /></td>
  </tr>
  <tr>
    <td colspan="2"><img src="img/xxlt3" alt="" /></td>
  </tr>
  <tr>
    <td colspan="2"><img src="img/xxlt4" alt="" /></td>
  </tr>
  <tr>
    <td colspan="2"><img src="img/xxlt5" alt="" width="1327" /></td>
  </tr>
</table>
  </body>
</html>
