package com.nba.bean;
/**
 * 
 * @author kong
 *  user 表中的数据封装
 *  封装：隐藏其实现的细节（不让外部去访问其实现数据存储的细节）
 *  不允许随意的存储数据，对数据的存储可以交一些判断条件
 *  
 */
public class User {
	//-将属性设置为私有的，不让外部对象随意的去赋值
	private int id;
	private String nickName;
	private String  realName;
	private String  sex;
	private String  tel;
	private String  address;
	
	//-提供公有方法，去存储
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id=id;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", nickName=" + nickName + ", realName=" + realName + ", sex=" + sex + ", tel=" + tel
				+ ", address=" + address + "]";
	}
}
