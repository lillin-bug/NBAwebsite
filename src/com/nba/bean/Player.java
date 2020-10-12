package com.nba.bean;

public class Player {
	private String img;
	private String xing;
	private String ming;
	private String site;
	private String height;
	private String weight;
	private int id;
	private String birthday;
	private int exe;
	private String before;
	private String state;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getXing() {
		return xing;
	}
	public void setXing(String xing) {
		this.xing = xing;
	}
	public String getMing() {
		return ming;
	}
	public void setMing(String ming) {
		this.ming = ming;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getExe() {
		return exe;
	}
	public void setExe(int exe) {
		this.exe = exe;
	}
	public String getBefore() {
		return before;
	}
	public void setBefore(String before) {
		this.before = before;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Player [img=" + img + ", xing=" + xing + ", ming=" + ming + ", site=" + site + ", height=" + height
				+ ", weight=" + weight + ", id=" + id + ", birthday=" + birthday + ", exe=" + exe + ", before=" + before
				+ ", state=" + state + "]";
	}
	

}
