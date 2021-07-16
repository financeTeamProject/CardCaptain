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
		
		if(params.get("searchType").equals("keyword")) {//직접검색
			if(params.get("page") != null) {				
				page = Integer.parseInt(params.get("page"));
			}
			List<HashMap<String, String>> searchKeyword = iservice.searchKeyword(params);//중복제거 없이 모든 카드정보를 담아옴
			List<HashMap<String, String>> searchKeywordAllCardNo = iservice.cardNoDistinct(params);//중복제거하여 모든 카드정보를 담아옴
			
			int cnt = searchKeywordAllCardNo.size();
			
			PagingBean pb = ipage.getPagingBean(page, cnt);
		
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			
			List<HashMap<String, String>> pagingDistinct = iservice.pagingDistinct(params);//중복제거하여 모든 카드정보를 담아옴

			mav.addObject("option", params.get("option"));
			mav.addObject("searchType", params.get("searchType"));
			mav.addObject("options", option + " 관련 카드");
			mav.addObject("searchKeyword",searchKeyword);//중복제거 없이 모든 카드정보를 담아옴(li 반복을 위하여)
			mav.addObject("pagingDistinct",pagingDistinct);//화면에 보여줄 10개의 중복제거된 데이터
			mav.addObject("searchCardNo",searchKeywordAllCardNo);//중복제거하여 모든 카드정보를 담아옴(보여줄 게시물 수)
			mav.addObject("pb", pb);
			mav.addObject("cnt",cnt);
			mav.addObject("page",page);
		} else if (params.get("searchType").equals("optionClick")) {//옵션선택
			mav.addObject("options", option);
		}
		
		mav.setViewName("search/searchingCardList");
		return mav;
	}
}