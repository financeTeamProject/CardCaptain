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
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 6 , 3);
		
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
	
	// 카드 추가하기
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
				modelMap.put("res", "success");
			} else {
				modelMap.put("res", "failed");
			}
			
		} catch (Throwable e){
			e.printStackTrace();
			modelMap.put("res", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	// 카드 삭제하기
	@RequestMapping(value="/cardDeletes",
			method = RequestMethod.POST,
			produces = "text/json;charsetUTF-8")
	
	@ResponseBody
	public String cardDeletes(
			@RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println(params);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
		int cnt = useriListService.deleteList(params);
			if(cnt > 0) {
				modelMap.put("res","success");
			} else {
				modelMap.put("res","failed");
			}
			
		} catch (Throwable e){
			e.printStackTrace();
			modelMap.put("res","error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/memUpdates")
	public ModelAndView memUpdates(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav
			) throws Throwable {
		try {
			int cnt = useriListService.memUpdate(params);
			mav.addObject("cnt",cnt);
		} catch (Throwable e){
			e.printStackTrace();
		}
		mav.setViewName("user/mypage");
		
		return mav;
	}
	
	//======================어드민========================
	@RequestMapping(value="/GJMList")
	public ModelAndView GJMList(ModelAndView mav) {
		mav.setViewName("user/GJMList");
		
	return mav;
	}
	
	// 회원 목록 리스트
		@RequestMapping(value="/mLists",
				method = RequestMethod.POST,
				produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String mLists(
				@RequestParam HashMap<String, String> params) throws Throwable{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int page = Integer.parseInt(params.get("page"));
			
			// 페이징
			int cnt = useriListService.mCnt(params);
			
			PagingBean pb = iPagingService.getPagingBean(page, cnt, 15 , 5);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			
			// 리스트
			List<HashMap<String, String>> list = useriListService.mList(params);
			
			modelMap.put("list", list);
			modelMap.put("pb", pb);
			
			return mapper.writeValueAsString(modelMap);
		}
}






