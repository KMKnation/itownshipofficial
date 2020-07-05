package com.itownship.websitemanager;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebsiteManagerController {

	@RequestMapping("adminpanel/websitemanager/websitemanage")
	public ModelAndView controlPanel(){
		ModelAndView model = new ModelAndView("websitemanager");
		return model;
	}
	
	@RequestMapping("adminpanel/websitemanager/uimanager")
	public ModelAndView uicontrol(){
		ModelAndView model = new ModelAndView("uicontrol");
		return model;
	}
	
	@RequestMapping("adminpanel/websitemanager/colorpickertool")
	public ModelAndView colorpicker(){
		ModelAndView model = new ModelAndView("colorpicker");
		return model;
	}
	
	@RequestMapping(value="adminpanel/websitemanager/change", method = RequestMethod.GET)
	public ModelAndView changeui(HttpServletRequest request, @RequestParam("bgcolor") String ncolor) throws IOException{
		ModelAndView model = uicontrol();
		
		HttpSession session = request.getSession();
		session.setAttribute("bgcolor", ncolor);
		System.out.println("color changed");
		
		return model;
	}
	
}
