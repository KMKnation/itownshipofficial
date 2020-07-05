package com.itownship.meetingmanager;

public class Agenda {
	
	private int a_id;
	private String a_title;
	private String a_discuss;
	private String a_concl;
	private int meeting_id;
	
	public Agenda(int a_id, String a_title, String a_discuss, String a_concl,
			int meeting_id) {
		this.a_id = a_id;
		this.a_title = a_title;
		this.a_discuss = a_discuss;
		this.a_concl = a_concl;
		this.meeting_id = meeting_id;
	}
	
	public Agenda() {
		// TODO Auto-generated constructor stub
	}

	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_discuss() {
		return a_discuss;
	}
	public void setA_discuss(String a_discuss) {
		this.a_discuss = a_discuss;
	}
	public String getA_concl() {
		return a_concl;
	}
	public void setA_concl(String a_concl) {
		this.a_concl = a_concl;
	}
	public int getMeeting_id() {
		return meeting_id;
	}
	public void setMeeting_id(int meeting_id) {
		this.meeting_id = meeting_id;
	}
	
	

}
