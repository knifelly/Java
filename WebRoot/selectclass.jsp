<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath1%>">
    
    <title>My JSP 'selectclass.jsp' starting page</title>
    
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
    Connection con=DriverManager.getConnection(url,user,pwd);
    Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    ResultSet rs=stmt.executeQuery("select * from vedio1");
    %>
    <%request.setCharacterEncoding("utf-8"); 
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String brief=request.getParameter("brief");
    String teacher=request.getParameter("teacher");
    String price=request.getParameter("price");
    String photo=request.getParameter("photo");
    String view=request.getParameter("view");
    String kind=request.getParameter("kind");
  
    rs.beforeFirst();
    while(rs.next()){%>
    <tr align=center>
    <td><b><%=rs.getString("id")%></b></td>
    <td><b><%=rs.getString("name")%></b></td>
    <td><b><%=rs.getString("brief")%></b></td>
    <td><b><%=rs.getString("teacher")%></b></td>
    <td><b><%=rs.getString("price")%></b></td>
    <td><b><%=rs.getString("kind")%></b></td>
                   </tr>
          		
     
   <%}
    rs.close();
     stmt.close();
     con.close(); 
     %>
  </body>
</html>
