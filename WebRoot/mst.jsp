<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath2%>">
    
    <title>My JSP 'mst.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin="0" background="img/bg.bmp">
  <table align="center"  style="border-collapse:collapse"  border="1">
  <tr>
    <td colspan="4"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
  </tr>
      <table align="center" width="100%" hight="100%"  border="1">
                  <tr >
                    <th>教师编号</th>
      			    <th>教师名</th>
      			    <th hight="200">照片</th>
      			    <th>授课类别</th>
      			    <th  width="65%" hight="200">简介</th>     
                  </tr>
                  <tr>
                    <td ><%@ include file="selectteacher.jsp" %> </td> 
                   </tr>
                   </table>
                  
</table>
     
  </body>
</html>
