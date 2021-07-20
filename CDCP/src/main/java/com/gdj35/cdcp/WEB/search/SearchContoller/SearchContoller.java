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
		System.out.println("==================");
System.out.println(option);
		int page = 1;
		
		if(params.get("searchType").equals("keyword")) {//직접검색
			//========== 페이징 Start
			if(params.get("page") != null) {				
				page = Integer.parseInt(params.get("page"));
			}
			List<HashMap<String, String>> searchKeyword = iservice.searchKeyword(params);//중복제거 없이 모든 카드정보를 담아옴(li 반복을 위하여)
			List<HashMap<String, String>> cardNoDistinct = iservice.cardNoDistinct(params);
			
			int cnt = cardNoDistinct.size();
			
			PagingBean pb = ipage.getPagingBean(page, cnt);
		
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			
			List<HashMap<String, String>> pagingDistinct = iservice.pagingDistinct(params);//화면에 보여줄 10개의 중복제거된 데이터

			mav.addObject("searchKeyword",searchKeyword);//중복제거 없이 모든 카드정보를 담아옴(li 반복을 위하여)
			mav.addObject("pagingDistinct",pagingDistinct);//화면에 보여줄 10개의 중복제거된 데이터
			
			mav.addObject("pb", pb);
			mav.addObject("cnt",cnt);
			mav.addObject("page",page);
			//========== 페이징 End
			
			mav.addObject("option", params.get("option"));
			mav.addObject("searchType", params.get("searchType"));
			mav.addObject("options", option + " 관련 카드");

			mav.setViewName("search/searchingCardList");
		} else if (params.get("searchType").equals("optionClick")) {//옵션선택
			String data = "";
			
			for(int i=0; i<option.size(); i++) {
				data += ",'" + option.get(i) + "'";
			}
			data = data.substring(1,data.length());
			//========== 페이징 Start
			if(params.get("page") != null) {
				page = Integer.parseInt(params.get("page"));
			}
			
			List<HashMap<String, String>> checkKeyword = iservice.checkKeyword(data);//중복제거 없이 모든 카드정보를 담아옴(li 반복을 위하여)
			List<HashMap<String, String>> checkcardNoDistinct = iservice.checkcardNoDistinct(data);
			System.out.println("======================");
			System.out.println(checkcardNoDistinct.size());
			int cnt = checkcardNoDistinct.size();
			
			PagingBean pb = ipage.getPagingBean(page, cnt);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			params.put("data", data);//params.put으로 넣어도 안에 값이 String이면 '$'를 써야 함
			
			List<HashMap<String, String>> checkpagingDistinct = iservice.checkpagingDistinct(params);//화면에 보여줄 10개의 중복제거된 데이터
			
			mav.addObject("pagingDistinct",checkpagingDistinct);//화면에 보여줄 10개의 중복제거된 데이터
			mav.addObject("searchKeyword",checkKeyword);//중복제거 없이 모든 카드정보를 담아옴(li 반복을 위하여)
			
			mav.addObject("pb", pb);
			mav.addObject("cnt",cnt);
			mav.addObject("page",page);
			//========== 페이징 End
			
			mav.addObject("option", params.get("option"));
			mav.addObject("searchType", params.get("searchType"));
			mav.addObject("options", option + " 관련 카드");
			
			mav.setViewName("search/searchingCardList");
		} else {
			mav.setViewName("ranking/test4s");
		}
		return mav;
	}
}