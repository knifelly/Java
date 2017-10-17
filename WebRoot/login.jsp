<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <script type="text/javascript" src="/Firstclass/js/validation-framework.js"></script>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div style="color: red;">  
        <strong>   
            <%  
            if(request.getAttribute("msg1")!=null){  
                out.println(request.getAttribute("msg1"));  
            }  
            %>  
        </strong>  
    </div>  
   <table width="1346" height="598" border="0" background="img/login.gif">
  <tr>
    <td width="766" height="594">&nbsp;</td>
    <td width="381" valign="bottom">
    <form action="LoginCl" method="post" id="form1"  onsubmit="return doValidate(this)">
    <table width="393" height="363" border="1" align="right" cellspacing="0" bgcolor="#FFFFFF">
      <!--DWLayoutTable-->
      <tr>
        <td width="401" height="60" align="left" valign="middle" bgcolor="#FFFFFF"><h1 class="STYLE3 STYLE4">第一课堂</h1></td>
      </tr>
       <tr>
        <td align="center" valign="middle"><h2>用户名：
          <input type="text" name="userid" />
        </h2>
          </td>
      </tr>
      <tr>
        <td align="center" valign="middle"><h2>密 码 ：
          <input type="password" name="pwd"  />        
        </h2></td>
      </tr>
      <tr>
        <td height="57" align="center" valign="middle">
        <input type="reset" value="取消" />
          <input type="submit" value="登录" />   
       </td>
      </tr>
      <tr>
        <td height="97" valign="top"><img src="img/dl.gif" width="401" height="93" /></td>
      </tr> 
      <tr>
        <td height="51" align="center" valign="middle" bgcolor="#333333"><h1 class="STYLE2"><a href="zc.jsp" class="STYLE2">立即注册</a></h1></td>
      </tr>
    </table></form></td>
    <td width="185">&nbsp;</td>
  </tr>
</table>
  </body>
</html>
