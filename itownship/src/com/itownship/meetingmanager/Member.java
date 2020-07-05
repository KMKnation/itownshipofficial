package com.itownship.meetingmanager;

public class Member {
	
	private int mem_id;
	private String mem_name;
	private String email;
	private long phone;
	private String block;
	private String last_visited;
	private int status;
	private int social_id;
	private String icard;
	
	public Member(int mem_id, String mem_name, String email, long phone,
			String block, String last_visited, int status, int social_id,
			String icard) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.email = email;
		this.phone = phone;
		this.block = block;
		this.last_visited = last_visited;
		this.status = status;
		this.social_id = social_id;
		this.icard = icard;
	}

	public int getMem_id() {
		return mem_id;
	}

	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}

	public String getLast_visited() {
		return last_visited;
	}

	public void setLast_visited(String last_visited) {
		this.last_visited = last_visited;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getSocial_id() {
		return social_id;
	}

	public void setSocial_id(int social_id) {
		this.social_id = social_id;
	}

	public String getIcard() {
		return icard;
	}

	public void setIcard(String icard) {
		this.icard = icard;
	}
	
	
	
	

}
