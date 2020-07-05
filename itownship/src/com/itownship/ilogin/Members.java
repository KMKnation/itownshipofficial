package com.itownship.ilogin;

public class Members {
	
	private String mem_name;
	private String email;
	private String password;
	private long phone;
	private String block;
	private String icard;
	private String mem_type;
	
	public Members(){
		
	}
	
	public Members(String mem_name, String email, String password, long phone,
			String block, String icard, String mem_type) {
		super();
		this.mem_name = mem_name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.block = block;
		this.icard = icard;
		this.mem_type = mem_type;
	}

	
	
	public Members(String mem_name, String email, long phone, String block,
			String icard, String mem_type) {
		super();
		this.mem_name = mem_name;
		this.email = email;
		this.phone = phone;
		this.block = block;
		this.icard = icard;
		this.mem_type = mem_type;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getIcard() {
		return icard;
	}

	public void setIcard(String icard) {
		this.icard = icard;
	}

	public String getMem_type() {
		return mem_type;
	}

	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	
	

}
