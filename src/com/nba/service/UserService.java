package com.nba.service;

import java.util.ArrayList;

import com.nba.bean.User;
import com.nba.bean.Process;
public interface UserService {
	//-查询方法
	ArrayList<Process> selectAll();
	//-注册
	int register(User user);
	//-登录
	int login(String username,String password);
	//-注册 用户
	int addLogin(String username,String password);
}
