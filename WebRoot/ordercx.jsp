<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ordercx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="img/bg1.jpg">
  <form action="deleteorder.jsp" method="post" id="form6" onsubmit="return doValidate(this)">
             <table align="center">
               <tr >
                 <td>请输入要删除的订单编号:</td>
                 <td><input type="text" name="ordersId"/></td>
                  <td align="center" colspan="2">
                   <input type="submit" value="删除" />
                   
                 </td>
               </tr>
               
            </table>
           </form>
   <table align="center" width="70%" hight="100%" style="border-collapse:collapse"  border="1">
                  <tr >
                    <th>订单编号</th>
      			    <th>用户编号</th>
      			    <th>下单日期 </th>
      			    <th>支付方式</th>
      			     <th>是否支付</th>
      			     <th>总价</th>  
                  </tr>
                  <tr>
                    <td ><%@ include file="selectorder.jsp" %> </td> 
                   </tr>
                   </table>
  </body>
</html>
