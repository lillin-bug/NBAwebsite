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
	// -ʵ���� dao
	UserDao ud = new UserDaoImpl();
	ArrayList<Process> list = new ArrayList<Process>();

	@Override
	public ArrayList<Process> selectAll() {
		// -��ѯ dao
		list = ud.selectAll();
		for (Process data : list) {
			System.out.println(data);
		}
		return list;
	}

	// -������ע�� dao,���ò�ѯ���е� dao
	@Override
	public int register(User user) {
		//-ע�� dao
		int sum=ud.add(user);
		System.out.println(sum+"�����ݲ���");
		//-��ѯ dao 
		selectAll();
		return sum;
	}
	//-��¼������dao���¼
	@Override
	public int login(String username, String password) {
		int count=ud.login(username, password);
		return count;
	}
	//-ע�� �û�
	@Override
	public int addLogin(String username, String password) {
		
		return ud.addLogin(username,password);
	}

}
