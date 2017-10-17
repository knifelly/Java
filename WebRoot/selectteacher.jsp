<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectteacher.jsp' starting page</title>
    
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
    ResultSet rs=stmt.executeQuery("select * from teacher");
    
    %>
    <%request.setCharacterEncoding("utf-8"); 
    String tid=request.getParameter("tid");
    String tname=request.getParameter("tname");
    String tphoto=request.getParameter("tphoto");
    String tkind=request.getParameter("tkind");
    String tbrief=request.getParameter("tbrief");
    rs.beforeFirst();
    while(rs.next()){%>
    <tr align=center>
    <td><b><%=rs.getString("tid")%></b></td>
    <td><b><%=rs.getString("tname")%></b></td>
    <td><b><%String pic="picd\\"+rs.getString("tphoto");
					 out.print("<img src="+pic+" width='70' height='60'/>");%></b>
						
					</td>
	<td><b><%=rs.getString("tkind")%></b></td>
    <td align="left"><b><%=rs.getString("tbrief")%></b></td>
                   </tr>
          		
     
   <%}
    rs.close();
     stmt.close();
     con.close(); 
     %>
  </body>
</html>