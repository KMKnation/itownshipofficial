package com.itownship.ilogin;

import java.io.IOException;
import java.lang.reflect.Member;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itownship.residentmanager.Resident;
import com.itownship.taskmanager.Task;
import com.itownship.taskmanager.TaskController;
import com.itownship.userpanel.UserpanelController;
import com.sun.glass.ui.CommonDialogs.Type;
import com.sun.org.apache.bcel.internal.generic.Select;

import databaseConnection.DBConnection;

@Controller
public class Login extends UserpanelController{

	private static String username="";
	private HttpSession sessionId;
	
	
	@RequestMapping("/Forgot")
	public ModelAndView forgetPage(){
		ModelAndView model = new ModelAndView("forgetpass");
		return model;
	}
	
	@RequestMapping("/Register")
	public ModelAndView registerPage(){
		ModelAndView model = new ModelAndView("signup");
		return model;
	}
	
	@RequestMapping(value = "RegDataSubmit", method = RequestMethod.GET)
	public ModelAndView regDatasubmit(@ModelAttribute("mem1") Members mem1, @RequestParam("cpassword") String cpass) throws ClassNotFoundException, SQLException{
		
		ModelAndView model = new ModelAndView();
		
		String vldnQuery = "SELECT * FROM members WHERE email='"+mem1.getEmail()+"' AND PASSWORD='"+mem1.getPassword()+"'";
		
		ResultSet  Duplication = DBConnection.getPreparedStatement(vldnQuery).executeQuery();
			System.out.println(Duplication);
			if(Duplication.next()){
				
				model.addObject("Warning", "User already registerd !!");
				model.setViewName("signup");
				
			}
			else{
				

				String query = "INSERT INTO members (mem_name, email, password, phone, block, icard, mem_type) VALUES (?,?,?,?,?,?,?)";
				PreparedStatement pst = DBConnection.getPreparedStatement(query);
				pst.setString(1, mem1.getMem_name());
				pst.setString(2, mem1.getEmail());
				pst.setString(3, mem1.getPassword());
				pst.setLong(4, mem1.getPhone());
				pst.setString(5, mem1.getBlock());
				pst.setString(6, mem1.getIcard());
				pst.setString(7, mem1.getMem_type());
				
				pst.execute();
				model.setViewName("login");
			}
		
		
		return model;
	}
	
	
	
	@RequestMapping("/Login")
	public ModelAndView userLoginPage(){
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping(value="/LoginWatcher", method=RequestMethod.POST)
		public ModelAndView usernameVerification(@RequestParam("username") String uname, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
		
			ModelAndView model;
			String sql = "select * from members where email='"+uname+"'";
			ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
			
			if(rs.next()){
				model = new ModelAndView("login_next");
				username = uname;
				System.out.println("username = "+username);
				
				model.addObject("USERNAME", rs.getString("mem_name"));
				model.addObject("photo", rs.getString("icard"));
				
				return model;
			}
			else{
				response.sendRedirect("Login");
				return null;
			}
			
		}
	
	//For GET
	@RequestMapping(value="/LoginWatcher", method=RequestMethod.GET)
	public ModelAndView usernameVerification2(@RequestParam("username") String uname, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
	
		ModelAndView model;
		String sql = "select * from members where email='"+uname+"'";
		ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
		
		if(rs.next()){
			model = new ModelAndView("login_next");
			username = uname;
			System.out.println("username = "+username);
			return model;
		}
		else{
			response.sendRedirect("Login");
			return null;
		}
		
	}
	
	@ModelAttribute
		public static void commanAttributeLogin(Model model) throws ClassNotFoundException, SQLException{
			model.addAttribute("username",username);

			String q = "select * from members where email='"+username+"'";
			ResultSet rs = DBConnection.getPreparedStatement(q).executeQuery();
			
			Members m1 = null;
			
			while(rs.next()){

				m1 = new Members(rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("icard"), rs.getString("mem_type"));
				
			}
			
			model.addAttribute("resident", m1);
			
	}
	
	
	
	
	@RequestMapping(value="index", method=RequestMethod.POST)
		public ModelAndView passwordVerification(@RequestParam("password") String pass, HttpServletResponse response, HttpServletRequest request) throws ClassNotFoundException, SQLException, IOException{
			ModelAndView model;
			String sql = "SELECT * FROM members LEFT JOIN bank ON members.mem_id = bank.mem_id WHERE email='"+username+"' AND PASSWORD='"+pass+"'";
			ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
	
			int count = 0;
		
			
			
			long sesBankAmount = 0;
			//// AVAILABLE EVERYWHERE ///////
			String sesName = null;
			String sesEmail = null;
			long sesPhone = 0;
			String sesBLock =null;
			String seslast = null;
			String sesIcard = null;
			int loginId = 0;
			
			String type = null;
		
			/////////////////////////////
			
			while(rs.next()){
				count++;
				type = rs.getString("mem_type");
				System.out.println(type);

				loginId = rs.getInt("mem_id");
				sesName = rs.getString("mem_name");
				sesEmail = rs.getString("email");
				sesPhone = rs.getLong("phone");
				sesBLock = rs.getString("block");
				seslast = rs.getString("last_visited");
				sesIcard = rs.getString("icard");
				sesBankAmount = rs.getLong("Bank_Amount");
				
			}

				sessionId = request.getSession();
			

			String sesuname;
			
			
			
			
			if(count == 1){
				
				model = new ModelAndView();
				sessionId.setAttribute("sesId",username);
				
				sessionId.setAttribute("sesBankAmount", sesBankAmount );
				
				sessionId.setAttribute("loginID", loginId);
				sessionId.setAttribute("sesName", sesName);
				sessionId.setAttribute("sesEmail", sesEmail);
				sessionId.setAttribute("sesIcard", sesIcard);
				sessionId.setAttribute("sesBlock", sesBLock);
				sessionId.setAttribute("sesPhone", sesPhone);
				sessionId.setAttribute("seslast", seslast);
				sessionId.setAttribute("sesType", type);
	
				
				
				
				//////////////If chairman then admin panel else userpanel else guest
				
				if(type.equals("admin")){

					sesuname=(String)sessionId.getAttribute("sesId");
					model.setViewName("adminpanel/admin");
					model.addObject("sesUser",sesuname);
					
				}
				else if(type.equals("user")){
					sesuname=(String)sessionId.getAttribute("sesId");
					model.setViewName("userpanel/index");
					model.addObject("sesUser",sesuname);
					
					/////////////////////USER PAGE AVTIVITIES /////////
					
					//---UPDATE ONLINE STATUS ---/
					
					String updation = updateOnlineStatus(sesuname);
					System.out.println(updation);
					
					///END //

					//---CHairman Members Show -- /
					
					Members[] chairmans = chairMans();
					model.addObject("chairman", chairmans);
					//END//// 
					
					//------- ONLINE MEMBERS -------///
					Resident [] onlineMem = onlineMembers();
					model.addObject("online", onlineMem);
					
					//END//
					
					
					//----task shows -- //
					TaskController tc = new TaskController();
					Task[] loadingtask = tc.loadTasks();
					model.addObject("tasks", loadingtask);
				}
				else{
					model.setViewName("home");
				}
				
				
				return model;
			}
			else{
				response.sendRedirect("LoginWatcher?username="+username);
				return null;
			}
		
	}	
	
	@RequestMapping("signup")
	public ModelAndView signupPage(){
		ModelAndView model = new ModelAndView("signup");
		return model;
	}
	

	@RequestMapping("logout")
	public String logOuting(@RequestParam("logoutToken") boolean flag,HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{

		if(flag==true){
			
				sessionId.invalidate();
			    String userOf = updateOflineStatus(username);
			    System.out.println("logoutdone");
			    System.out.println(userOf);
			
		}
		
		return "adminpanel/admin";
	}
	
	@RequestMapping("userpanel/logout")
	public String logOutingUser(@RequestParam("logoutToken") boolean flag, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{

		if(flag==true){
			
			sessionId.invalidate();
		    String userOf = updateOflineStatus(username);
		    System.out.println("logoutdone");
		    System.out.println(userOf);
		    		
		
	}
	
		return "userpanel/index";
	}
	

}
