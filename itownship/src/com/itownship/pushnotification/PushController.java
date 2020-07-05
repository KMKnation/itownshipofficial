package com.itownship.pushnotification;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PushController {
	
	@RequestMapping("pushnotification")
	public ModelAndView pushBoard(){
		ModelAndView model = new ModelAndView("index");
		return model;
	}

}
