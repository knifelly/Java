<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'classupdate2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script language="javascript">
function check()
{
	if(document.form5.name.value==""){
	alert("������γ�����");
	document.form5.name.focus();
	return false;}
	if(document.form5.price.value==""){
	alert("������γ̼۸�");
	document.form5.price.focus();
	return false;
	}
	if(document.form5.teacher.value==""){
	alert("�����뽲�ڽ�ʦ");
	document.form5.teacher.focus();
	return false;
	}
	
	if(document.form5.brief.value=="")
	{alert("������γ̼��");
	document.form5.brief.focus();
	return false;}
	
}
</script>
  
  <body topmargin="0" background="img/bg3.jpg">
   <% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    String url="jdbc:odbc:Firstclass";
    String user="sa";
    String pwd="123456";
    Connection con=DriverManager.getConnection(url,user,pwd);
    %>
     <table width="100%">
       <tr>
         <td align="center">
         <%
  String id=request.getParameter("id");
   %>
            <form name="form5" id="form5" action="classg.jsp?id=<%=id %>" method="post">
             <%
  String sql="select * from vedio1 where id="+id;
  
    String name="";
    String brief="";
    String teacher="";
    String price="";
    String photo="";
    String view1="";
    String kind="";
    Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
  ResultSet rs=stmt.executeQuery(sql);
  while(rs.next()){
  name=rs.getString("name");
  brief=rs.getString("brief");
  teacher=rs.getString("teacher");
  price=rs.getString("price");
  photo=rs.getString("photo");
  view1=rs.getString("view1");
  kind=rs.getString("kind");
  
  }
  rs.last();
   if (rs.getRow()!=0){%>
    <table width="521" height="313">
             <tr >
             
                <td>�γ̱��Ϊ:  </td>      
                <td>         <%=id%> </td>
                 </tr>
               <tr >
                 <td>�γ�����:</td>
                 <td><input name="name" id='name'  value='<%=name%>'/></td>
               </tr>
               <tr>
                 <td>�γ̼۸�:</td>
                 <td><input name="price" id='price'  value='<%=price%>' /></td>
               </tr>
               <tr>
                 <td>���ڽ�ʦ:</td>
                 <td><input name="teacher" id='teacher'  value='<%=teacher%>'/></td>
               </tr>
               <tr>
                 <td>�γ����:</td>
                 <td><input name="kind" id='kind'  value='<%=kind%>'/></td>
               </tr>
                <tr>
                 <td><br/>ԭ����Ƭ:</td>
                 <td><%String imge="imge\\"+rs.getString("photo");
					 out.print("<img src="+imge+" width='70' height='60'/>");%></td>
              </tr>
             
                <tr>
              <td><br/>�������Ƭ:</td>
              <td><input type='file' name="photo1" /></td>
              </tr>
              <tr >
                 <td><br/>ԭ����Ƶ��ַ:</td>
                 <td size="26" maxlength="200"><%=view1%></td>
              </tr>
              <tr >
                 <td><br/>�������Ƶ:</td>
                 <td><input name="view2" type="file" id="view2" size="26" maxlength="200" /></td>
              </tr>
               <tr >
                 <td>�γ̼��:</td>
               </tr>
               <tr>
                 <td colspan="2"><textarea cols="60" rows="6" name="brief" id="brief" ><%=brief%></textarea></td>
               </tr>
               <tr>
                 <td align="center" colspan="2">
                   <input type="submit" value="�޸�" onclick="return check();"/>
                   <input type="reset" value="����"/>
                 </td>
               </tr>
             </table>
           </form>
           </td>
           </tr>
           </table>
    <%}
    else{ %><script type="text/javascript">
    alert("���˲����ڣ��޷������޸�");
    window.open("teacherupdate.jsp","_self");
    </script>
    <%}
   %>
  </body>
</html>
