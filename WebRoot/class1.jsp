<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'class1.jsp' starting page</title>
    
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
    String ins="insert into vedio1 values(?,?,?,?,?,?,?)";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String brief=request.getParameter("brief");
    String teacher=request.getParameter("teacher");
     String price=request.getParameter("price");
     String photo=request.getParameter("photo");
     String view1=request.getParameter("view1");
     String kind=request.getParameter("kind");
   
    pst=con.prepareStatement(ins,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,name);
    pst.setString(2,brief);
    pst.setString(3,teacher);
    pst.setString(4,price);
    pst.setString(5,photo);
     pst.setString(6,view1);
    pst.setString(7,kind);
      int inscount=pst.executeUpdate();
     if(inscount!=0){%>
    <script type="text/javascript">
    alert("添加成功！");
    window.open("classadd.jsp","_self");
    </script>
    <%}
    else{ %><script type="text/javascript">
    alert("添加失败，请确定后重试！");
    window.open("classadd.jsp","_self");
    </script>
    <%}
 
     
     pst.close();
     con.close(); %>
     }
  </body>
</html>
