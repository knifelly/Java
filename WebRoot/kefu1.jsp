<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'kefu1.jsp' starting page</title>
    
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
    String ins="insert into yhfk values(?,?,?,?,?,?)";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8"); 
    String name=request.getParameter("username");
    String orderId=request.getParameter("orderId");
    String email=request.getParameter("email"); 
    String address=request.getParameter("address");  
    String tel=request.getParameter("tel");
    String talk=request.getParameter("talk");
    
    pst=con.prepareStatement(ins,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,name);
    pst.setString(2,orderId);
    pst.setString(3,email);
    pst.setString(4,address);
    pst.setString(5,tel);
    pst.setString(6,talk);
    int inscount=pst.executeUpdate();
    if(inscount!=0){%>
    <script type="text/javascript">
    alert("添加成功！");
    window.open("kefu.html","_self");
    </script>
    <%}
    else{ %><script type="text/javascript">
    alert("添加失败，请确定后重试！");
    window.open("kefu.html","_self");
    </script>
    <%}
 
     pst.close();
     con.close(); %>
  </body>
</html>

