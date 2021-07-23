package com.gdj35.cdcp.WEB.detail.DetailContoller;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.gdj35.cdcp.WEB.detail.DetailService.DetailIService;


@Controller

public class DetailContoller {
	
	@Autowired DetailIService DetailiService;
	
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

	
	/*
	 * @RequestMapping(value = "/compareSearch") public ModelAndView
	 * compareSearch(ModelAndView mav) { mav.setViewName("search/compareSearch");
	 * return mav; }
	 */
		
//	신용카드 top20 페이지	
	@RequestMapping(value="/creditTop20")
	public ModelAndView creditTop20(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= DetailiService.getDCredit(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/creditTop20");
		
		return mav;
	}
		
	  // 체크카드 top20 페이지
	  
	  @RequestMapping(value="/checkTop20") public ModelAndView checkTop20(
	  
	  @RequestParam HashMap<String, String> params, ModelAndView mav) throws
	  Throwable {
	  	  
	  List<HashMap<String, String>> list = DetailiService.getDCheck(params);
	  
	  mav.addObject("list", list);
	  
	  mav.setViewName("ranking/checkTop20");
	  
	  return mav; 
	  
	  }
	  
}

