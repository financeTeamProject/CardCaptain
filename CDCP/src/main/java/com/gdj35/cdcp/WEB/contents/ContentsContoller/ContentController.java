package com.gdj35.cdcp.WEB.contents.ContentsContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {
	
	
	@RequestMapping(value = "/content")
	public ModelAndView content(ModelAndView mav) {
		mav.setViewName("contents/content");
		
		return mav;
	}
	
	@RequestMapping(value = "/cardTerms")
	public ModelAndView cardTerms(ModelAndView mav) {
		mav.setViewName("contents/cardTerms");
		
		return mav;
	}
	
	@RequestMapping(value = "/Ctest1")
	public ModelAndView Ctest1(ModelAndView mav) {
		mav.setViewName("contents/Ctest1");
		
		return mav;
	}
}
