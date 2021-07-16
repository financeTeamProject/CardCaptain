package com.gdj35.cdcp.WEB.search.SearchContoller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gdj35.cdcp.WEB.search.SearchService.SearchIService;
import com.gdj35.cdcp.common.bean.PagingBean;
import com.gdj35.cdcp.common.service.IPagingService;

@Controller
public class SearchContoller {
	@Autowired public SearchIService iservice;
	@Autowired public IPagingService ipage;
	
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
	public ModelAndView searchingCardList(ModelAndView mav, 
			@RequestParam(required = false) HashMap<String,String> params,
			@RequestParam(required = false) ArrayList<String> option) throws Throwable {

		int page = 1;
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		if(params.get("searchType").equals("keyword")) {//직접검색
			System.out.println("=================");
			System.out.println(params);
			List<HashMap<String, String>> searchKeywordResult = iservice.searchKeyword(params);//키워드 검색 모든 데이터
			List<HashMap<String, String>> searchKeywordAllCardNo = iservice.cardNoDistinct(params);//카드번호 중복제거
			
			int cnt = searchKeywordAllCardNo.size();//총게시글
			PagingBean pb = ipage.getPagingBean(page, cnt);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			
			mav.addObject("option", params.get("option"));
			mav.addObject("searchType", params.get("searchType"));
			mav.addObject("options", option + " 관련 카드");
			mav.addObject("searchResult",searchKeywordResult);//키워드 검색 모든 데이터
			mav.addObject("searchCardNo",searchKeywordAllCardNo);//카드번호 중복제거
			mav.addObject("pb", pb);
			mav.addObject("cnt",cnt);
		} else if (params.get("searchType").equals("optionClick")) {//옵션선택
			mav.addObject("options", option);
		}
		
		mav.setViewName("search/searchingCardList");
		return mav;
	}
}