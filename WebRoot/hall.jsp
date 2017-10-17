<%@ page language="java" import="java.util.*,edu.hfu.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

GoodsBeanBO gbb=new GoodsBeanBO();

String s_pageNow=(String)request.getAttribute("abc");

int pageNow=1;
if(s_pageNow!=null){
pageNow=Integer.parseInt(s_pageNow);
}

ArrayList al=gbb.getGoodsByPage(6,pageNow);

int pageCount=gbb.getPageCount(6);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物大厅</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
   <body topmargin="0" background="img/bg.bmp">
    <table align="center" width="861" height="534" style="border-collapse:collapse"  border="1">
  <tr>
    <td colspan="3"><jsp:include flush="true" page="ding.jsp"></jsp:include></td>
  </tr>
  
  <%  	int time=0;
  			
  			for(int i=0;i<2;i++){
  			
  				//打印两大行(每行有三个【有可能不够显示!!】)
  				
  				%>
  				<tr>
  				<%
  				
  				//取出三个 al.size=3 time<=2
  				for(int j=0;j<3;j++){
  					
  					GoodsBean gb=new GoodsBean();
  					if(time>=al.size()){
  						
  						//不能再取
  						
  						//默认给一个goodsBean [荷花图片]
  						
  						gb.setId(0);
  						
  						gb.setPhoto("none.jpg");
  						gb.setPrice(0.0f);
  						gb.setName("没有图");
  						
  					}else{
  					
  					gb=(GoodsBean)al.get(time);
  					time++;
  					}
  					%>
  					
  					<td width="46%" height="220">
  					<table width="100%" border="1">
      <tr>
        <td width="30%" rowspan="2"><img src="imge/<%=gb.getPhoto() %>" width="165" height="190" /></td>
        <td width="70%" height="28"><a href="ShowGoodsClServlet?type=showDetail&id=<%=gb.getId() %>"><%=gb.getName() %></a></td>
      </tr>
      <tr>
        <td>简单介绍：
          <p><%=gb.getBrief() %></p></td>
      </tr>
      
      <tr>
        <td colspan="2" align="center"><strong>￥<%=gb.getPrice() %></strong></td>
        </tr>
    </table></td>
    <%
  		}
  		%>
  		</tr>
  		<%
    if(i==0){
  			
  				%>
  				<tr>
    <td colspan="3" height="20" align="center" bgcolor="#00FF99"></td>
  </tr>
  				<%
  			}
  			
  			}
   %>
  	<tr>
    <td height="27" colspan="3" align="center" valign="middle" bgcolor="#00FF99">
    <%
    	for(int i=1;i<=pageCount;i++){
    		
    		%>
    		<a href="ShowGoodsClServlet?type=fenye&pageNow=<%=i %>">【<%=i %>】</a>
    		<%
    	}
    	
    
     %>
    </td>
  </tr>	
 	<tr>
    <td height="195" colspan="6"><img src="img/downkf.gif" width="1076" height="193" /></td>
    <td></td>
  </tr>
</table>
  </body>
</html>
