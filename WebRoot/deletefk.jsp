<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deletefk.jsp' starting page</title>
    
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
    String sql="select * from yhfk where wid=?";
    String del="delete from yhfk where wid=?";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8"); 
   String wid=request.getParameter("wid");
    String username=request.getParameter("username");
    String ordersId=request.getParameter("ordersId");
    String email=request.getParameter("email");
    String tel=request.getParameter("tel");
    String talk=request.getParameter("talk");
    %>
    <%
    pst=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,wid);
    rs=pst.executeQuery();
    rs.last();%>
    <%if (rs.getRow()!=0){
    pst=con.prepareStatement(del,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,wid);
    int delcount=pst.executeUpdate();
    if(delcount!=0){%>
    <script type="text/javascript">
    alert("删除成功！");
    window.open("fkcx.jsp","_self");
    </script>
    <%}
    else{ %><script type="text/javascript">
    alert("删除失败，请重试！");
    window.open("fkcx.jsp","_self");
    </script>
    <%}
    }
    else{ %><script type="text/javascript">
    alert("查无此人，请确认后重试！");
    window.open("fkcx.jsp","_self");
    </script>
    <%}%>
</body>
</html>
