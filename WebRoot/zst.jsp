<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>知识堂</title>
    
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
    <table align="center" width="1013" border="0">
  <!--DWLayoutTable-->
 <tr>
    <td colspan="4"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
 
    <td width="3"></td>
  </tr>
  <tr>
    <td width="195" rowspan="3"><img src="img/zst4" alt="" /></td>
    <td width="10" rowspan="2">&nbsp;</td>
    <td width="539" height="194" valign="top"><img src="img/zst3" alt="" /></td>
    <td width="244" valign="top"><img src="img/zst5" alt="" /></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4" valign="top"><p><img src="img/zst2" alt="" /></p>      <p><img src="img/zst1" alt="" /></p></td>
    <td height="305" valign="top"><img src="img/zst6" alt="" /></td>
  <td></td>
  </tr>
  <tr>
    <td height="75">&nbsp;</td>
    <td rowspan="2" valign="top"><img src="img/zst7" alt="" /></td>
    <td></td>
  </tr>
  
  <tr>
    <td height="311" align="center" valign="top"><p ><img src="img/zst.jpg" alt="" width="183" height="247" ></p></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="387" colspan="4"></td>
    <td></td>
  </tr>
</table>
  </body>
</html>
