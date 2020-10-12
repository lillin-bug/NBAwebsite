package com.nba.dao;
/**
 * 
 * @author kong
 *	与表有关的功能
 */

import java.util.ArrayList;

import com.nba.bean.User;
import com.nba.bean.Process;
public interface UserDao {
	//-查询方法
	ArrayList<Process> selectAll();
	//-注册User
	int add(User user);
	//-登录
	int login(String username,String password);
	//-注册 用户
	int addLogin(String username,String password);
}
