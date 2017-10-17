<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList al=(ArrayList)request.getAttribute("mycartInfo");

MyCartBO mcb=(MyCartBO)session.getAttribute("mycart");

UserBean ub=(UserBean)session.getAttribute("userInfo");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>填写购物信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	

  </head>
  <script language="javascript">
 
function check()
{
	if(document.form6.tel.value=="")
	{alert("请输入电话");
	document.form6.tel.focus();
	return false;}
	if(document.form6.email.value=="")
	{alert("请输入邮箱地址");
	document.form6.email.focus();
	return false;}
	
}

</script>
  <body topmargin="0">
  <div style="color: red;">  
        <strong>   
            <%  
            if(request.getAttribute("msg1")!=null){  
                out.println(request.getAttribute("msg1"));  
            }  
            %>  
        </strong>  
    </div>  
    <center>
    <table width="80%" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
    <jsp:include flush="true" page="ding.jsp"></jsp:include>
    </td>
  </tr>
  <tr>
    <td align="center"><table name="form6" id="form6" method="post" action="orderg.jsp?userid=<%=ub.getUserid() %>" width="100%" border="1" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center"><img src="img/cartnavi-3.gif" width="599" height="49" /></td>
      </tr>
      <tr>
        <td align="center">
         <form name="form6" id="form6" action="order.jsp" method="post">
        <table  width="70%" border="1" cellpadding="0" cellspacing="0" class="abc">
          <tr>
            <td colspan="2" align="center">购买人的信息</td>
            </tr>
             <tr>
            <td width="50%" align="right">用 户 号：</td>
            <td width="50%"><%=ub.getUserid() %></td>
          </tr>
          <tr>
            <td width="50%" align="right">用 户 名：</td>
            <td width="50%"><input type="text" name="textfield4" value="<%=ub.getUsername() %>" /></td>
          </tr>
          <tr>
            <td align="right">*联系电话：</td>
            <td><input type="text" name="textfield4" value="<%=ub.getTel() %>" /></td>
          </tr>
          <tr>
            <td align="right">*电子邮件：</td>
            <td><input type="text" name="textfield5" value="<%=ub.getEmail()%>" /></td>
          </tr>
           <tr>
            <td align="right">用户等级：</td>
            <td><%=ub.getGrade() %></td>
          </tr>
          
        </table>
        </form>
        </td>
      </tr>
      <tr>
        <td align="center"><table width="70%" border="1" cellpadding="0" cellspacing="0" class="abc">
          <tr>
            <td colspan="4" align="center">我的购物车情况</td>
            </tr>
          <tr>
            <td align="center">编号</td>
            <td align="center">课程名</td>
            <td>单价</td>
          </tr>
          <%
          //循环显示购物车的内容
          	for(int i=0;i<al.size();i++){
          		GoodsBean gb=(GoodsBean)al.get(i);
          		%>
          		<tr>
            <td align="center"><%=gb.getId() %></td>
            <td align="center"><%=gb.getName() %></td>
            <td><%=gb.getPrice() %></td>
          </tr>
          		<%
          	}
           %>
          <tr>
            <td colspan="4">您共选择了价值¥<%=mcb.getAllPrice() %>的商品。</td>
            </tr>
          <tr>
            <td colspan="4" align="center"><a href="ShoppingClServlet?type=show">返回修改我的购物车</a></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td align="right"><a href="OrderClServlet"><img border="0" src="img/cartnext.gif" width="87" height="19" /></a></td>
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
