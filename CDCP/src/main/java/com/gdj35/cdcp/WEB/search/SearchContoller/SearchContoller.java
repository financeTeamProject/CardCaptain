package com.gdj35.cdcp.WEB.search.SearchContoller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchContoller {
	
	//맞춤카드검색 페이지
	@RequestMapping(value = "/checkSearch")
	public ModelAndView checkSearch(ModelAndView mav) {
		mav.setViewName("search/checkSearch");
		return mav;
	}
	
	//키워드검색 페이지
	@RequestMapping(value = "/keywordSearch")
	public ModelAndView keywordSearch(ModelAndView mav) {
		mav.setViewName("search/keywordSearch");
		return mav;
	}
	
	//카드비교 페이지
	@RequestMapping(value = "/compareSearch")
	public ModelAndView compareSearch(ModelAndView mav) {
		mav.setViewName("search/compareSearch");
		return mav;
	}
	
	//카드검색 결과 페이지searchingCardList
	@RequestMapping(value = "/searchingCardList")
	public ModelAndView searchingCardList(ModelAndView mav, @RequestParam HashMap<String,String> params) {
		Iterator<Entry<String,String>> it = params.entrySet().iterator();
		int cnt = 0;
		
		while(it.hasNext()) {
			Entry<String, String> entrySet = (Entry<String, String>) it.next();
			String key = entrySet.getKey();
			String val = entrySet.getValue();
			//System.out.println(entrySet.getKey() + " : " + entrySet.getValue());
			//System.out.println(key + " : " + val);
			cnt++;
			mav.addObject(key, val);
		}
		mav.addObject("paramCnt", cnt);
		mav.setViewName("search/searchingCardList");
		return mav;
	}
}