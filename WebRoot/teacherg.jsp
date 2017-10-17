<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacherg.jsp' starting page</title>
    
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
   <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    String url="jdbc:odbc:Firstclass";
    String user="sa";
    String pwd="123456";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
  <%

String tname=request.getParameter("tname");
String tkind=request.getParameter("tkind");
String tphoto1=request.getParameter("tphoto1");
String tphoto=request.getParameter("tphoto");
String tbrief=request.getParameter("tbrief");
String tid=request.getParameter("tid");
String sql="update teacher set tname='"+tname+"',tkind='"+tkind+"',tphoto='"+tphoto1+"',tbrief='"+tbrief+"' where tid= "+tid;
String sql1="update teacher set tname='"+tname+"',tkind='"+tkind+"',tbrief='"+tbrief+"' where tid= "+tid;
 Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
int i;
if(tphoto1==null){
  tphoto1=tphoto;
 i=stmt.executeUpdate(sql1);
}
else{
 i=stmt.executeUpdate(sql);
}

if(i!=0){%>
<script type="text/javascript">
    alert("修改成功！");
    window.open("teacherupdate.jsp","_self");
    </script>
    <%}
else{ %><script type="text/javascript">
    alert("没有进行修改");
    window.open("teacherupdate.jsp","_self");
    </script>
    <%}%>
  </body>
</html>
