<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//订单的详细信息取出

OrderInfoBean oib=(OrderInfoBean)request.getAttribute("detailbean");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/my.css">


  </head>
  
  <body topmargin="0" background="img/bg.bmp">
    <center>
    <table width="80%" style="border-collapse:collapse"  border="1" cellspacing="0" cellpadding="0">
     <tr>
    <td align="center">
    <jsp:include flush="true" page="ding.jsp"></jsp:include>
    </td>
    </tr>
  <tr>
    <td align="center"><table width="100%" style="border-collapse:collapse"  border="1" cellpadding="0" cellspacing="0" class="abc">
      <tr>
        <td align="center" colspan="5"><img src="img/cart.gif" width="599" height="49" /></td>
        </tr>
      <tr>
        <td colspan="9" align="center">图片</td>
        </tr>
      <tr>
        <td colspan="9" align="center">订单详细信息</td>
        </tr>
      <tr align="center">
        <td>订单号</td>
        <td>用户名</td>
        <td>电话</td>
        <td>电子邮件</td>
        <td>总价</td>
        <td>&nbsp;</td>
      </tr>
      <tr align="center">
        <td><%=oib.getOrdersId() %></td>
        <td><%=oib.getUsername() %></td>
        <td><%=oib.getTel() %></td>
        <td><%=oib.getEmail() %></td>
        <td>¥<%=oib.getTotalPrice() %></td>
        
      </tr>
      <tr>
        <td colspan="9" align="center">您的订单已经完成，服务器将在稍后时候向您的电子邮箱发送确认信息，并确认订单信息。</td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="195" colspan="6"><img src="img/downkf.gif" width="1076" height="193" /></td>
    <td></td>
  </tr>
</table>
    </center>
  </body>
</html>

