package com.nba.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;



public class DButil {
	//声明util
	private static DButil util;
	//单例模式第一步：私有化构造
	private String driver;
	private String url;
	private String username;
	private String password;
	
	private DButil() {
		Properties p =  new Properties();
		try {
			p.load(this.getClass().getClassLoader().getResourceAsStream("Mysql.peoperties"));
			driver = p.getProperty("driver");
			url = p.getProperty("url");
			username = p.getProperty("username");
			password = p.getProperty("password");
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	//提供一个共有的方法去实例化数据库对象
	//getInstance，用来生成唯一的实例，getInstance往往是static的。
	public static DButil getInstance() {
		//判断util是否为空
		if(null==util) {
			//实例化util
			util=new DButil();
		}
		//如果不为空继续使用
		return util;
	}
	
	//连接数据库
	public Connection getConnection() {
		//通过反射机制获取mysql jar包中的核心class文件 driver
		Connection conn = null;
		try {
			Class.forName(driver);
			//获取数据库连接     DriverManager；mysql  驱动管理器
			//url定位到mysql数据库中的哪条连接哪个数据库
			conn = DriverManager.getConnection(url,username,password);
			System.out.println("数据库连接成功");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
	}


	
	//关闭数据库
	public static void closeDB(Connection conn,PreparedStatement pstm,ResultSet rs) {
		try {
			if(rs!=null) {
				rs.close();		
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pstm.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
}
