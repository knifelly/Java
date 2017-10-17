<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公开课</title>
    
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
   <table width="1358" height="398" border="0">
  <tr >
 <td colspan="4"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
 
    <td width="3"></td>
 </tr>
  <tr>
    <td><img src="img/gkk1" alt="" width="1351" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk2" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk3" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk4" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk5" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk6" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk7" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk8" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk9" alt="" /></td>
  </tr>
  <tr>
    <td><img src="img/gkk0" alt="" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
  </body>
</html>
