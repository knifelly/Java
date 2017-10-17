<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath2%>">
    
    <title>My JSP 'teachercx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
   <body  background="img/bg1.jpg">
   <form action="deleteteacher.jsp" method="post" id="form6" onsubmit="return doValidate(this)">
             <table align="center">
               <tr >
                 <td>请输入教师编号:</td>
                 <td><input type="text" name="tid"/></td>
                  <td align="center" colspan="2">
                   <input type="submit" value="删除" />
                   
                 </td>
               </tr>
               
            </table>
           </form>
      <table  width="90%" hight="100%" style="border-collapse:collapse" border="1">
<tr >
                    <th width="125">教师编号</th>
                     <th width="10%">教师名</th>
                     <th width="80" hight="189">照片</th>
                     <th width="157">授课类别</th>
      			    <th width="59%" hight="200">简介</th> 
        </tr>
                    <tr >
                    <td ><%@ include file="selectteacher.jsp" %> </td>
                  </tr>
 
  </table>
</body>
</html>