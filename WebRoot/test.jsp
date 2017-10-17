<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path7 = request.getContextPath();
String basePath7 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path7+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath7%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
	<!--
	
	function forward(){
	      window.open("face.jsp","_self ");
	
	}
	SetTimeout('forward',5000);
	//-->
   </script>
  </head>
  
  <body  background="img/bg.jpg">
  <table hight="846"  align="center"  style="border-collapse:collapse"  border="1">
  <tr>
    <td colspan="4"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
  </tr>
 <%if(request.getAttribute("msg")!=null){  
                out.println(request.getAttribute("msg"));  
                } %>

           <%@ include file="getnumber.jsp" %>
                    
</table>
     
    
  </body>
</html>
