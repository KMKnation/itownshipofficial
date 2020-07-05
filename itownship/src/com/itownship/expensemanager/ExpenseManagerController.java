package com.itownship.expensemanager;



import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;




import java.util.ArrayList;
import java.util.Iterator;



import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import databaseConnection.DBConnection;



@Controller
public class ExpenseManagerController {
	
	public int bankamount = 99999;

	public int totalSpendAmount(){ // No t for particular id u can add member id to allow member to add expenses
		
		String sql = "select * from expense";
		int total = 0;
		
		try{
			ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
			
				while(rs.next()){
					total += rs.getInt("e_amount"); 
				}
		}catch(Exception e){
			System.out.println(e);
		}
		return total;
	}
	
	public int totalBankAmount(){ //// THis is a societybank so there is no member id for particular id u can add member id for userpanel
		String sql = "select * from expense";
		
		
		try{
			ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
			
				while(rs.next()){
						bankamount -= rs.getInt("e_amount");
					
				}
		}catch(Exception e){
			System.out.println(e);
		}
		return bankamount;
	}
	
	int totalspendamount= totalSpendAmount();
	int FinalBankAmount= totalBankAmount();
	//CSS BAR
	int spendBar = (totalspendamount * 100)/100000;
	int bankBar = (FinalBankAmount * 100)/100000;		

	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("DD-MM-YYYY");
		binder.registerCustomEditor(Date.class,"e_date", new CustomDateEditor(dateFormat, false));
	}
	
	
	@RequestMapping("adminpanel/expensemanager/Expense")
	public ModelAndView loadFirstPage(){
		System.out.println("total spend amount="+totalspendamount);
		ModelAndView model = new ModelAndView("ExpenseManager");
		return model;
	}
	
	@ModelAttribute
	public void addingCommonExpenseID(Model model){
		model.addAttribute("bank", FinalBankAmount);
		model.addAttribute("tspendamount", totalspendamount);
		model.addAttribute("spendBar", spendBar);
		model.addAttribute("bankBar", bankBar);
		System.out.println("spendBar = "+spendBar);
		System.out.println("bankBar = "+bankBar);
	}
	
	
	
	@RequestMapping("adminpanel/expensemanager/AddExpense")
	public ModelAndView addExpesne(){
		ModelAndView model = new ModelAndView("AddExpense");
		return model;
	}
	
	
	@RequestMapping(value="adminpanel/expensemanager/submitExpenseData", method= RequestMethod.GET)
		public ModelAndView addExpenseData(@ModelAttribute("expense1") Expense expense1) throws ClassNotFoundException, SQLException{
			
		ModelAndView model = loadFirstPage();
		
			if(expense1.getE_amount()<FinalBankAmount){
				
				String sql = "insert into expense (`e_amount`, `e_receiver`, `e_category`, `e_date`, `e_receipt`, `e_notes`) values (?,?,?,?,?,?)";
				PreparedStatement pst = DBConnection.getPreparedStatement(sql);
				pst.setInt(1, expense1.getE_amount());
				pst.setString(2, expense1.getE_receiver());
				pst.setString(3, expense1.getE_category());
				pst.setString(4, expense1.getE_date().toString());
				pst.setString(5, expense1.getE_receipt());
				pst.setString(6, expense1.getE_notes());
				pst.execute();
				
				pst.close();
				
				
				totalspendamount= totalSpendAmount(); // UPDATE SPEND AMOUNTS
				FinalBankAmount = FinalBankAmount - expense1.getE_amount();
				

				spendBar = (totalspendamount * 100)/100000;
				bankBar = (FinalBankAmount * 100)/100000;

			}
			else{
				System.out.println("ERROR: spend amount exceeded");
			}
			
		return model;	
	}
	
	@RequestMapping("adminpanel/expensemanager/ExpenseManager_spend")
	public ModelAndView moneyTakerDashBoard() throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("ExpenseManager_spend");
		
		String sql = "select * from expense";
		ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
		
		ArrayList<Expense> expenseUser = new ArrayList<Expense>();
		while(rs.next()){
			
			Expense expense = new Expense(rs.getInt("e_id"), rs.getInt("e_amount"), rs.getString("e_type"), rs.getString("e_receiver"), rs.getString("e_category"), rs.getString("e_date"), rs.getString("e_receipt"), rs.getString("e_notes"));
			expenseUser.add(expense);
			
			}
	
		Iterator itrExpenseUser = expenseUser.iterator();
		
		Expense earaay[] = new Expense[expenseUser.size()];

		int i=0;
		while (itrExpenseUser.hasNext()){
			Expense ex = (Expense)itrExpenseUser.next();
			earaay[i] = ex;
			System.out.println("id="+ex.getE_id()+" Name="+ex.getE_amount());
			model.addObject("exp",earaay);
			i++;
			
		}
		
		return model;
	}
	
	
	@RequestMapping(value="adminpanel/expensemanager/ExpenseManager_spendDELETE", method= RequestMethod.GET)
		public ModelAndView deletSpendData(@RequestParam("spendid") int spendid, @RequestParam("spendAmount") int investAmount, HttpServletResponse response) throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("ExpenseManager_spend");
			
			String sql = "DELETE FROM expense WHERE e_id="+spendid;
			DBConnection.getPreparedStatement(sql).execute();
			
			//UPDATE IN CRUD
			totalspendamount= totalSpendAmount(); // UPDATE SPEND AMOUNTS
			FinalBankAmount = FinalBankAmount + investAmount;
			spendBar = (totalspendamount * 100)/100000;
			bankBar = (FinalBankAmount * 100)/100000;
			
			
			try{
				response.sendRedirect("ExpenseManager_spend");
			}catch(Exception e){
				System.out.println(e);
			}
			return model;
	}
	

}
