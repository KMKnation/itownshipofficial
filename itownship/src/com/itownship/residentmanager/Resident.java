package com.itownship.residentmanager;


public class Resident {
	private int mem_id;
	private String mem_name;
	private String email;
	private long number;
	private String block;
	private String last_visited;
	private boolean status;
	private int social_id;
	private String icard;

	public Resident() {
		
	}
	

	public Resident(int mem_id, String mem_name, String email, long number,
			String block, String last_visited, boolean status, int social_id,
			String icard) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.email = email;
		this.number = number;
		this.block = block;
		this.last_visited = last_visited;
		this.status = status;
		this.social_id = social_id;
		this.icard = icard;
	}


	


	public Resident(int mem_id, String mem_name, String email, long number,
			String block, String last_visited, boolean status, String icard) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.email = email;
		this.number = number;
		this.block = block;
		this.last_visited = last_visited;
		this.status = status;
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


	public long getNumber() {
		return number;
	}  

	public void setNumber(long number) {
		this.number = number;
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



	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
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
