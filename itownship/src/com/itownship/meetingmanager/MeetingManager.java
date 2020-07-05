package com.itownship.meetingmanager;

public class MeetingManager {
	
	private int m_id;
	private String m_name;
	private String m_about;
	private String m_place;
	private int m_presentid;
	private int m_agendaid;
	private String m_sign;
	private String m_date;
	
	public MeetingManager(){
		
	}
		
	public MeetingManager(int m_id, String m_name, String m_about,
			String m_place, int m_presentid, int m_agendaid, String m_sign, String m_date) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_about = m_about;
		this.m_place = m_place;
		this.m_presentid = m_presentid;
		this.m_agendaid = m_agendaid;
		this.m_sign = m_sign;
		this.m_date = m_date;
	}
	
	
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_about() {
		return m_about;
	}
	public void setM_about(String m_about) {
		this.m_about = m_about;
	}
	public String getM_place() {
		return m_place;
	}
	public void setM_place(String m_place) {
		this.m_place = m_place;
	}
	public int getM_presentid() {
		return m_presentid;
	}
	public void setM_presentid(int m_presentid) {
		this.m_presentid = m_presentid;
	}
	public int getM_agendaid() {
		return m_agendaid;
	}
	public void setM_agendaid(int m_agendaid) {
		this.m_agendaid = m_agendaid;
	}
	public String getM_sign() {
		return m_sign;
	}
	public void setM_sign(String m_sign) {
		this.m_sign = m_sign;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	
	

}
