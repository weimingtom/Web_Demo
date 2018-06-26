package com.zashuguan;

import java.sql.Connection;
import java.sql.DriverManager;  
public class conDB   
{  
    private Connection conn;  
    public int connectDB()  
    {  
        try  
        {  
        	String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  //加载jdbc驱动
        	String dbURL = "jdbc:sqlserver://localhost:1433; DatabaseName=zashuguan"; //设置数据库名等
        	String userName = "sa";  //数据库名
        	String userPwd = "";  //数据库密码
            Class.forName(driverName);  
            conn =  DriverManager.getConnection(dbURL, userName, userPwd);  
            System.out.println("OK");  
            return 1;  
        }catch(Exception e)  
        {  
            e.printStackTrace();  
            return -1;  
        }  
    }
    public Connection getConnection()  
    {  
        return this.conn;  
    }
} 