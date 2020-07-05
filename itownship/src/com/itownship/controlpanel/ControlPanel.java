package com.itownship.controlpanel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.bcel.internal.generic.Select;

import Mail.MailSender;
import databaseConnection.DBConnection;

@Controller
public class ControlPanel {

	@RequestMapping("home")
	public ModelAndView staticPageGenerator(){
		
		ModelAndView model = new ModelAndView("home");
		return model;
	}
	
	@RequestMapping("Search")
	public ModelAndView searchingData(@RequestParam("param") String param) throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("search");
		
		ArrayList ls1 = new ArrayList();
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/itownship";
		String username = "root";
		String pass = "1234";
		
		Connection conn = DriverManager.getConnection(url,username,pass);
		
		DatabaseMetaData md = conn.getMetaData();
		ResultSet rs = md.getTables(null, null, "%", null);
		
		Statement statement = conn.createStatement();

		while (rs.next()) {
		  System.out.println(rs.getString(3));
		  
			ResultSet results = statement.executeQuery("SELECT * FROM "+rs.getString(3)+"");
			
			// Get resultset metadata
			ResultSetMetaData metadata = results.getMetaData();
			int columnCount = metadata.getColumnCount();
			System.out.println("test_table columns : ");
			
			// Get the column names; column indices start from 1
			for (int i=1; i<=columnCount; i++) {
			  String columnName = metadata.getColumnName(i);
			  System.out.println(columnName);
			  
			  String strt = "'%";
			  String end = "%'";
			  
			  String main = strt.concat(param).concat(end);
			  
			  	String mainQ = "select * from "+rs.getString(3)+" where "+columnName+" like "+main;
			  	System.out.println(mainQ);
			  	
			  	ResultSet mainRes = DBConnection.getPreparedStatement(mainQ).executeQuery();
			  		while(mainRes.next()){
			  			String data = mainRes.getString(columnName);
			  			System.out.println("DATA FOund at :"+columnName+" and data is :"+data);
			  //			String finalData = "DATA Found in :"+columnName+" and data is :"+data;
			  			String f = "<span style='color: blue';>"+param+"</span> is found as a <span style='color: green';><b>"+data+"</b></span> in  <span style='color: #e67d00';><i>"+columnName+"</i></span> of <span style='color: #9B2727';><h4>"+rs.getString(3)+"</h4></span>";
			  			ls1.add(f);
			  		}
			  
			}



		}
		
		model.addObject("searchList", ls1);
		return model;
	}

	
	@RequestMapping(value ="SendMail", method = RequestMethod.GET)
	public void sendingMain(@RequestParam("name") String name, @RequestParam("email_field") String email_field, @RequestParam("message") String message, @RequestParam("subject") String subject, HttpServletResponse response) throws IOException{
		
		MailSender mailSender = new MailSender();
		String body = "Hello from I-township. "
				+ "Your Friend "+name+" has sent following message to you..."
				+ "[[ "+message+" ]]";
		mailSender.sendMail(email_field, subject, body);
		
		response.sendRedirect("mailsent.jsp");
		
	}

	
	@RequestMapping("adminpanel/taskmanager/")
	public ModelAndView taskManagerController(){
		ModelAndView model = new ModelAndView("taskmanager");
		return model;

	}

	@RequestMapping("adminpanel/meetingmanager/")
	public ModelAndView meetingManagerController(){
		ModelAndView model = new ModelAndView("meetingmanager");
		return model;

	}

	@RequestMapping("adminpanel/expensemanager/")
	public ModelAndView expenseController(){
		ModelAndView model = new ModelAndView("expensecontrolpanel");
		return model;

	}

	@RequestMapping("adminpanel/websitemanager/")
	public ModelAndView websiteUIChanger(){
		ModelAndView model = new ModelAndView("websiteuichanger");
		return model;
	}
	
	@RequestMapping("adminpanel/residentmanager/")
	public ModelAndView residentManager(){
		ModelAndView model = new ModelAndView("residentcrud");
		return model;
	}
	
	@RequestMapping("paymentgateway/")
	public ModelAndView paymentGatway(){
		ModelAndView model = new ModelAndView("redirect");
		return model;
		}
	
	@RequestMapping("vrdashboard")
	public ModelAndView vrDashBoard(){
		ModelAndView model = new ModelAndView("vr");
		return model;
	}

	@RequestMapping("adminpanel/pushnotification/")
	public ModelAndView pushDashBoard(){
		ModelAndView model = new ModelAndView("frameboard");
		return model;
	}
	
	
	//////////////////////////////////////////////////////////////////
	

	@RequestMapping("userpanel/AddExpense")
	public ModelAndView userPanelExpense(){
		ModelAndView model = new ModelAndView("expensemanager/expensemanager");
		return model;
	}
	

	@RequestMapping("userpanel/AddMeeting")
	public ModelAndView userPanelMeeting(){
		ModelAndView model = new ModelAndView("meetingmanager/meetingmanager");
		return model;
	}
	
	
	
	
	///////////////////////////// GUEST OR ALL MAPPING BELOW /////////////////////////////
	
	@RequestMapping("expensemanager")
	public ModelAndView expenseManager(){
		ModelAndView model = new ModelAndView("expensemanager");
		return model;
	}
	
	@RequestMapping("meetingmanager")
	public ModelAndView meetingManager(){
		ModelAndView model = new ModelAndView("meetingmanager");
		return model;
	}
	
	@RequestMapping("residentmanager")
	public ModelAndView residentManagerDetail(){
		ModelAndView model = new ModelAndView("residentmanager");
		return model;
	}
	
	@RequestMapping("websitemanager")
	public ModelAndView websiteManager(){
		ModelAndView model = new ModelAndView("websitemanager");
		return model;
	}
	
	@RequestMapping("notificationfeature")
	public ModelAndView noti(){
		ModelAndView model = new ModelAndView("notification");
		return model;
	}
	
}

