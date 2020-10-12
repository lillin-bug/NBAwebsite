package com.nba.service;

import java.util.ArrayList;

import com.nba.bean.Player;
import com.nba.dao.PlayerDao;
import com.nba.dao.PlayerDaoImpl;


public class PlayerServiceImpl implements PlayerService {
	//ʵ����dao�����
	PlayerDao dao = new PlayerDaoImpl();
	ArrayList<Player> list =  new ArrayList<Player>();

	@Override
	public ArrayList<Player> selectAll() {
		list = dao.selectAll();
		for(Player user:list) {
			System.out.println(user);
		}
		return list;
	}
	

}
