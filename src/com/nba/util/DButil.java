package com.nba.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;



public class DButil {
	//����util
	private static DButil util;
	//����ģʽ��һ����˽�л�����
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
	//�ṩһ�����еķ���ȥʵ�������ݿ����
	//getInstance����������Ψһ��ʵ����getInstance������static�ġ�
	public static DButil getInstance() {
		//�ж�util�Ƿ�Ϊ��
		if(null==util) {
			//ʵ����util
			util=new DButil();
		}
		//�����Ϊ�ռ���ʹ��
		return util;
	}
	
	//�������ݿ�
	public Connection getConnection() {
		//ͨ��������ƻ�ȡmysql jar���еĺ���class�ļ� driver
		Connection conn = null;
		try {
			Class.forName(driver);
			//��ȡ���ݿ�����     DriverManager��mysql  ����������
			//url��λ��mysql���ݿ��е����������ĸ����ݿ�
			conn = DriverManager.getConnection(url,username,password);
			System.out.println("���ݿ����ӳɹ�");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
	}


	
	//�ر����ݿ�
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
