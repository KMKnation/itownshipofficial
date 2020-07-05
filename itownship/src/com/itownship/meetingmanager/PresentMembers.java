package com.itownship.meetingmanager;

public class PresentMembers {
	
	private int presenId;
	private String presentIcard;
	private int meetingId;
	


	public PresentMembers(int presenId, String presentIcard, int meetingId) {
		super();
		this.presenId = presenId;
		this.presentIcard = presentIcard;
		this.meetingId = meetingId;
	}


	public PresentMembers(String presentIcard, int meetingId) {
		this.presentIcard = presentIcard;
		this.meetingId = meetingId;
	}
	
	
	public int getPresenId() {
		return presenId;
	}
	public void setPresenId(int presenId) {
		this.presenId = presenId;
	}
	public String getPresentIcard() {
		return presentIcard;
	}
	public void setPresentIcard(String presentIcard) {
		this.presentIcard = presentIcard;
	}
	public int getMeetingId() {
		return meetingId;
	}
	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}
	
		
	}
