<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath2%>">
    
    <title>My JSP 'classcx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body topmargin="0" background="img/bg1.jpg" >
 <form action="deleteclass.jsp" method="post" id="form6" onsubmit="return doValidate(this)">
             <table align="center">
               <tr >
                 <td>请输入要删除的课程编号:</td>
                 <td><input type="text" name="id"/></td>
                  <td align="center" colspan="2">
                   <input type="submit" value="删除" />
                   
                 </td>
               </tr>
               
            </table>
           </form>
    <table hight="100%" width="70%" style="border-collapse:collapse" border="1" >
                  <tr >
                    <th>课程编号</th>
      			    <th>课程名称</th>
      			    <th width="25%" hight="200">课程简介</th>
      			    <th>讲授教师</th>
      			    <th>价格</th>
      			     <th>种类</th>  
                  </tr>
                  <tr>
                    <td ><%@ include file="selectclass.jsp" %> </td> 
                   </tr>
                   </table>
  </body>
</html>
