package com.gdj35.cdcp.WEB.ranking.RankingContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller 
public class RankingContoller {
	
	@RequestMapping(value="/ranking")
	
	public ModelAndView ranking (ModelAndView mav) {
		
		mav.setViewName("ranking/ranking");
		
		return mav;
	}
	
	@RequestMapping(value="/creditTop10")
	public ModelAndView creditTop10(ModelAndView mav) {
		
		mav.setViewName("ranking/creditTop10");
		
		return mav;
	}
}
