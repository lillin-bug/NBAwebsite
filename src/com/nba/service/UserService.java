package com.nba.service;

import java.util.ArrayList;

import com.nba.bean.User;
import com.nba.bean.Process;
public interface UserService {
	//-��ѯ����
	ArrayList<Process> selectAll();
	//-ע��
	int register(User user);
	//-��¼
	int login(String username,String password);
	//-ע�� �û�
	int addLogin(String username,String password);
}
