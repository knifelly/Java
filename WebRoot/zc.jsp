<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="/Firstclass/js/validation-framework.js"></script>
    <title>用户注册</title>
    
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
            if(request.getAttribute("msg")!=null){  
                out.println(request.getAttribute("msg"));  
            }  
            %>  
        </strong>  
    </div>  
   <table width="679" height="700" border="0" align="center">
  <tr>
    <td height="85" colspan="2"><img src="img/zc.gif" width="784" height="111" /></td>
  </tr>
  <tr>
    <td width="427">
    <form  action="Zc" method="post" id="form4"  onsubmit="return doValidate(this)">
    <table width="426" height="396" border="0">
        <tr>
          <td>用 户 名 ： 
          <input type="text" name="username" /></td>
        </tr>
       
        <tr>
          <td>设置密码 ：
            <input type="password" name="pwd"  /></td>
        </tr>
        <tr> 
          <td>密码确认 ：
          <input type="password" name="pwd2"  /></td>
        </tr>
         <tr>
          <td width="416">手机号码 ：
            <input type="text" name="tel"  /></td>
        </tr>
         <tr>
          <td width="416">E-mail ：
            <input type="text" name="email"  /></td>
        </tr>
        <tr>
          <td><input type="reset" value="取消" />
            <input type="submit" value="注册" /></td>
        </tr>
      </table>
      </form>
    </td>
    <td width="353" rowspan="2"><img src="img/zcy.jpg" width="246" height="350" /></td>
  </tr>
  
  <tr>
    <td height="45" align="left"><input type="checkbox" name="checkbox" id="checkbox" />
      <span class="STYLE8">我已阅读并接受<span class="STYLE9"><a href="">第一课堂网校注册条款</a></span></span></td>
  </tr>
  <tr>
    <td height="32" colspan="2" align="center"><hr />      <span class="STYLE7">关于我们-代理商区域-在线留言-联系我们-网站地图</span></td>
  </tr>
  <tr>
    <td height="28" colspan="2" align="center">第一课堂网校客服热线： 400-676-2300</td>
  </tr>
  <tr>
    <td height="32" colspan="2" align="center">Copyright(c) 2008-2015 firstclass.com Inc.All rights reserved 第一课堂网校版权所有</td>
  </tr>
  <tr>
    <td height="33" colspan="2" align="center">京ICP证050421号京IC备05067669号 京公安备 110-1081940 网络视听许可证0110531号</td>
  </tr>
</table>
  </body>
</html>

