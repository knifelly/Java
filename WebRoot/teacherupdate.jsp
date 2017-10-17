<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacherupdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script language="javascript">
  function check()
{
	if(document.form6.tid.value==""){
	alert("请输入需要修改资料的教师编号");
	document.form6.tid.focus();
	return false;}
	}
	</script>
    <body topmargin="0" background="img/bg3.jpg">
     <table width="100%">
       <tr>
         <td align="center">
            <form name="form6" method="post" id="form6" action="teacherupdate2.jsp">
             <table width="521" >
               <tr height="343">
                 <td>请输入需要修改资料的教师编号:</td>
                 <td><input type="text" name="tid"/></td>
               </tr>
                 <td align="center" colspan="2">
                   <input type="submit" value="修改" onclick="return check();"/>
                   <input type="reset" value="重置"/>
                 </td>
            
             </table>
           </form>
           </td>
           </tr>
           </table>
  </body>
</html>
