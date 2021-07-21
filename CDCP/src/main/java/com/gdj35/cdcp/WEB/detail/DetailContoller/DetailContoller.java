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
	
	@RequestMapping(value="/detail01")
	
	public ModelAndView detail01(ModelAndView mav) {
		
		
		mav.setViewName("detail/detail01");
		
		return mav;
			
	}
	
	@RequestMapping(value="/detail02")
	
	public ModelAndView detail02(ModelAndView mav) {
		
		
		mav.setViewName("detail/detail02");
		
		return mav;
			
	}
	
	@RequestMapping(value="/detail03")
	
	public ModelAndView detail03(ModelAndView mav) {
		
		
		mav.setViewName("detail/detail03");
		
		return mav;
			
	}
		
	@RequestMapping(value="/detail04")
	
	public ModelAndView detail04(ModelAndView mav) {
		
		
		mav.setViewName("detail/detail04");
		
		return mav;
			
	}
	
	
	
	
}
