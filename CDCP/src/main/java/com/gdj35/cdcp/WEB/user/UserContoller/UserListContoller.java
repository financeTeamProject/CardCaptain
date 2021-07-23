package com.gdj35.cdcp.WEB.user.UserContoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.WEB.user.UserService.UserIListService;
import com.gdj35.cdcp.common.bean.PagingBean;
import com.gdj35.cdcp.common.service.IPagingService;

@Controller
public class UserListContoller {
	@Autowired UserIListService useriListService;
	
	@Autowired IPagingService iPagingService;
	
	// 카드목록
	@RequestMapping(value="/joincard")
	public ModelAndView joincard(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) {
		
		int page = 1;
		
		
		if(params.get("page") != null) { 
			page = Integer.parseInt(params.get("page"));
		} //상세보기 -> 목록 (검색어나 페이지 유지용)
		 	
		mav.addObject("page", page);
		mav.setViewName("user/mypage");
		
		return mav;
	}
	// 카드리스트
	@RequestMapping(value="/joincards",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String joincards(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		int page = Integer.parseInt(params.get("page"));
		
		// 페이징
		int cnt = useriListService.getCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 5 , 3);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		// 리스트
		List<HashMap<String, String>> list = useriListService.getList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		return mapper.writeValueAsString(modelMap);
	}
	
	//보유카드리스트
	@RequestMapping(value="/addLists",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String addLists(
			@RequestParam HashMap<String, String> params) throws Throwable{
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		// 리스트
		List<HashMap<String, String>> addlist = useriListService.getAddList(params);
		
		modelMap.put("addlist", addlist);
		
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/addcard")
	public ModelAndView addcard(ModelAndView mav) {
		mav.setViewName("user/mypage");
		
		return mav;
	}
	
	@RequestMapping(value="/addcards",
			method = RequestMethod.POST,
			produces = "text/json;charsetUTF-8")
	@ResponseBody
	public String addcards(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = useriListService.addCard(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e){
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
}