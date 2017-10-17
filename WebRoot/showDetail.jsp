
<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//取出要显示的信息(goodsBean)
GoodsBean gb=(GoodsBean)request.getAttribute("brief");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物详情</title>

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<script type="text/javascript">
	
	<!--
		//响应点击返回购物大厅的事件
		
		function returnHall(){
			window.open("hall.jsp","_self");
		}
		
		function addGoods(Id){
			window.open("ShoppingClServlet?type=addGoods&Id="+Id,"_self");
		}
	
	-->
	</script>
  </head>
  
   <body topmargin="0" background="img/bg.bmp">
   <center>
   <table width="80%" class="abc" style="border-collapse:collapse"  border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
    <jsp:include flush="true" page="ding.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td align="center"><table class="abc" width="100%"  border="1" cellspacing="0" cellpadding="0">
      <tr>
    <td height="58" colspan="2"><%=gb.getName() %></td>
  </tr>
  <tr>
    <td height="32" colspan="2"><em><%=gb.getBrief() %></em></td>
  </tr>
  <tr>
    <td width="20%"  rowspan="5"><font size="5"><img width="220" height="256" src="imge/<%=gb.getPhoto() %>" alt=""></font></td>
    <td width="221" height="49" valign="baseline"><span class="STYLE4">课程号：<%=gb.getId() %></span><br /></td>
  </tr>
  <tr>
    <td height="49" align="left" valign="bottom"><span class="STYLE4">价格：<%=gb.getPrice() %></span></td>
  </tr>
  <tr>
    <td height="41" align="left" valign="bottom"><span class="STYLE4">授课教师：<%=gb.getTeacher() %></span></td>
  </tr>
  <tr>
    <td height="41" align="center" valign="bottom"><span class="STYLE4"><a href="ShowVedioClServlet?type=showDetail&id=<%=gb.getId() %>">免费试听<a/></span></td>
  </tr>
  <tr>
    <td height="49" valign="top">&nbsp;</td>
  </tr>
  <tr>
        <td align="right" height="23" colspan="2"><input type="button" onclick="addGoods(<%=gb.getId() %>)"  name="Submit" value="购买" />
          <input name="Submit2" type="button" onclick="returnHall();" value="返回购物大厅" /></td>
        </tr>
  
 
    </table></td>
  </tr>
  <tr>
    <td align="center">
    <jsp:include flush="true" page="tail.jsp"></jsp:include>
    </td>
  </tr>
</table>
   </center>
  </body>
</html>