<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacherupdate2.jsp' starting page</title>
    
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
	if(document.form6.tname.value==""){
	alert("�������ʦ��");
	document.form6.tname.focus();
	return false;}
	if(document.form6.tkind.value==""){
	alert("�������ڿ����");
	document.form6.tkind.focus();
	return false;
	}
	if(document.form6.tbrief.value=="")
	{alert("��������");
	document.form6.tbrief.focus();
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
  String tid=request.getParameter("tid");
   %>
            <form name="form6" id="form6" method="post" action="teacherg.jsp?tid=<%=tid %>" >
             <%
  String sql="select * from teacher where tid="+tid;
    String tname="";
    String tphoto="";
    String tkind="";
    String tbrief="";
    Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    ResultSet rs=stmt.executeQuery(sql);
  while(rs.next()){
  tname=rs.getString("tname");
  tphoto=rs.getString("tphoto");
  tkind=rs.getString("tkind");
  tbrief=rs.getString("tbrief");
  }
  rs.last();
   if (rs.getRow()!=0){%>
    <table width="521" height="313">
             <tr >
             
                <td>��ʦ���Ϊ:  </td>      
                <td>         <%=tid%> </td>
                 </tr>
               <tr >
                 <td>��ʦ��:</td>
                 <td><input type="text" name="tname"  id='tname'  value='<%=tname%>' /></td>
               </tr>
               <tr>
                 <td>�ڿ����:</td>
                 <td><input type="text" name="tkind" id='tkind'  value='<%=tkind%>' /></td>
               </tr>
               <tr>
                 <td><br/>��Ƭ:</td>
                 <td><%String pic="picd\\"+rs.getString("tphoto");
					 out.print("<img src="+pic+" width='70' height='60'/>");%></td>
              </tr>
              <tr>
              <td><br/>�������Ƭ:</td>
              <td><input type='file' name="tphoto1" /></td>
              </tr>
               <tr>
                 <td>���:</td>
               </tr>
               <tr>
                 <td colspan="2"><textarea cols="60" rows="6" name="tbrief"><%=tbrief%></textarea></td>
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
