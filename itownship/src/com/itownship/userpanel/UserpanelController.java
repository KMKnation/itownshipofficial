package com.itownship.userpanel;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itownship.ilogin.Members;
import com.itownship.meetingmanager.Member;
import com.itownship.residentmanager.Resident;

import databaseConnection.DBConnection;


@Controller
public class UserpanelController {
	
	//KILL HAPPENED BECAUSE OF FOLLOWING METHOD
	public Resident[] onlineMembers() throws ClassNotFoundException, SQLException{
		Resident r1 = null;
		
		String query = "select * from members where status=1";
		ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
		
		ArrayList<Resident> onMem = new ArrayList<Resident>();
		
		while(rs.next()){
			r1 = new Resident(rs.getInt("mem_id"), rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
			onMem.add(r1);
		}
		
		Iterator<Resident> itrOnMem = onMem.iterator();
		Resident[] onlineRes = new Resident[onMem.size()];
		int i=0;
		while(itrOnMem.hasNext()){
			onlineRes[i] = itrOnMem.next();
			i++;
		}
		rs.close();
		return onlineRes;
		
	}
	
	public String updateOnlineStatus(String username) throws ClassNotFoundException, SQLException{
		String query = "update `itownship`.`members` set `status` ='1' where `email` = '"+username+"'";
		DBConnection.getPreparedStatement(query).execute();
		return "user online";
		
	}
	
	public String updateOflineStatus(String username) throws ClassNotFoundException, SQLException{
		String query = "update `itownship`.`members` set `status` ='0' where `email` = '"+username+"'";
		DBConnection.getPreparedStatement(query).execute();
		return "user ofline";
		
	}

	public Members[] chairMans() throws ClassNotFoundException, SQLException{
		Members m1 = null;
		
		String query = "select * from members where mem_type='admin'";
		ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
		
		ArrayList<Members> onMem = new ArrayList<Members>();
		
		while(rs.next()){
			m1 = new Members(rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("icard"), rs.getString("mem_type"));
			onMem.add(m1);
		}
		
		Iterator<Members> itrOnMem = onMem.iterator();
		Members[] onlineRes = new Members[onMem.size()];
		int i=0;
		while(itrOnMem.hasNext()){
			onlineRes[i] = itrOnMem.next();
			i++;
		}
		rs.close();
		return onlineRes;
		
	}
	

}
