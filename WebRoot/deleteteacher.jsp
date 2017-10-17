<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteteacher.jsp' starting page</title>
    
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
    String sql="select * from teacher where tid=?";
    String del="delete from teacher where tid=?";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8"); 
     String tid=request.getParameter("tid");
    String tname=request.getParameter("tname");
    String tphoto=request.getParameter("tphoto");
    String tkind=request.getParameter("tkind");
    String tbrief=request.getParameter("tbrief");
    %>
    <%
    pst=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,tid);
    rs=pst.executeQuery();
    rs.last();%>
    <%if (rs.getRow()!=0){
    pst=con.prepareStatement(del,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,tid);
    int delcount=pst.executeUpdate();
    if(delcount!=0){%>
    <script type="text/javascript">
    alert("删除成功！");
    window.open("teachercx.jsp","_self");
    </script>
    <%}
    }
    else{ %><script type="text/javascript">
    alert("查无此人，请确认后重试！");
    window.open("teachercx.jsp","_self");
    </script>
    <%}%>
  </body>
</html>
