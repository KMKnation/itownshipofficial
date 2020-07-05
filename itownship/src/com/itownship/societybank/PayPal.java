package com.itownship.societybank;

public class PayPal {
	
	private int txn_id;
	private String first_name;
	private String last_name;
	private String payer_email;
	private String payment_gross;
	private String payment_fee;

	
	
	public PayPal(int txn_id, String first_name, String last_name,
			String payer_email, String payment_gross, String payment_fee) {
		super();
		this.txn_id = txn_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.payer_email = payer_email;
		this.payment_gross = payment_gross;
		this.payment_fee = payment_fee;
	}
	public int getTxn_id() {
		return txn_id;
	}
	public void setTxn_id(int txn_id) {
		this.txn_id = txn_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getPayer_email() {
		return payer_email;
	}
	public void setPayer_email(String payer_email) {
		this.payer_email = payer_email;
	}
	public String getPayment_gross() {
		return payment_gross;
	}
	public void setPayment_gross(String payment_gross) {
		this.payment_gross = payment_gross;
	}
	public String getPayment_fee() {
		return payment_fee;
	}
	public void setPayment_fee(String payment_fee) {
		this.payment_fee = payment_fee;
	}

	
}
