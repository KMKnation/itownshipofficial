package com.itownship.expensemanager;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public class Expense {
	private int e_id;
	private int e_amount;
	private String e_type;
	private String e_receiver;
	private String e_category;
	private String e_date;
	private String e_receipt;
	private String e_notes;
	
	public Expense(){
		
	}

	public Expense(int e_id, int e_amount, String e_type, String e_receiver,
			String e_category, String string, String e_receipt, String e_notes) {
		super();
		this.e_id = e_id;
		this.e_amount = e_amount;
		this.e_type = e_type;
		this.e_receiver = e_receiver;
		this.e_category = e_category;
		this.e_date = string;
		this.e_receipt = e_receipt;
		this.e_notes = e_notes;
	}
	
	
	
	public int getE_id() {
		return e_id;
	}
	public void setE_id(int e_id) {
		this.e_id = e_id;
	}
	public int getE_amount() {
		return e_amount;
	}
	public void setE_amount(int e_amount) {
		this.e_amount = e_amount;
	}
	
	public String getE_type() {
		return e_type;
	}
	public void setE_type(String e_type) {
		this.e_type = e_type;
	}
	public String getE_receiver() {
		return e_receiver;
	}
	public void setE_receiver(String e_receiver) {
		this.e_receiver = e_receiver;
	}
	public String getE_category() {
		return e_category;
	}
	public void setE_category(String e_category) {
		this.e_category = e_category;
	}
	public String getE_date() {
		return e_date;
	}
	public void setE_date(String e_date) {
		this.e_date = e_date;
	}
	public String getE_receipt() {
		return e_receipt;
	}
	public void setE_receipt(String e_receipt) {
		this.e_receipt = e_receipt;
	}
	public String getE_notes() {
		return e_notes;
	}
	public void setE_notes(String e_notes) {
		this.e_notes = e_notes;
	}

	
	
	
	
	
	

}
