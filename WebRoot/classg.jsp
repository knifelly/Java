<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
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
    
    <title>My JSP 'classg.jsp' starting page</title>
    
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
String id=request.getParameter("id");
String name=request.getParameter("name");
String price=request.getParameter("price");
String teacher=request.getParameter("teacher");
String kind=request.getParameter("kind");
String photo=request.getParameter("photo");
String view1=request.getParameter("view1");
String photo1=request.getParameter("photo1");
String view2=request.getParameter("view2");
String brief=request.getParameter("brief");
String sql="update vedio1 set name='"+name+"',price='"+price+"',teacher='"+teacher+"',kind='"+kind+"',brief='"+brief+"' where id= "+id;
String sql2="update vedio1 set name='"+name+"',price='"+price+"',teacher='"+teacher+"',kind='"+kind+"',view1='"+view2+"',brief='"+brief+"' where id= "+id;
String sql1="update vedio1 set name='"+name+"',price='"+price+"',teacher='"+teacher+"',kind='"+kind+"',photo='"+photo1+"',brief='"+brief+"' where id= "+id;
String sql3="update vedio1 set name='"+name+"',price='"+price+"',teacher='"+teacher+"',kind='"+kind+"',photo='"+photo1+"',view1='"+view2+"',brief='"+brief+"' where id= "+id;
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
if(photo1!=null && view2==null){
view2=view1;
stmt.executeUpdate(sql1);
}
if(photo==null && view2!=null){
photo1=photo;
stmt.executeUpdate(sql2);
}
if(photo1!=null && view2!=null){
   stmt.executeUpdate(sql3);
}
if(photo1==null && view2==null ){
photo1=photo;
view2=view1;
stmt.executeUpdate(sql);
}




%>
<script type="text/javascript">
    alert("ÐÞ¸Ä³É¹¦£¡");
    window.open("classupdate.jsp","_self");
    </script>
  </body>
</html>
