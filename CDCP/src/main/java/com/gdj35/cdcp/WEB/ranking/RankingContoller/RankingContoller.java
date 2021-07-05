package com.gdj35.cdcp.WEB.ranking.RankingContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller 
public class RankingContoller {
	

//	card rank 메인페이지
	@RequestMapping(value="/card_rank")
	public ModelAndView card_rank(ModelAndView mav) {
		
		mav.setViewName("ranking/card_rank");
		
		return mav;
	}
	
//	신용카드 top10 페이지
	@RequestMapping(value="/creditTop10")
	public ModelAndView creditTop10(ModelAndView mav) {
		
		mav.setViewName("ranking/creditTop10");
		
		return mav;
	}
//	체크카드 top10  페이지
	@RequestMapping(value="/checkTop10")
	public ModelAndView checkTop10(ModelAndView mav) {
		
		mav.setViewName("ranking/checkTop10");
		
		return mav;
	}
	
//	카드사별 top3 페이지
	@RequestMapping(value="/cardcompany_top3")
	public ModelAndView cardcompany_top3(ModelAndView mav) {
		
		mav.setViewName("ranking/cardcompany_top3");
		
		return mav;
	}
//	카드상세보기 페이지
	@RequestMapping(value="/cardview")
	public ModelAndView cardview(ModelAndView mav) {
		
		mav.setViewName("ranking/cardview");
		
		return mav;
	}

}
