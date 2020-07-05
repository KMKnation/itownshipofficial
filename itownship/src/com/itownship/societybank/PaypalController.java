package com.itownship.societybank;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaypalController {

	@RequestMapping(value = "paypal", method = RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value = "adminpanel/expensemanager/paymentcheckout", method = RequestMethod.GET)
	public ModelAndView checkOutProcess(@RequestParam("exp_id")String exp_id, @RequestParam("expName") String expenseName, @RequestParam("expAmount") String expenseAmount){
		ModelAndView model = new ModelAndView("checkout");
		model.addObject("expName", expenseName);
		model.addObject("expId", exp_id);
		model.addObject("expAmount", expenseAmount);
		
		return model;
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success(ModelMap modelMap, HttpServletRequest request){
		PayPalSucess payPalSuccess = new PayPalSucess();
		modelMap.put("result", payPalSuccess.getPayPal(request));
		return "success";
	}
}
