package com.nba.bean;
/**
 * 
 * @author kong
 *  user ���е����ݷ�װ
 *  ��װ��������ʵ�ֵ�ϸ�ڣ������ⲿȥ������ʵ�����ݴ洢��ϸ�ڣ�
 *  ����������Ĵ洢���ݣ������ݵĴ洢���Խ�һЩ�ж�����
 *  
 */
public class User {
	//-����������Ϊ˽�еģ������ⲿ���������ȥ��ֵ
	private int id;
	private String nickName;
	private String  realName;
	private String  sex;
	private String  tel;
	private String  address;
	
	//-�ṩ���з�����ȥ�洢
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
