package com.itownship.residentmanager;


import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itownship.residentmanager.Resident;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import databaseConnection.DBConnection;


@Controller
public class ResidentsController {
	
	public  Resident[] refreshData(Resident tempRes[]) throws ClassNotFoundException, SQLException{
	
		
		String query = "select * from members";
		ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
		
		ArrayList<Resident> v1 = new ArrayList<Resident>();
		while(rs.next()){
			Resident r1 = new Resident(rs.getInt("mem_id"), rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
		
			v1.add(r1);
		}
		
		Iterator<Resident> itr = v1.iterator();
			tempRes = new Resident[v1.size()];
			
			int rescount=0;
			while(itr.hasNext()){
				Resident r1 = itr.next();
				tempRes[rescount] = r1;
				rescount++;
				System.out.println("Resident name"+r1.getMem_name()+"\t");
			}
	
		
		return tempRes;
	}
	
	@RequestMapping("adminpanel/residentmanager/ResidentsDashBoard")
	public ModelAndView showResidentsDashBoard() throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("ResidentsDashBoard");
		
		Resident[] res = null;
		res = refreshData(res);
		
				model.addObject("residents", res);
		return model;
	}
	
	@RequestMapping(value="adminpanel/residentmanager/editResidentData", method = RequestMethod.GET)
	public ModelAndView editResidentsData(@RequestParam("resid") int resid) throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("editRes");
			
			String query = "select * from members where mem_id="+resid;
			ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
			while(rs.next()){
				Resident r1 = new Resident(resid , rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
				model.addObject("resident1", r1);
			}
			return model;
	}
	
	@RequestMapping(value = "adminpanel/residentmanager/updateResidentData", method = RequestMethod.GET)
	public ModelAndView updateResiData(@ModelAttribute("resident1") Resident resident1, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IOException{
		ModelAndView model = new ModelAndView("ResidentsDashBoard");
		String query = "UPDATE members SET mem_name ='"+resident1.getMem_name()+"', email ='"+resident1.getEmail()+"', phone ='"+resident1.getNumber()+"', block ='"+resident1.getBlock()+"', last_visited ='"+resident1.getLast_visited()+"', icard ='"+resident1.getIcard()+"' WHERE mem_id="+resident1.getMem_id();
		System.out.println(query);
		DBConnection.getPreparedStatement(query).execute();
			System.out.println("Update Ececute");
			
				resp.sendRedirect("ResidentsDashBoard");
		
		return model;
	}
	
	
	@RequestMapping(value = "adminpanel/residentmanager/deleteResidentData", method = RequestMethod.GET)
	public ModelAndView deletResiData(@RequestParam("resid") int resid, HttpServletResponse resp) throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("deletRes");
		String query = "Delete from members where mem_id="+resid;
		DBConnection.getPreparedStatement(query).execute();
		System.out.println("Delete performed");
		
		
		return model;
	}
	
	
	@RequestMapping(value = "adminpanel/residentmanager/residentsdata", method = RequestMethod.GET)
	public ModelAndView searchedResiData(@RequestParam("selectedid") String selection, @RequestParam("searchStr") String searchedStr) throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("ResidentsDashBoard");
		String q = "select * from members where "+selection+" = ?";
		
		System.out.println(q);
	
		PreparedStatement pst = DBConnection.getPreparedStatement(q);
		pst.setString(1 , searchedStr);
		
		ResultSet rs = pst.executeQuery();
		
		ArrayList<Resident> v1 = new ArrayList<Resident>();
		while(rs.next()){
			Resident r1 = new Resident(rs.getInt("mem_id"), rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
		
			v1.add(r1);
		}
		
		Iterator<Resident> itr = v1.iterator();
			Resident[] Res = new Resident[v1.size()];
			
			int rescount=0;
			while(itr.hasNext()){
				Resident r1 = itr.next();
				Res[rescount] = r1;
				rescount++;
				System.out.println("Resident name"+r1.getMem_name()+"\t");
			}
	
			model.addObject("residents", Res);
	
			return model;
	}
	

}
