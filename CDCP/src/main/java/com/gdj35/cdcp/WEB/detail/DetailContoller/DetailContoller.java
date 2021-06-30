package com.gdj35.cdcp.WEB.detail.DetailContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class DetailContoller {
	
	@RequestMapping(value="/detail")
	
	public ModelAndView detail(ModelAndView mav) {
		
		
		mav.setViewName("detail/detail");
		
		return mav;
		
		
	}
	
	
}
