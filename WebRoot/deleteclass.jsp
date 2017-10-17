<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteclass.jsp' starting page</title>
    
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
    String sql="select * from vedio1 where id=?";
    String del="delete from vedio1 where id=?";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
    <%request.setCharacterEncoding("utf-8"); 
     String id=request.getParameter("id");
    String name=request.getParameter("name");
    String brief=request.getParameter("brief");
    String teacher=request.getParameter("teacher");
    String photoe=request.getParameter("price");
    String price=request.getParameter("photo");
      String view1=request.getParameter("view1");
       String kind=request.getParameter("kind");
    
    %>
    <%
    pst=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,id);
    rs=pst.executeQuery();
    rs.last();%>
    <%if (rs.getRow()!=0){
    pst=con.prepareStatement(del,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    pst.setString(1,id);
    int delcount=pst.executeUpdate();
    if(delcount!=0){%>
    <script type="text/javascript">
    alert("删除成功！");
    window.open("classcx.jsp","_self");
    </script>
    <%}
    else{ %><script type="text/javascript">
    alert("删除失败，请重试！");
    window.open("classcx.jsp","_self");
    </script>
    <%}
    }
    else{ %><script type="text/javascript">
    alert("查无此人，请确认后重试！");
    window.open("class.jsp","_self");
    </script>
    <%}%>
</body>
</html>