package com.nba.dao;
/**
 * 
 * @author kong
 *	����йصĹ���
 */

import java.util.ArrayList;

import com.nba.bean.User;
import com.nba.bean.Process;
public interface UserDao {
	//-��ѯ����
	ArrayList<Process> selectAll();
	//-ע��User
	int add(User user);
	//-��¼
	int login(String username,String password);
	//-ע�� �û�
	int addLogin(String username,String password);
}
