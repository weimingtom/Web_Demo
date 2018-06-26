<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>  
<%@ page import="com.zashuguan.*"%>  
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>    
<%@ page import="java.text.SimpleDateFormat"%> 
<%  
        request.setCharacterEncoding("utf-8");  
        String adNum = request.getParameter("adNum");  
        String adPw = request.getParameter("adPw"); 
        ResultSet set0;
        ResultSet set;
        String sql0="select * from administrator where adNum='"+adNum+"' and adPw='"+adPw+"'";
        String sql="select * from xinshuguan order by time";
        conDB db = new conDB();  
        db.connectDB();  
        Statement state = db.getConnection().createStatement();
        set0= state.executeQuery(sql0);
        if(!set0.next()){
        	out.println("<script>alert('您的账号或密码有误或没有此管理员');history.go(-1);</script>");  
        }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--这是日历样式表-->
<link href="../js/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery-1.8.1.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript" src="../js/dateinput-ch-ZN.js"></script>
<link href="../js/red-datepicker.css" rel="stylesheet">
<title>藏馆介绍_雜·書舘：大型私立公益图书馆</title>
<link href="../css/guanli.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="top">
  <div class="top_container">
    <div class="top_container_left">
      <a href="../index.html"><img src="../img/logo.jpg" width="200" height="62" alt=""/></a>
    </div>
    <div class="top_container_right">
      <a href="../index.html" target="_blank" class="opennew">首 页</a>
      <a href="../yuyue.html" target="_blank" class="opennew">我要预约</a>
      <a href="../lib_intro.html" target="_blank" class="opennew">藏馆介绍</a>
      <a href="../dongtai.html" target="_blank" class="opennew">书馆动态</a>
    </div>
  </div>
</div>
<div class="main">
  <div class="main_container">
    <div class="red_tit">查询结果</div>
    
    <div class="date_container">
    <form action="guanli2.jsp" method="post" class="">
      <input id="model-startDate" name="startDate" type="text" placeholder="请输入起始日期">
      <input id="model-endDate" name="endDate" type="text" placeholder="请输入终止日期">
      <input type="submit" value="提交" class="btn_submit">
    </form>
    <script>
		   $(document).ready(function() {   
               $("#model-startDate").datepicker({
				   }); //绑定输入框
			   $("#model-endDate").datepicker({
				   });
	       }); 
	</script>
    </div>
    
    <div class="jieguo">
    
    <table class="imagetable imagetable2">
    <tr>
	<th>来访嘉宾</th><th>证件号码</th><th>手机号码</th><th>来访时间</th>
    </tr>
    <tr>
	<td>朱可爱(示例)</td><td>410523199510134501</td><td>18794810839</td><td>2017-07-08(示例)</td>
    </tr>
    
    <!--符合表达式要求的jsp语句-->
    <% 
        	set= state.executeQuery(sql);
            if(!set.next()){
            	out.println("<tr class='null'><td colspan='4'>没有预约记录</td></tr>"); 
            }else{
            	while(set.next())  
                {  
                 out.println("<tr><td>"+set.getString(1)+"</td><td>"+set.getString(2)+"</td><td>"+set.getString(3)+"</td><td>"+set.getString(4)+"</td></tr>");  
                }
            }

    %>
    
    </table>
    
    </div>
    
    <div class="infor_gray mt_20">
              温馨提示：
             您可以关注微信公众账号（zashuguan）查询预约状态
    </div>
    </div>
      
</div>
<div class="footer">
  <div class="footer_container">
    <div class="footer_container_left">
      <ul>
        <li>
          <div class="wx_container">
            <img src="../img/wx.jpg" width="148" height="151" alt=""/>
          </div>
          <div class="red_bg_container">
            <span class="red_bg">微信公众账号</span>
          </div>
        </li>
        <li class="last">
          <div class="wb_container">
            <a href="#"><img src="../img/wb.jpg" width="148" height="151" alt=""/> </a>
          </div>
          <div class="red_bg_container right">
            <span class="red_bg">微 博 账 号</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="footer_container_right">
      <p><strong>开馆时间：</strong></p>
      <p>开放时间为10:00-17:00，每周二闭馆休整</p>
      <p><strong>交通路线：</strong></p>
      <p>公交：地铁15号线马泉营B出口，沿马泉营西路向北240米，路口左转向西800米，丁字路口右侧</p>
      <p>自驾：导航至“杂书馆”（北京市朝阳区崔各庄乡何各庄村328号红厂设计创意产业园）</p>
      <p><strong>预约电话：</strong></p>
      <p>010-84308727</p>
    </div>
    <div class="line"></div>
    <div class="beian">
      <p>
      Copyright©  雜•書舘网  2015 - 2017 , All  Rights  Reserved  
      </p>
    </div>
  </div>
</div>
</body>
</html>
    