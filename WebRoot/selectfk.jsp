<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath2%>">
    
    <title>My JSP 'selectfk.jsp' starting page</title>
    
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
    ResultSet rs=stmt.executeQuery("select * from yhfk");
    %>
    <%request.setCharacterEncoding("utf-8"); 
    String wid=request.getParameter("wid");
    String username=request.getParameter("username");
    String ordersId=request.getParameter("ordersId");
    String email=request.getParameter("email");
    String tel=request.getParameter("tel");
    String talk=request.getParameter("talk");
    
    rs.beforeFirst();
    while(rs.next()){%>
    <tr align=center>
    <td><b><%=rs.getString("wid")%></b></td>
    <td><b><%=rs.getString("username")%></b></td>
    <td><b><%=rs.getString("ordersId")%></b></td>
     <td><b><%=rs.getString("email")%></b></td>
      <td><b><%=rs.getString("tel")%></b></td>
       <td><b><%=rs.getString("talk")%></b></td>
                   </tr>
          		
     
   <%}
    rs.close();
     stmt.close();
     con.close(); 
     %>
  </body>
</html>
