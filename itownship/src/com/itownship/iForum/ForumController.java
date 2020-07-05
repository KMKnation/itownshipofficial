package com.itownship.iForum;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

import com.itownship.ilogin.Members;
import com.itownship.residentmanager.Resident;

import databaseConnection.DBConnection;


@Controller
public class ForumController {
	
	
		private static ArrayList<String> blocks;
	
		@ModelAttribute
		public void commonForumAttribute() throws ClassNotFoundException, SQLException{
			
			String query = "SELECT DISTINCT block_name FROM forum";
			ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
			blocks = new ArrayList<String>();
			while(rs.next()){
				blocks.add(rs.getString("block_name"));
			}
		}
		
		
		@RequestMapping("forum/ForumHome")
		public ModelAndView forumPage() throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("index");
			
			
			
			System.out.println(blocks);
			model.addObject("blocks", blocks);
			
			
			return model;
		}
	
		@RequestMapping(value="forum/Forum", method = RequestMethod.GET)
		public ModelAndView forumHomePage(@RequestParam("blckID") String blckID) throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("index2");
			String sql = "select * from forum where block_name='"+blckID+"' ORDER BY post_views DESC";
			ResultSet rs = DBConnection.getPreparedStatement(sql).executeQuery();
			
			Forum f1;
			String author = null;
			ArrayList<Forum> posts = new ArrayList<Forum>();
			
			while(rs.next()){
				String q2 = "select mem_name from members where mem_id="+rs.getInt("member_id");
				ResultSet rs2 = DBConnection.getPreparedStatement(q2).executeQuery();
				
					while(rs2.next()){
						author = rs2.getString("mem_name");
						f1 = new Forum(rs.getInt("post_id"), rs.getString("post_title"), rs.getString("post_desc"), rs.getString("lastpost"), rs.getString("block_name"), rs.getInt("post_views"), author);
						posts.add(f1);
					}
				
			}
			
			Iterator itrPosts = posts.iterator();
			
			Forum[] postBox = new Forum[posts.size()];
			
			int k = 0;
			while(itrPosts.hasNext()){
				Forum fin = (Forum)itrPosts.next();
				postBox[k]=fin;
				k++;
			}
			
			model.addObject("posts",postBox);
			return model;
	}
		
		
		@RequestMapping(value="forum/ForumPosts", method=RequestMethod.GET )
		public ModelAndView selectedPostData(@RequestParam("postid") int postID) throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("forumpost");
			String q1 = "Select * from forum where post_id ="+postID;
			ResultSet rs = DBConnection.getPreparedStatement(q1).executeQuery();
		
			
			Forum f1;
			Members m1;

				while(rs.next()){
					
					String q2 = "select * from members where mem_id="+rs.getInt("member_id");
					ResultSet rs2 = DBConnection.getPreparedStatement(q2).executeQuery();
					
						while(rs2.next()){
							m1 = new Members(rs2.getString("mem_name"), rs2.getString("email"), rs2.getLong("phone"), rs2.getString("block"), rs2.getString("icard"), rs2.getString("mem_type"));
							model.addObject("member", m1);
							
							f1 = new Forum(rs.getInt("post_id"), rs.getString("post_title"), rs.getString("post_desc"), rs.getString("lastpost"), rs.getString("block_name"), rs.getInt("post_views"), m1.getMem_name());
							model.addObject("post", f1);	
						}
						
				}
				
			return model;
		}
		
		@RequestMapping(value = "forum/editpost", method = RequestMethod.GET)
		public ModelAndView usereditor(@RequestParam("userId") String userId) throws ClassNotFoundException, SQLException{
			ModelAndView model = new ModelAndView("user_edit_post");
			
			String query = "select * from members where email ='"+userId+"'";
			ResultSet rs = DBConnection.getPreparedStatement(query).executeQuery();
			Resident r1 = null;
			while(rs.next()){
			r1 = new Resident(rs.getInt("mem_id"), rs.getString("mem_name"), rs.getString("email"), rs.getLong("phone"), rs.getString("block"), rs.getString("last_visited"), rs.getBoolean("status"), rs.getString("icard"));
			}
			
			model.addObject("resident", r1);
			return model;
		}
		
		@RequestMapping(value = "forum/submitPost", method = RequestMethod.GET)
		public String submitiion(@ModelAttribute("forum") Forum forum) throws ClassNotFoundException, SQLException, IOException{
				String q1 = "insert into forum (`post_title`, `post_desc`, `lastpost`, `block_name`, `member_id`, `post_views`) values (?,?,?,?,?,?)";
				PreparedStatement pst = DBConnection.getPreparedStatement(q1);
				pst.setString(1, forum.getPost_title());
				pst.setString(2, forum.getPost_desc());
				pst.setString(3, forum.getLastpost());
				pst.setString(4, forum.getBlock_name());
				pst.setString(5, forum.getPost_author());
				pst.setInt(6, forum.getPost_views());
				pst.execute();
				
				return "Forum?blckID="+forum.getBlock_name();
		}
		
		@RequestMapping("forum/deletePost")
		public void deletingPost(@RequestParam("postId") int postID, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException{
			
			String q = "DELETE FROM forum WHERE `post_id` ="+postID;
			DBConnection.getPreparedStatement(q).execute();
			
			System.out.println("post deleted");
			response.sendRedirect("ForumHome");
		}
		
		
}
 