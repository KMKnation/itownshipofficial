package com.itownship.taskmanager;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itownship.ilogin.Members;
import com.itownship.residentmanager.Resident;

import databaseConnection.DBConnection;

@Controller
public class TaskController {
	
	@RequestMapping("adminpanel/taskmanager/addtask")
	public ModelAndView taskAdder() throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("taskassign");
		
		String q1 = "select * from members where mem_type='user'";
		ResultSet rs = DBConnection.getPreparedStatement(q1).executeQuery();
		ArrayList<Resident> memList = new ArrayList<Resident>();
		Resident r1;
			while(rs.next()){
				r1 = new Resident(rs.getInt("mem_id"), rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
				memList.add(r1);
			}
		
		Iterator<Resident> itrRes = memList.iterator();
			int i =0;
			Resident[] resiList = new Resident[memList.size()];
			while(itrRes.hasNext()){
				resiList[i] = (Resident) itrRes.next();
				i++;
				
			}
			
			model.addObject("residents", resiList);
			
		return model;
	}
	
	@RequestMapping(value = "adminpanel/taskmanager/submitTask", method = RequestMethod.GET)
	public ModelAndView taskAdded(@ModelAttribute("task1") Task task1, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
		
		String query = "insert into tasks (`mem_id`, `chr_id`, `task_desc`, `priority`, `progress`, `deadline`) values ('"+task1.getMem_id()+"', '"+task1.getChr_id()+"', '"+task1.getTask_desc()+"', '"+task1.getPriority()+"', '"+task1.getProgress()+"', '"+task1.getDeadline()+"')";
		DBConnection.getPreparedStatement(query).execute();
		System.out.println("taskadded");
		

		ModelAndView model = tasksShow();
		return model;
	}
	
	
	public Task[] loadTasks() throws ClassNotFoundException, SQLException{
		
		String query = "select * from tasks";
		ArrayList<Task> taskList = new ArrayList<Task>();
		Task t1;
		ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
			while(rs.next()){
				t1 = new Task(rs.getInt("mem_id"), rs.getInt("chr_id"), rs.getString("task_desc"), rs.getString("priority"), rs.getInt("progress"), rs.getString("deadline"));
				taskList.add(t1);
			}
			
		Iterator<Task> itrTask = taskList.iterator();
		
			int i=0;
			Task[] resultTask = new Task[taskList.size()];
			while(itrTask.hasNext()){
				resultTask[i] = (Task) itrTask.next();
				i++;
			}
			
			return resultTask;
	}
	
	@RequestMapping("adminpanel/taskmanager/taskmanagershow")
	public ModelAndView tasksShow() throws ClassNotFoundException, SQLException{
		ModelAndView model = new ModelAndView("taskshow");
		
			Task []t1 = loadTasks(); 
			System.out.println(t1.length);
		model.addObject("task", t1);
		return model;
	}
	
	
	@RequestMapping("adminpanel/taskmanager/deleteTask")
	public ModelAndView deletingTask(@RequestParam("memID") int memID, @RequestParam("chId") int chid) throws ClassNotFoundException, SQLException{
	
		String query = "DELETE FROM tasks WHERE `mem_id` = '"+memID+"' AND chr_id = '"+chid+"'";
		
		if(DBConnection.getPreparedStatement(query).execute()){
			System.out.println("Deleted successfully");
		}
		ModelAndView model = tasksShow();
		return model;
		
	}

}
