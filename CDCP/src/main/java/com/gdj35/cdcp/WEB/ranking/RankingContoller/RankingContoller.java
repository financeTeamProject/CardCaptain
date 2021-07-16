package com.gdj35.cdcp.WEB.ranking.RankingContoller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.gdj35.cdcp.WEB.ranking.RankingService.RankingIService;

@Controller 
public class RankingContoller {
	
	@Autowired
	public RankingIService RankingiService;

//	card rank 메인페이지
	@RequestMapping(value="/card_rank")
	public ModelAndView card_rank(ModelAndView mav) {
		
		mav.setViewName("ranking/card_rank");
		
		return mav;
	}
	
//	신용카드 top10 페이지
	@RequestMapping(value="/creditTop10")
	public ModelAndView creditTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= RankingiService.getRCredit(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("ranking/creditTop10");
		
		return mav;
	}
//	신용카드 top20 페이지	
	@RequestMapping(value="/creditTop20")
	public ModelAndView creditTop20(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= RankingiService.getRCredit(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("ranking/creditTop20");
		
		return mav;
	}
//	체크카드 top10  페이지
	@RequestMapping(value="/checkTop10")
	public ModelAndView checkTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		
		
		List<HashMap<String, String>> list 
			= RankingiService.getRCheck(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/checkTop10");
		
		return mav;
	}
//	체크카드 top20  페이지	
	@RequestMapping(value="/checkTop20")
	public ModelAndView checkTop20(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		
		
		List<HashMap<String, String>> list 
			= RankingiService.getRCheck(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/checkTop20");
		
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
	  public ModelAndView cardview(
			  @RequestParam HashMap<String, String> params, 
			  ModelAndView mav) throws Throwable { 
		  try {
			  if(params.get("cardNo") != null) { 
		  
				  List<HashMap<String, String>>
		  			data = RankingiService.getCView(params);
		  
				  mav.addObject("data", data);
				  
				  mav.setViewName("ranking/cardview");
				  System.out.println(data);
			  }else {
				  mav.setViewName("ranking/test4s");
			  }
		  } catch(Throwable e) {
		  		e.printStackTrace();
		  }
	  return mav; 
	  }
	  
}

