<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacher1.jsp' starting page</title>
    
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
    PreparedStatement pst;
    ResultSet rs;
    String ins="insert into teacher values(?,?,?,?)";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8"); 
    String tname=request.getParameter("tname");
    String tphoto=request.getParameter("tphoto"); 
     String tkind=request.getParameter("tkind"); 
    String tbrief=request.getParameter("tbrief");  
      %>
    <%
    pst=con.prepareStatement(ins,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,tname);
    pst.setString(2,tphoto);
    pst.setString(3,tkind);
    pst.setString(4,tbrief);
    int inscount=pst.executeUpdate();
    if(inscount!=0){%>
    <script type="text/javascript">
    alert("添加成功！");
    window.open("teacheradd.jsp","_self");
    </script>
    <%}
    else{ %><script type="text/javascript">
    alert("添加失败，请确定后重试！");
    window.open("teacheradd.jsp","_self");
    </script>
    <%}
   
     pst.close();
     con.close(); %>
  </body>
</html>
