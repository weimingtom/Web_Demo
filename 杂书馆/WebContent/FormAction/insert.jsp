    <%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>  
    <%@ page language="java" contentType="text/html; charset=utf-8"  
        pageEncoding="utf-8"%>  
    <%@ page import="com.zashuguan.*"%>  
    <%@ page import="java.sql.*"%>
     <%@ page import="java.util.Date"%>    
    <%@ page import="java.text.SimpleDateFormat"%>  
    <%  
        request.setCharacterEncoding("utf-8");  
        String name = request.getParameter("userName");  
        String idNum = request.getParameter("identityNum");  
        String phone = request.getParameter("phoneNum");  
        String time = request.getParameter("arrivalDate"); 
        String sql0="select count(time) from xinshuguan where time='"+time+"'";
        String sql = "insert into xinshuguan(name,idNum,phone,time) values('"+name+"','"+idNum+"','"+phone+"','"+time+"')";  
        conDB db = new conDB();  
        db.connectDB();  
        Statement state = db.getConnection().createStatement();  
        ResultSet set= state.executeQuery(sql0);  
        int m=0;
        if(set.next()){
        	m=set.getInt(1);
        }        
        if(name.isEmpty()||name.length()<2||idNum.isEmpty()||idNum.length()!=18||phone.isEmpty()||phone.length()!=11||time.isEmpty()){
        	out.println("<script>alert('请完善您的信息！');history.go(-1);</script>");  
        }else if(m>=99){
        	     out.println("<script>alert('预约已满，请改日到访！');history.go(-1);</script>");  
        }else{
        	int flag =state.executeUpdate(sql); 
       	    if(flag != 0)  
            {  
                 out.println("<script>alert('预约成功！');history.go(-1);</script>");  
            }  
            else  
            {  
                 out.println("<script>alert('预约失败！');history.go(-1);</script>");  
            }
        }
        state.close(); 
    %>