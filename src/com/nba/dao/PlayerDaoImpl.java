package com.nba.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.jdbc.PreparedStatement;
import com.nba.util.DButil;
import com.nba.bean.Player;
public class PlayerDaoImpl implements PlayerDao {

	@Override
	public ArrayList<Player> selectAll() {
		//获取数据库连接
				Connection conn = DButil.getInstance().getConnection();
				//获取预编译
				PreparedStatement pstm = null;
				//获取ResuleSet
				ResultSet rs = null;
				//sql语句
				String sql = "SELECT * FROM message";
				//集合
				ArrayList<Player> list = new ArrayList<Player>();
				try {
					pstm= (PreparedStatement) conn.prepareStatement(sql);
					//提交执行
					rs = pstm.executeQuery();
					//循环遍历
					while(rs.next()) {
						Player player = new Player();
						player.setImg(rs.getString("img"));
						player.setXing(rs.getString("xing"));
						player.setMing(rs.getString("ming"));
						player.setSite(rs.getString("site"));
						player.setHeight(rs.getString("height"));
						player.setWeight(rs.getString("weight"));
						player.setId(rs.getInt("id"));
						player.setBirthday(rs.getString("birthday"));
						player.setExe(rs.getInt("exe"));
						player.setBefore(rs.getString("before"));
						player.setState(rs.getString("state"));
						
						list.add(player);
					}
				} catch ( SQLException e) {
					e.printStackTrace();
				}finally {
					DButil.closeDB(conn, pstm, rs);
				}
				
				return list;
			}
}
