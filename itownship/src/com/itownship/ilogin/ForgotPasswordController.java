package com.itownship.ilogin;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Mail.SendMail;
import databaseConnection.DBConnection;

@WebServlet("/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	public ForgotPasswordController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String flag = request.getParameter("flag");
		if(flag.equals("forgot"))
		{
		
		Members member = new Members();	

		
		String email = request.getParameter("email");
		
		System.out.println("Email id"+ email);
		
		member.setEmail(email);
	
	
		List ls =  isRightEmail(member);
		
		
		
		if(ls.size() == 0){
			System.out.println("Controller says, It's not a valid Email ID!");
			response.sendRedirect("ForgotPassword.jsp");
		}
		else {
			Members m1 = (Members) ls.get(0);
		
			String password = m1.getPassword();
			
			System.out.println("-------------------"+password);
			SendMail sendMail = new SendMail();
			Boolean mailSendStatus = sendMail.sendMail(email,password);

			System.out.println("Mail Sent Status :: "+mailSendStatus);

			response.sendRedirect("login.jsp");
		}
		}

	
	}

	
	private List isRightEmail(Members member) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try{
			
			String query = "select * from members where email='"+member.getEmail()+"'";
			ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
			while(rs.next()){
				Members m1 = new Members(rs.getString("mem_name"), rs.getString("email"), rs.getString("password"), rs.getLong("phone"), rs.getString("block"), rs.getString("icard"), rs.getString("mem_type"));
				ls.add(m1);
			}
			
			//ls = q.list();
			
			
			System.out.println("---------"+ls.size());
			
			System.out.println("Done");
//			session.flush();
//			session.close();
		} catch (Exception e) 
		{
			e.printStackTrace();

		}

		return ls;

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			
	}

}
