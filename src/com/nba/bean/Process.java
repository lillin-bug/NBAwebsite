package com.nba.bean;

public class Process {
	private int id;
	private String date;
	private String time;
	private String opponent;
	private String result;
	private String score;
	
	public Process(int id, String date, String time, String opponent, String result, String score) {
		super();
		this.id = id;
		this.date = date;
		this.time = time;
		this.opponent = opponent;
		this.result = result;
		this.score = score;
	}

	public Process() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getOpponent() {
		return opponent;
	}

	public void setOpponent(String opponent) {
		this.opponent = opponent;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Process [id=" + id + ", date=" + date + ", time=" + time + ", opponent=" + opponent + ", result="
				+ result + ", score=" + score + "]";
	}
	
	
	
	
	
}
