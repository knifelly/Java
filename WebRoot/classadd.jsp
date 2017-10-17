<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'classadd.jsp' starting page</title>
    
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
	if(document.form5.name.value==""){
	alert("请输入课程名称");
	document.form5.name.focus();
	return false;}
	if(document.form5.price.value==""){
	alert("请输入课程价格");
	document.form5.price.focus();
	return false;
	}
	if(document.form5.teacher.value==""){
	alert("请输入讲授教师");
	document.form5.teacher.focus();
	return false;
	}
	if(document.form5.photo.value=="")
	{alert("请输入照片");
	document.form5.photo.focus();
	return false;}
	if(document.form5.view1.value=="")
	{alert("请输入视频");
	document.form5.view1.focus();
	return false;
	}
	if(document.form5.brief.value=="")
	{alert("请输入课程简介");
	document.form5.brief.focus();
	return false;}
	
}
</script>
   <body topmargin="0" background="img/bg3.jpg">
     <table width="100%">
       <tr>
         <td align="center">
           <form name="form5" method="post" id="form5" action="class1.jsp" >
             <table width="521" height="70%" border="0">
               <tr >
                 <td>课程名称:</td>
                 <td><input name="name"/></td>
               </tr>
               <tr>
                 <td>课程价格:</td>
                 <td><input name="price" /></td>
               </tr>
               <tr>
                 <td>讲授教师:</td>
                 <td><input name="teacher" /></td>
               </tr>
               <tr>
                 <td>课程类别:</td>
                 <td><input name="kind" /></td>
               </tr>
               <tr >
                 <td><br/>请添加图片:</td>
                 <td><input name="photo" type="file" id="photo" size="26" maxlength="200"/></td>
              </tr>
              <tr >
                 <td><br/>请添加视频:</td>
                 <td><input name="view1" type="file" id="view1" size="26" maxlength="200" /></td>
              </tr>
               <tr >
                 <td>课程简介:</td>
               </tr>
               <tr>
                 <td colspan="2"><textarea cols="60" rows="6" name="brief"></textarea></td>
               </tr>
               <tr>
                 <td align="center" colspan="2">
                   <input type="submit" value="课程添加" onclick="return check();" />
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
