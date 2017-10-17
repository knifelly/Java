<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>第一课堂网上学习平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {font-family: "楷体"}
.STYLE3 {font-weight: bold}
.STYLE4 {font-family: "黑体"}
.STYLE6 {font-size: xx-large}
.STYLE9 {font-weight: bold}
.STYLE10 {font-weight: bold; }
.STYLE22 {font-family: "方正兰亭黑简体"; font-size: 28px; }
-->
    </style>
</head>
  
  <body>
<div >  
        <strong>   
            <%  
            if(request.getAttribute("msg1")!=null){  
                out.println(request.getAttribute("msg1")); 
            }  
             
            %>  
        </strong>  
    </div>  
   <table width="100%" height="1700" border="0">
  <tr >
    <td height="10" colspan="3" align="right" valign="middle" bgcolor="#F0F0F0"><span class="STYLE1">欢迎来到第一课堂网校</span> </td>
    <td colspan="4" align="center" valign="middle" bgcolor="#F0F0F0"><a href="login.jsp" class=" STYLE1">请登录</a></td>
    <td width="35" align="center" valign="middle" bgcolor="#F0F0F0"><a href="zc.jsp" class=" STYLE1">注册</a></td>
    <td colspan="5" bgcolor="#F0F0F0">    </td>
    <td width="92" align="center" valign="middle" bgcolor="#F0F0F0"><a href="ShoppingClServlet?type=show"><img src="img/face_wps13FE.tmp.jpg" width="85" height="22" /></a></td>
    <td colspan="3" align="center" valign="middle" bgcolor="#F0F0F0"><a href="kefu.html" class=" STYLE1">问题反馈</a></td>
    <td width="90" align="center" valign="middle" bgcolor="#F0F0F0"><a href="mst.jsp" class="STYLE1">名师堂</a></td>
    <td colspan="2" align="center" valign="middle" bgcolor="#F0F0F0"><a href="htdl.html" class="STYLE1">后台管理</a></td>
  </tr>
  
  
    <tr >
    <td height="102" colspan="20" align="center" valign="top" bgcolor="#FFFFFF">
   <img src="img/t0.gif" width="194" height="96"><a href="face.jsp"><img  border="0" src="img/t1.gif" width="89" height="100"></a><a href="xxlt.jsp"><img  border="0" src="img/t2.gif" width="89" height="100"/></a><a href="zxzx.jsp"><img  border="0" src="img/t3.gif" width="82" height="100"></a><a href="gkk.jsp"><img  border="0" src="img/t4.gif" width="85" height="100"></a><a href="zst.jsp"><img border="0" src="img/t5.gif" width="78" height="100"></a><a href="dnabc.html"><img border="0" src="img/t6.gif" width="94" height="100"></a><a href="qypx.html"><img border="0" src="img/t7.gif" width="91" height="100"></a><img border="0" src="img/t8.gif" width="219" height="100"></td>
  </tr>

  <tr >
    <td height="37" colspan="4" valign="top" bgcolor="#F0F0F0"><img src="img/face_wpsC15F.tmp.jpg" width="335" height="35" /></td>
    <td colspan="9" align="center" valign="middle" bgcolor="#F0F0F0">
      <input type="text" name="textfield" id="textfield" />
       <input type="submit" name="button" id="button" value="搜索" /></td>
    <td colspan="3" align="right" valign="middle" bgcolor="#F0F0F0">热门关键词：</td>
    <td colspan="4" valign="middle" bgcolor="#F0F0F0"><span class=" STYLE1">考研英语  四级六级 公务员</span></td>
  </tr>
  
  
  
  
  
  
  
  <tr>
    <td height="81" colspan="5" valign="top"><hr />
        <h4 ><img src="img/cg" alt="" /><span class="STYLE4"> 出国留学/移民</span></h4>
        <p class="STYLE1" >托福 雅思 SAT GRE GMAT AP</p></td>
    <td colspan="10" rowspan="4" valign="top">
      <div id="colee_left" style="overflow:hidden;width:710px;">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr><td id="colee_left1" valign="top" align="center">
            <table cellpadding="2" cellspacing="0" border="0">
              <tr align="center"valign="middle"><td ><script language="javascript" src="banner.js"></script></td></tr>
              </table>
    </td>
    </tr>
        </table>
      </div>      </td>
    <td colspan="5" rowspan="4" valign="top"><p ><img src="img/face_wps18AA.tmp.jpg" alt="" width="300" height="335" /></p></td>
  </tr>
  
  
  
  <tr>
    <td height="82" colspan="5" valign="top"><hr />
        <h4><img src="img/kym" alt="" width="25" height="22" /> <span class="STYLE4"> 研究生</span></h4>
        <p class="STYLE1"><a href="hall.jsp">考研</a> MBA 在职联考 同等学力</p></td>
  </tr>
  <tr>
    <td height="83" colspan="5" valign="top"><hr />
        <h4><span class="STYLE4"><img src="img/dxw" alt="" /> 大学</span></h4>
        <p class="STYLE1">英语四级 英语六级 专四专八</p></td>
  </tr>
  <tr>
    <td height="104" colspan="5" valign="top"><hr />
        <h4 ><img src="img/YX" alt="" /><span class="STYLE4"> 医学教育</span></h4>
        <p class="STYLE1" >职业医师 职业药师 卫生职称</p>
    <hr /></td>
  </tr>
  
  <tr>
    <td height="257" colspan="20" valign="top"><p ><img src="img/face_wps1A7E.tmp.jpg" alt="" width="1306" height="240" /></p></td>
  </tr>
 
  <tr>
    <td height="84" colspan="20"><span class="STYLE6 STYLE22">研究生</span>         <span class="STYLE1"> 考研 考博 在职联考 同等学力</span>
      <hr /></td>
  </tr>
  
  
  <tr>
    <td colspan="20"><table width="100%" style="border-collapse:collapse" border="1">
        <tr>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=50"><img border="0" src="img/face_wpsC012.tmp.jpg" alt="" width="221" height="140" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=41"><img border="0" src="img/face_wps193A.tmp.jpg" alt="" width="221" height="140" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=40"><img border="0" src="img/face_wps4663.tmp.jpg" alt="" width="221" height="140" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=53"><img border="0" src="img/face_wps8C1A.tmp.jpg" alt="" width="221" height="140" /></a></td>
        </tr>
        <tr>
          <td align="right"><span class="STYLE10">¥1480</span></td>
          <td align="right"><span class="STYLE10">¥4980</span></td>
          <td align="right"><span class="STYLE10">¥4880</span></td>
          <td align="right"><span class="STYLE10">¥6980</span></td>
        </tr>
      </table>    </td>
    </tr>
  
 
  <tr>
    <td height="75" colspan="20"><span class="STYLE22">大 学 </span>
      <span class="STYLE1">  英语四级 英语六级 专四专八</span>
    <hr /></td>
  </tr>
  <tr>
    <td colspan="20"><table width="100%" style="border-collapse:collapse" border="1">
        <tr>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=44"><img border="0" src="img/face_wps3068.tmp.jpg" alt="" width="221" height="140" /></a> </td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=45"><img border="0" src="img/face_wps605E.tmp.jpg" alt="" width="222" height="140" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=48"><img border="0" src="img/face_wps85AA.tmp.jpg" alt="" width="222" height="141" /></a> </td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=49"><img border="0" src="img/face_wpsAE7F.tmp.jpg" alt="" width="220" height="141" /></a></td>
        </tr>
        <tr>
          <td align="right"><span class="STYLE10">¥980</span></td>
          <td align="right"><span class="STYLE10">¥425</span></td>
          <td align="right"><span class="STYLE10">¥660</span></td>
          <td align="right"><span class="STYLE10">¥1200</span></td>
        </tr>
      </table>    </td>
  </tr>
  
  <tr>
    <td height="63" colspan="20" valign="bottom"><span class="STYLE22">医学教育</span>
      <span class="STYLE1"> 执业医师 执业药师 护士资格 卫生职称      </span>
    <hr /></td>
  </tr>
  <tr>
    <td colspan="20"><table width="100%" style="border-collapse:collapse" border="1">
        <tr>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=52"><img border="0" src="img/yxjy1" alt="" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=51"><img border="0" src="img/yxjy2" alt="" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=43"><img border="0" src="img/yxjy3" alt="" /></a></td>
          <td align="right"><a href="ShowGoodsClServlet?type=showDetail&id=48"><img border="0" src="img/yxjy4" alt="" /></a></td>
        </tr>
        <tr>
          <td align="right"><span class="STYLE10">¥1800</span></td>
          <td align="right"><span class="STYLE10">¥1800</span></td>
          <td align="right"><span class="STYLE10">¥280</span></td>
          <td align="right"><span class="STYLE10">¥750</span></td>
        </tr>
      </table></td>
    </tr>
  
  <tr>
    <td height="179" colspan="20"><img src="img/wbface" alt="" /></td>
  </tr>
  <tr>
    <td width="77" height="1"></td>
    <td width="11"></td>
    <td width="209"></td>
    <td width="27"></td>
    <td width="2"></td>
    <td width="2"></td>
    <td width="12"></td>
    <td></td>
    <td width="174"></td>
    <td width="2"></td>
    <td width="263"></td>
    <td width="2"></td>
    <td width="95"></td>
    <td></td>
    <td width="2"></td>
    <td width="2"></td>
    <td width="74"></td>
    <td></td>
    <td width="93"></td>
    <td width="4"></td>
  </tr>
</table>
</body>
</html>
