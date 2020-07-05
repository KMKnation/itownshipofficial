package com.itownship.societybank;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import com.sun.net.ssl.HttpsURLConnection;
import com.sun.org.apache.xerces.internal.util.URI;

public class PayPalSucess {
	
	public PayPalResult getPayPal(HttpServletRequest request){
		PayPalResult ppr = new PayPalResult();
		PayPalConfig pc = new PayPalConfig();
		pc = pc.geConfig(request);
		String [] temp = null;
		String res = "";
		try{
			String transId = request.getParameter("tx");
			String authToken = pc.getAuthToken();
			String query = "cmd_notify-synch&tx=" + transId + "&at=" + authToken;
			String url = pc.getPosturl();
			URL u = new URL(url);
			HttpsURLConnection req = (HttpsURLConnection) u.openConnection();
			req.setRequestMethod("POST");
			req.setDoOutput(true);
			req.setDoInput(true);
			req.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			req.setFixedLengthStreamingMode(query.length());
			
			OutputStream outputStream = req.getOutputStream();
			outputStream.write(query.getBytes());
			outputStream.close();
			
			BufferedReader in = new BufferedReader(new InputStreamReader(req.getInputStream()));
			res = in.readLine();
			if(res.equals("SUCCESS")) {
				while((res = in.readLine()) != null ){
					temp = res.split("=");
					if(temp.length == 1)
						continue;
					temp[1] = URLDecoder.decode(temp[1], "UTF-8");
					if(temp[0].equals("mc_gross")){
						ppr.setMc_gross(temp[1]);
					}
					if(temp[0].equals("protection_eligibility")){
						ppr.setProtection_eligibility(temp[1]);
					}
					if(temp[0].equals("address_status")){
						ppr.setAddress_status(temp[1]);
					}
					if(temp[0].equals("tax")){
						ppr.setTax(temp[1]);
					}
					if(temp[0].equals("payer_id")){
						ppr.setPayer_id(temp[1]);
					}
					if(temp[0].equals("address_street")){
						ppr.setAddress_street(temp[1]);
					}
					if(temp[0].equals("payment_date")){
						ppr.setPayment_date(temp[1]);
					}
					if(temp[0].equals("payment_status")){
						ppr.setPayer_status(temp[1]);
					}
					if(temp[0].equals("adresss_zip")){
						ppr.setAddress_zip(temp[1]);
					}
					if(temp[0].equals("mc_shipping")){
						ppr.setMc_shipping(temp[1]);
					}
					if(temp[0].equals("mc_handling")){
						ppr.setMc_handling(temp[1]);
					}
					if(temp[0].equals("first_name")){
						ppr.setFirst_name(temp[1]);
					}
					if(temp[0].equals("mc_fee")){
						ppr.setMc_fee(temp[1]);
					}
					if(temp[0].equals("adress_country_code")){
						ppr.setAdress_country_code(temp[1]);
					}
					if(temp[0].equals("adress_name")){
						ppr.setAdress_name(temp[1]);
					}
					if(temp[0].equals("custom")){
						ppr.setCustom(temp[1]);
					}
					if(temp[0].equals("payer_status")){
						ppr.setPayer_status(temp[1]);
					}
					if(temp[0].equals("business")){
						ppr.setBusiness(temp[1]);
					}
					if(temp[0].equals("adress_country")){
						ppr.setAdress_country(temp[1]);
					}
					if(temp[0].equals("num_cart_items")){
						ppr.setNum_cart_items(temp[1]);
					}
					if(temp[0].equals("mc_handling1")){
						ppr.setMc_handling1(temp[1]);
					}
					if(temp[0].equals("mc_handling2")){
						ppr.setMc_handling2(temp[1]);
					}
					if(temp[0].equals("adress_city")){
						ppr.setAdress_city(temp[1]);
					}
					if(temp[0].equals("mc_shipping1")){
						ppr.setMc_shipping1(temp[1]);
					}
					if(temp[0].equals("mc_shipping2")){
						ppr.setMc_shipping2(temp[1]);
					}
					if(temp[0].equals("tax1")){
						ppr.setTax1(temp[1]);
					}
					if(temp[0].equals("tax2")){
						ppr.setTax2(temp[1]);
					}
					if(temp[0].equals("last_name")){
						ppr.setLast_name(temp[1]);
					}
					if(temp[0].equals("adress_state")){
						ppr.setAdress_state(temp[1]);
					}
					if(temp[0].equals("receiver_email")){
						ppr.setReceiver_email(temp[1]);
					}
					if(temp[0].equals("payment_fee")){
						ppr.setPayment_fee(temp[1]);
					}
					if(temp[0].equals("receiver_id")){
						ppr.setReceiver_id(temp[1]);
					}
					if(temp[0].equals("pending_reason")){
						ppr.setPending_reason(temp[1]);
					}
					if(temp[0].equals("txn_type")){
						ppr.setTxn_type(temp[1]);
					}
					if(temp[0].equals("mc_gross1")){
						ppr.setMc_gross_1(temp[1]);
					}
					if(temp[0].equals("mc_currency")){
						ppr.setMc_currency(temp[1]);
					}
					if(temp[0].equals("mc_gross2")){
						ppr.setMc_gross_2(temp[1]);
					}
					if(temp[0].equals("residence_country")){
						ppr.setResidence_country(temp[1]);
					}
					if(temp[0].equals("transaction_subject")){
						ppr.setTransaction_subject(temp[1]);
					}
					if(temp[0].equals("payment_gross")){
						ppr.setPayment_gross(temp[1]);
					}

				}
				
				in.close();
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
			ppr = null;
		}
	  return ppr;
	}

}
