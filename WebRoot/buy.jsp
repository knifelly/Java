<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList al=(ArrayList)request.getAttribute("mycartinfo");

MyCartBO mbo=(MyCartBO)session.getAttribute("mycart");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	
<script type="text/javascript">
<!--
	
	function delAll(){
		
		window.open("ShoppingClServlet?type=delAll","_self");
	}

-->

</script>
  </head>
   <body topmargin="0" background="img/bg.bmp">
    <center>
    
    <table width="85%" style="border-collapse:collapse"  border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
    <jsp:include flush="true" page="ding.jsp"></jsp:include>
    </td>
  </tr>
<tr>
    <td align="center">
    
    <table width="100%" style="border-collapse:collapse"  border="1" cellpadding="0" cellspacing="0" class="abc">
      <!--DWLayoutTable-->
      <tr>
        <td align="center" colspan="5"><img src="img/cart.gif" width="599" height="49" /></td>
        </tr>
      <tr align="center">
        <td width="218">编号</td>
        <td width="260">名称</td>
        <td width="280">单价</td>
        <td colspan="2">操作</td>
      </tr>
      <%
      
      	for(int i=0;i<al.size();i++){
      	
      	GoodsBean gb=(GoodsBean)al.get(i);
      	%>
      <tr align="center">
        <td><%=gb.getId() %></td>
        <td><%=gb.getName() %></td>
        <td>￥<%=gb.getPrice() %></td>
        <td width="166"><a href="ShoppingClServlet?type=delGoods&Id=<%=gb.getId() %>">删除</a></td>
        <td width="114"><a href="ShowGoodsClServlet?type=showDetail&id=<%=gb.getId() %>">查看</a></td>
      </tr>
      	<%
     }
       %>
      <tr>
        <td height="44">&nbsp;</td>
        <td colspan="5" align="right" valign="middle"><input  onclick="delAll();" name="Submit"  type="button" value="清空购物车" /></td>
      </tr>
        </table>
        
      <tr>
        <td colspan="6"><table class="abc" width="100%" style="border-collapse:collapse"  border="1" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" align="left">您共选择了价值￥<%=mbo.getAllPrice() %>的商品,点<a href="hall.jsp"> 此处 </a >继续购物。</td>
            
            <td align="right"><a href="ShoppingCl2"><img border="0" src="img/cartnext.gif" width="87" height="19" /></a></td>
          </tr>
        </table></td>
        </tr>
  <tr>
    <td height="195" colspan="6" align="center"><img src="img/downkf.gif" width="1076" height="193" /></td>
    <td></td>
  </tr>
  </table>
  </center>
  </body>
</html>

