package com.nba.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.nba.bean.Process;
import com.nba.bean.User;
import com.nba.dao.UserDao;
import com.nba.util.DButil;

/**
 * 
 * @author kong UserDao接口的实现类
 */
public class UserDaoImpl implements UserDao {

	@Override
	public ArrayList<Process> selectAll() {
		// TODO Auto-generated method stub
		// -获取数据库连接
				Connection conn = DButil.getInstance().getConnection();
				// -获取预编译
				PreparedStatement ps = null;
				// -获取
				ResultSet rs = null;
				// -编写SQL语句
				String sql = "select * from process";
				ArrayList<Process> list = new ArrayList<Process>();
				try {
					ps = conn.prepareStatement(sql);
					// -提交执行
					rs = ps.executeQuery();
					// -循环遍历
					while (rs.next()) {
						Process process = new Process();
						
						process.setId(rs.getInt("id"));
						process.setDate(rs.getString("date"));
						process.setTime(rs.getString("time"));
						process.setOpponent(rs.getString("opponent"));
						process.setResult(rs.getString("result"));
						process.setScore(rs.getString("score"));
						list.add(process);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					// -关闭数据库连接
					DButil.closeDB(conn, ps, rs);
				}
				return list;
	}

	@Override
	public int add(User user) {
		// -获取数据库连接
				Connection conn = DButil.getInstance().getConnection();
				// -获取预编译
				PreparedStatement ps = null;
				// -获取
				ResultSet rs = null;
				//-定义SQL语句
				String sql="insert into user values(null,?,?,?,?,?)";
				//-预编译
				int sum=0;
				try {
					ps=conn.prepareStatement(sql);
					//-给 占位符？赋值  parameterIndex:占位符索引值
					ps.setString(1,user.getNickName());
					ps.setString(2,user.getRealName());
					ps.setString(3,user.getSex());
					ps.setString(4,user.getTel());
					ps.setString(5,user.getAddress());
					//-提交
					sum=ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					DButil.closeDB(conn, ps, null);
				}
				return sum;
	}

	@Override
	public int login(String username, String password) {
		Connection conn=DButil.getInstance().getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select count(*) count from login where username=? and password=?";
		int count=0;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			rs=ps.executeQuery();
			while(rs.next()) {
				count=rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DButil.closeDB(conn, ps, rs);
		}
		return count;
	}

	@Override
	public int addLogin(String username, String password) {
		Connection conn=DButil.getInstance().getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		int sum=0;
		String sql="insert into login values(null,?,?,0)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			sum=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DButil.closeDB(conn, ps, null);
		}
		return sum;
	}
	

}
