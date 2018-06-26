    <%@ page language="java" contentType="text/html; charset=utf-8"  
        pageEncoding="utf-8"%>  
    <%@ page import="com.zashuguan.*" %>  
    <%@ page import="java.sql.*" %>  
    <%  
       request.setCharacterEncoding("utf-8");  
       String name = request.getParameter("name"); 
       String time = request.getParameter("arrivalDate");  
       conDB db = new conDB();  
       db.connectDB();  
       Statement state = db.getConnection().createStatement();  
       String sql = "delete from xinshuguan where name='"+name+"' and time='"+time+"'";  
       int flag= state.executeUpdate(sql);  
       if(flag > 0){  
           out.println("<script>alert('取消预约成功！');history.go(-1)</script>");  
       }else{  
           out.println("<script>alert('没有您的预约记录！');history.go(-1)</script>");  
       }
       state.close();  
    %>  