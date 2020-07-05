package com.itownship.meetingmanager;


import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import databaseConnection.DBConnection;

@Controller
public class MeetingManagerController {
	@RequestMapping("adminpanel/meetingmanager/meetingcontroller")
	public ModelAndView getinsertionData() throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("meeting");
		
		String sql = "select * from meetings";
		MeetingManager m1;
		ArrayList<MeetingManager> meetings = new ArrayList<MeetingManager>();
		
		
		ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
			while(rs.next()){
					m1 = new MeetingManager(rs.getInt("m_id"), rs.getString("m_name"), rs.getString("m_about"), rs.getString("m_place"), rs.getInt("m_presentid"), rs.getInt("m_agendaid"), rs.getString("m_sign"), rs.getString("m_date"));
					meetings.add(m1);
			
			}
			
		Iterator itrMeetings = meetings.iterator();	
		
		
		MeetingManager []meetingBox = new MeetingManager[meetings.size()];
		int i=0;
			while(itrMeetings.hasNext()){
				MeetingManager meeeeting = (MeetingManager)itrMeetings.next();
				meetingBox[i] = meeeeting;
				System.out.print("Meeting name ="+meeeeting.getM_name()+"/t");
				i++;
			}
		model.addObject("meeting",meetingBox);
		return model;
	}
	
	public static final int meeting_ID = (int)(Math.random()*10000);
	
	@RequestMapping("adminpanel/meetingmanager/addmeeting")
	public ModelAndView addMeetingForm(){
		ModelAndView model = new ModelAndView("addmeeting");
		System.out.println(meeting_ID);
		return model;
	}
	
	@ModelAttribute
	public void addingCommonsAttribute(Model model){
		model.addAttribute("mUiD", meeting_ID);

	}
	
	@RequestMapping(value="adminpanel/meetingmanager/add2", method = RequestMethod.GET)
	public ModelAndView addMeetingInfo(@ModelAttribute("meeting1") MeetingManager meeting1){

		ModelAndView model = new ModelAndView("addmeeting2");
		model.addObject("name", meeting1.getM_name());
	
		return model;
	}
	
	@RequestMapping(value ="adminpanel/meetingmanager/add3", method = RequestMethod.GET)
	public ModelAndView addAttendeesForm(@ModelAttribute("meeting1") MeetingManager meeting1) throws Exception{
	
	String query = "INSERT INTO meetings (m_id, m_name, m_about, m_place, m_date)VALUES (?,?,?,?,?)";
	System.out.println(meeting_ID+"\t"+meeting1.getM_name()+"\t"+meeting1.getM_about()+"\t"+meeting1.getM_place()+"\t"+meeting1.getM_date());
	
	try{
		PreparedStatement pst = DBConnection.getPreparedStatement(query);
		pst.setInt(1, meeting_ID);
		pst.setString(2, meeting1.getM_name());
		pst.setString(3, meeting1.getM_about());
		pst.setString(4, meeting1.getM_place());
		pst.setString(5, meeting1.getM_date());
		pst.execute();		
	}catch(Exception e){
		System.out.println(e);
	}
	
	
	
		//Result to select one attendi from members
						ResultSet rsSelectTag = DBConnection.getPreparedStatement("select * from members").executeQuery();
						ModelAndView model = new ModelAndView("addmeeting3");
						Member member1;
						ArrayList<Member> memberS = new ArrayList<Member>();
						while(rsSelectTag.next()){
								member1 = new Member(rsSelectTag.getInt("mem_id"), rsSelectTag.getString("mem_name"), rsSelectTag.getString("email"), rsSelectTag.getLong("phone"), rsSelectTag.getString("block"), rsSelectTag.getString("last_visited"), rsSelectTag.getInt("status"), rsSelectTag.getInt("social_id"), rsSelectTag.getString("icard"));
								memberS.add(member1);
						}
						Iterator itrMemer = memberS.iterator();
							int i=0;
							Member []memBox = new Member[memberS.size()];
							while(itrMemer.hasNext()){
								memBox[i] = (Member)itrMemer.next();
								i++;
							}
						
						model.addObject("member",memBox);

			return model;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="adminpanel/meetingmanager/AddAttendees", method = RequestMethod.GET)
	public ModelAndView addAttendeesData(@RequestParam("meetingID") int meetingID, @RequestParam("attndid") int attndid) throws Exception{
		
		ModelAndView model = new ModelAndView("addmeeting3");
		//Result to select one attendi from members
		ResultSet rsSelectTag = DBConnection.getPreparedStatement("select * from members").executeQuery();
		Member member1;
		ArrayList<Member> memberS = new ArrayList<Member>();
		while(rsSelectTag.next()){
				member1 = new Member(rsSelectTag.getInt("mem_id"), rsSelectTag.getString("mem_name"), rsSelectTag.getString("email"), rsSelectTag.getLong("phone"), rsSelectTag.getString("block"), rsSelectTag.getString("last_visited"), rsSelectTag.getInt("status"), rsSelectTag.getInt("social_id"), rsSelectTag.getString("icard"));
				memberS.add(member1);
		}
		Iterator itrMemer = memberS.iterator();
			int i=0;
			Member []memBox = new Member[memberS.size()];
			while(itrMemer.hasNext()){
				memBox[i] = (Member)itrMemer.next();
				i++;
			}
		
		model.addObject("member",memBox);
		
		
		
		
		
		ResultSet rs = DBConnection.getPreparedStatement("select* from members where mem_id='"+attndid+"'").executeQuery();
				while(rs.next()){
					PresentMembers present = new PresentMembers(rs.getString("mem_name"), meetingID);
					String sql = "INSERT INTO present_members (`p_presenticard`, `meeting_id`) VALUES (?, ?)";
					try{
						PreparedStatement pst = DBConnection.getPreparedStatement(sql);
						pst.setString(1, present.getPresentIcard());
						pst.setInt(2, present.getMeetingId());
						System.out.println(present.getPresenId()+"\t"+present.getPresentIcard()+"\t"+present.getMeetingId()+"\t");
						pst.execute();
					}catch(Exception e){
						System.out.println(e);
					}
					
					try{
						String sql2 = "UPDATE meetings SET `m_presentid` = '"+meetingID+"' WHERE `m_id` = '"+meetingID+"';";
						DBConnection.getPreparedStatement(sql2).execute();
						
					}catch(Exception e){
						System.out.println(e);
					}
			
			
				}
				
				
		
		PresentMembers p1;
		ArrayList<PresentMembers> attendi = new ArrayList<PresentMembers>();
		String q5="select * from present_members where meeting_id="+meetingID;
		ResultSet rs5 = DBConnection.getPreparedStatement(q5).executeQuery();
			while(rs5.next()){
				p1 = new PresentMembers(rs5.getInt("p_presentid"), rs5.getString("p_presenticard"), rs5.getInt("meeting_id"));
				attendi.add(p1);		
			}
		
		Iterator<PresentMembers> itrAtended = attendi.iterator();
		PresentMembers []participated = new PresentMembers[attendi.size()];
			int j = 0;
			while(itrAtended.hasNext()){
				participated[j] = itrAtended.next();
				j++;
			}
		
		
		model.addObject("participated",participated);
		
		return model;
	}
	
	
	@RequestMapping("adminpanel/meetingmanager/Add4")
		public ModelAndView aggendaHomePage(){
			ModelAndView model = new ModelAndView("addmeeting4");
			return model;
	}
	
	@RequestMapping(value="adminpanel/meetingmanager/addAgendaData", method = RequestMethod.GET)
		public ModelAndView submitAgendaData(@ModelAttribute("agenda1") Agenda agenda1){
			ModelAndView model = new ModelAndView("addmeeting4");
	
			String sql = "insert into agenda (`a_title`, `a_discussion`, `a_conclusion`, `meeting_id`) values (?,?,?,?)";
			
			try{
				PreparedStatement pst = DBConnection.getPreparedStatement(sql);
				pst.setString(1, agenda1.getA_title());
				pst.setString(2, agenda1.getA_discuss());
				pst.setString(3, agenda1.getA_concl());
				pst.setInt(4, meeting_ID);
				System.out.println(agenda1.getA_title()+"\t"+agenda1.getA_discuss()+"\t"+agenda1.getA_concl());
				pst.execute();
			}catch(Exception e){
				System.out.println(e);
			}
			
			try{
				String sql2 = "UPDATE meetings SET `m_agendaid` = '"+meeting_ID+"' WHERE `m_id` = '"+meeting_ID+"';";
				DBConnection.getPreparedStatement(sql2).execute();
				
			}catch(Exception e){
				System.out.println(e);
			}
			
			model.addObject("title",agenda1.getA_title());
			model.addObject("discuss",agenda1.getA_discuss());
			model.addObject("concl",agenda1.getA_concl());
			return model;
	}
	
	
	@RequestMapping("adminpanel/meetingmanager/addSignature")
		public ModelAndView addSignature(){
			ModelAndView model = new ModelAndView("signature");
			model.addObject("metid", meeting_ID);
			return model;
	}
	
	@RequestMapping(value="adminpanel/meetingmanager/addSignatureData", method=RequestMethod.GET)
	public ModelAndView addSignatureData(@RequestParam("filename") String filename){
		System.out.println(filename);

		try{
			String sql2 = "UPDATE meetings SET `m_sign` = '"+filename+"' WHERE `m_id` = '"+meeting_ID+"';";
			DBConnection.getPreparedStatement(sql2).execute();
		
		}catch(Exception e){
			System.out.println(e);
		}
		ModelAndView model = new ModelAndView("signature");
		model.addObject("metid", meeting_ID);

		return model;
}

	
	
	@RequestMapping(value="adminpanel/meetingmanager/MeetingReport", method=RequestMethod.GET)
		public ModelAndView reportDashBoard(@RequestParam("metid") int id){
			ModelAndView model = new ModelAndView("meetingreport");
			model.addObject("metid",id);
			return model;
	}
	
	
	
	
	@RequestMapping("adminpanel/meetingmanager/FinalReport")
		public ModelAndView finalReportGenerator() throws Exception{
		
		ModelAndView model = new ModelAndView("report");

			String q1 = "SELECT * FROM meetings WHERE m_id="+meeting_ID;
			ResultSet rs1 = DBConnection.getPreparedStatement(q1).executeQuery();
			
			
		
			while(rs1.next()){
				String title = rs1.getString("m_name");
				String about = rs1.getString("m_about");
				String place = rs1.getString("m_place");
				String sign = rs1.getString("m_sign");
				

				model.addObject("title",title);
				model.addObject("about",about);
				model.addObject("place",place);
				model.addObject("sign",sign);
				
				String q2 = "select * from present_members where meeting_id="+meeting_ID;
				ResultSet totalIcards = DBConnection.getPreparedStatement(q2).executeQuery();
				
				int icardSize = 0;
				
					while(totalIcards.next()){
						icardSize++;
					}
				
				String []icard = new String[icardSize];
					
				
					ResultSet rs2 = DBConnection.getPreparedStatement(q2).executeQuery();
					int i=0;
					while(rs2.next()){
						icard[i] = rs2.getString("p_presenticard");
						i++;
						
							
						String q3 = "select * from agenda where meeting_id="+meeting_ID;
						ResultSet rs3 = DBConnection.getPreparedStatement(q3).executeQuery();
							while(rs3.next()){
								String agenda = rs3.getString(3);
								String discuss = rs3.getString(4);
								String concl = rs3.getString(5);

								model.addObject("agenda",agenda);
								model.addObject("discuss",discuss);
								model.addObject("concl",concl);
							}
						
						
					}
				model.addObject("icard",icard);
					
				
			}
			
			return model;
	}
	
			@RequestMapping(value="adminpanel/meetingmanager/FinalReport", method=RequestMethod.GET)
			public ModelAndView beforefinalReportGenerator(@RequestParam("metid") int metid) throws Exception{
			
			ModelAndView model = new ModelAndView("report");
				
				String q1 = "SELECT * FROM meetings WHERE m_id="+metid;
				ResultSet rs1 = DBConnection.getPreparedStatement(q1).executeQuery();
				
				
			
				while(rs1.next()){
					String title = rs1.getString(2);
					String about = rs1.getString(3);
					String place = rs1.getString(4);
					String sign = rs1.getString(7);
					
		
					model.addObject("title",title);
					model.addObject("about",about);
					model.addObject("place",place);
					model.addObject("sign",sign);
					
					String q2 = "select * from present_members where meeting_id="+metid;
					ResultSet totalIcards = DBConnection.getPreparedStatement(q2).executeQuery();
					
					int icardSize = 0;
					
						while(totalIcards.next()){
							icardSize++;
						}
					
					String []icard = new String[icardSize];
						

					
						ResultSet rs2 = DBConnection.getPreparedStatement(q2).executeQuery();
						int i=0;
						while(rs2.next()){
							System.out.println("icardsize "+icardSize);
							icard[i] = rs2.getString("p_presenticard");
							i++;							
							String q3 = "select * from agenda where meeting_id="+metid;
							ResultSet rs3 = DBConnection.getPreparedStatement(q3).executeQuery();
								while(rs3.next()){
									String agenda = rs3.getString(3);
									String discuss = rs3.getString(4);
									String concl = rs3.getString(5);
		
									model.addObject("agenda",agenda);
									model.addObject("discuss",discuss);
									model.addObject("concl",concl);
								}
							
						}
					
						model.addObject("icard",icard);
							
				}
				
				return model;
		}
			
			
			
		@RequestMapping("adminpanel/meetingmanager/deleteMeeting")
		public void deletingMeeting(@RequestParam("deleteID") int deleteId, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException{

			String prsentyDelete = "DELETE FROM present_members WHERE `meeting_id` ="+deleteId;
			DBConnection.getPreparedStatement(prsentyDelete).execute();
			
			String agendaDelete = "DELETE FROM agenda WHERE `meeting_id` ="+deleteId;
			DBConnection.getPreparedStatement(agendaDelete).execute();
			
			String q = "DELETE FROM meetings WHERE `m_id` ="+deleteId;
			
			DBConnection.getPreparedStatement(q).execute();
			response.sendRedirect("meetingcontroller");
		}

}
