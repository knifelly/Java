<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
GoodsBean gb=(GoodsBean)request.getAttribute("brief");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'play.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="text/javascript">
	<!--
	function returnHall(){
			window.open("hall.jsp","_self");
		}
		
		function addGoods(Id){
			window.open("ShoppingClServlet?type=addGoods&Id="+Id,"_self");
		}
	
	
	-->
</script>
    <style type="text/css">
<!--
.STYLE3 {font-size: large}
-->
    </style>
</head>
  
  <body topmargin="0" background="img/bg.bmp">
  <center>
   <table width="80%" height="582"  border="1" cellpadding="0" cellspacing="0" class="abc" style="border-collapse:collapse">
  <tr>
    <td colspan="2" align="center">
    <jsp:include flush="true" page="ding.jsp"></jsp:include>    </td>
  </tr>
  <tr>
    <td height="50" colspan="2" align="center" bgcolor="#E6E6E6"><span class="STYLE3"><%=gb.getName() %></span></td>
    </tr>
  <tr>
  <td width="68%" height="509" rowspan="2"><embed src="vedio/<%=gb.getView() %>" width="100%" height="507" autostart="false" type="video/avi"/></td>
  <td width="32%" align="center" valign="top" bgcolor="#E6E6E6"><img src="bf_right" alt=""  /></td>
  </tr>
  <tr>
    <td align="center" valign="bottom" bgcolor="#E6E6E6"><input type="button" onclick="addGoods(<%=gb.getId() %>)"  name="Submit" value="购买" />
          <input name="Submit2" type="button" onclick="returnHall();" value="返回购物大厅" /></td>
    
  </tr>
  </table>
</body>
</html>
