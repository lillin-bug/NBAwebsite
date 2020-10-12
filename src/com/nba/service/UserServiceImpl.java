package com.nba.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.nba.bean.Process;
import com.nba.bean.User;
import com.nba.dao.UserDao;
import com.nba.dao.UserDaoImpl;
import com.nba.service.UserService;
import com.nba.util.DButil;

public class UserServiceImpl implements UserService {
	// -实例化 dao
	UserDao ud = new UserDaoImpl();
	ArrayList<Process> list = new ArrayList<Process>();

	@Override
	public ArrayList<Process> selectAll() {
		// -查询 dao
		list = ud.selectAll();
		for (Process data : list) {
			System.out.println(data);
		}
		return list;
	}

	// -调用了注册 dao,调用查询所有的 dao
	@Override
	public int register(User user) {
		//-注册 dao
		int sum=ud.add(user);
		System.out.println(sum+"条数据插入");
		//-查询 dao 
		selectAll();
		return sum;
	}
	//-登录，调用dao层登录
	@Override
	public int login(String username, String password) {
		int count=ud.login(username, password);
		return count;
	}
	//-注册 用户
	@Override
	public int addLogin(String username, String password) {
		
		return ud.addLogin(username,password);
	}

}
