<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacheradd.jsp' starting page</title>
    
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
	if(document.form6.tname.value==""){
	alert("请输入教师名");
	document.form6.tname.focus();
	return false;}
	if(document.form6.tkind.value==""){
	alert("请输入授课类别");
	document.form6.tkind.focus();
	return false;
	}
	if(document.form6.tphoto.value=="")
	{alert("请输入照片");
	document.form6.tphoto.focus();
	return false;}
	if(document.form6.tbrief.value=="")
	{alert("请输入简介");
	document.form6.tbrief.focus();
	return false;}
	
}
</script>
   <body topmargin="0" background="img/bg3.jpg">
     <table width="100%">
       <tr>
         <td align="center">
            <form name="form6" method="post" id="form6" action="teacher2.jsp" >
             <table width="521" height="313">
               <tr >
                 <td>教师名:</td>
                 <td><input type="text" name="tname"/></td>
               </tr>
               <tr>
                 <td>授课类别:</td>
                 <td><input type="text" name="tkind" /></td>
               </tr>
               <tr>
                 <td><br/>请添加照片:</td>
                 <td><input name="tphoto" type="file" id="photo" /></td>
              </tr>
               <tr>
                 <td>简介:</td>
               </tr>
               <tr>
                 <td colspan="2"><textarea cols="60" rows="6" name="tbrief"></textarea></td>
               </tr>
               <tr>
                 <td align="center" colspan="2">
                   <input type="submit" value="添加" onclick="return check();"/>
                   <input type="reset" value="重置"/>
                 </td>
               </tr>
             </table>
           </form>
           </td>
           </tr>
           </table>
  </body>
</html>
