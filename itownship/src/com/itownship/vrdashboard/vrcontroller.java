package com.itownship.vrdashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class vrcontroller {
	
	@RequestMapping(value = "vrdashboard", method=RequestMethod.GET)
	public ModelAndView vrShow(@RequestParam("vrId") String vrId){
		ModelAndView model = new ModelAndView("vr");
		model.addObject("vrId", vrId);
		return model;
	}
	
	@RequestMapping(value = "vrdashboard2", method = RequestMethod.GET)
	public ModelAndView videoVr(@RequestParam("vrId") String vrId){
		ModelAndView model = new ModelAndView("vr");
		String videoUrl =vrId.concat(".mp4");
		System.out.println("videoUrl :"+videoUrl);
		model.addObject("vrId", videoUrl);
		return model;
	}
}
