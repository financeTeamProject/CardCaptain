package com.gdj35.cdcp.WEB.contents.ContentsContoller;

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
import com.gdj35.cdcp.WEB.contents.ContentsService.ContentsIService;
import com.gdj35.cdcp.WEB.user.UserContoller.UserContoller;
import com.gdj35.cdcp.WEB.user.UserService.UserIService;
import com.gdj35.cdcp.common.bean.PagingBean;
import com.gdj35.cdcp.common.service.IPagingService;

@Controller
public class ContentController {
	
	@Autowired
	public IPagingService iPagingService;
	
	@Autowired
	public ContentsIService ContentsiService;

	@Autowired
	public UserContoller userContoller;
	
	@Autowired 
	public UserIService useriService;
	
	
	@RequestMapping(value = "/cardTerms") // 콘텐츠 카드간단용어 기사
	public ModelAndView cardTerms(ModelAndView mav) {
		mav.setViewName("contents/cardTerms");
		
		return mav;
	}
	
	@RequestMapping(value = "/CtestResult") // 콘텐츠 소비심리테스트 결과화면
	public ModelAndView CtestResult(ModelAndView mav) {
		mav.setViewName("contents/CtestResult");
		
		return mav;
	}
	
	@RequestMapping(value = "/CtestResultEnd") // 콘텐츠 소비심리테스트 카드 추천 화면
	public ModelAndView CtestResultEnd(ModelAndView mav) {
		mav.setViewName("contents/CtestResultEnd");
		
		return mav;
	}
	
	@RequestMapping(value = "/main") 
	public ModelAndView main(ModelAndView mav) {
		mav.setViewName("main_Layout/main");
		
		return mav;
	}
	@RequestMapping(value = "/cardTip_1") // 콘텐츠 카드활용꿀팁
	public ModelAndView cardTip_1(ModelAndView mav) {
		mav.setViewName("contents/cardTip_1");
		
		return mav;
	}
	
	@RequestMapping(value = "/cardTip_2") // 콘텐츠 카드활용꿀팁
	public ModelAndView cardTip_2(ModelAndView mav) {
		mav.setViewName("contents/cardTip_2");
		
		return mav;
	}
	
	@RequestMapping(value = "/cardTip_3") // 콘텐츠 카드활용꿀팁
	public ModelAndView cardTip_3(ModelAndView mav) {
		mav.setViewName("contents/cardTip_3");
		
		return mav;
	}
	
	@RequestMapping(value="/Ctest1") // Ctest1 페이지
	public ModelAndView Ctest1(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest1");
		
		return mav;
	}
	
	@RequestMapping(value="/Ctest2") // Ctest2 페이지
	public ModelAndView Ctest2(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		System.out.println(params);
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		if(params != null) {
			System.out.println("=====================");
			System.out.println(params);
			System.out.println("=====================");
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest2");

	} else {
		 mav.setViewName("/cdcp");
	}
		return mav;
	}
	
	@RequestMapping(value="/Ctest3") // Ctest3 페이지
	public ModelAndView Ctest3(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		System.out.println(params);
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest3");
		
		return mav;
	}
	
	@RequestMapping(value="/Ctest4") // Ctest4 페이지
	public ModelAndView Ctest4(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		System.out.println(params);
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest4");
		
		return mav;
	}

	/*
	@RequestMapping(value="/content") // 
	public ModelAndView content(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> 
		data = ContentsiService.getMovie(params);
		
		List<HashMap<String, String>> 
		list = ContentsiService.getTip(params);
		
		mav.addObject("data", data);
		mav.addObject("list", list);
		
		System.out.println(data);
		System.out.println(list);
		mav.setViewName("contents/content");
		
		return mav;
	}
	*/
	@RequestMapping(value="/content")
	  public ModelAndView content(
			  @RequestParam HashMap<String, String> params, 
			  ModelAndView mav) throws Throwable {
		
			int page = 1;
		
			if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
			}	
		
			List<HashMap<String, String>> 
			data = ContentsiService.getMovie(params);
			
			
			mav.addObject("data", data);
			mav.addObject("page", page);
			
			mav.setViewName("contents/content");
			
			return mav;
		}
	
	 @RequestMapping(value="/contentAjax",
				method = RequestMethod.POST,
				produces = "text/json; charset=UTF-8")
		@ResponseBody
		public String contents(
				@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
			// 현재 페이지
			int page = Integer.parseInt(params.get("page"));
			
			// 총 게시글 수
			int cnt = ContentsiService.getTipCnt(params);
			
			// 페이징 계산
			PagingBean pb = iPagingService.getPagingBean(page, cnt, 3, 5);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			List<HashMap<String, String>> tipcon 
			= ContentsiService.getTipList(params);
			System.out.println(tipcon);
			
			
			  if(tipcon != null) {
				  
				  modelMap.put("msg", "success");
				  modelMap.put("tipcon", tipcon);
				  modelMap.put("pb", pb);
				  
			  }else {
				  modelMap.put("msg", "error");
			  }
			}catch(Throwable e){
				e.printStackTrace();
			}
			return mapper.writeValueAsString(modelMap);
	  } // contents end
	 
	 @RequestMapping(value="/adm_hj")
	  public ModelAndView adm_hj(
			  @RequestParam HashMap<String, String> params, 
			  ModelAndView mav) throws Throwable {
		
			int page = 1;
		
			if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
			}	
		
			List<HashMap<String, String>> 
			data = ContentsiService.getMovie(params);
			
			
			mav.addObject("data", data);
			mav.addObject("page", page);
			
			mav.setViewName("admin/adm_hj");
			
			return mav;
		}
	
	 @RequestMapping(value="/adm_hjAjax",
				method = RequestMethod.POST,
				produces = "text/json; charset=UTF-8")
		@ResponseBody
		public String adm_hj(
				@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
			// 현재 페이지
			int page = Integer.parseInt(params.get("page"));
			
			// 총 게시글 수
			int cnt = ContentsiService.getTipCnt(params);
			
			// 페이징 계산
			PagingBean pb = iPagingService.getPagingBean(page, cnt, 3, 5);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			List<HashMap<String, String>> tipcon 
			= ContentsiService.getTipList(params);
			System.out.println(tipcon);
			
			
			  if(tipcon != null) {
				  
				  modelMap.put("msg", "success");
				  modelMap.put("tipcon", tipcon);
				  modelMap.put("pb", pb);
				  
			  }else {
				  modelMap.put("msg", "error");
			  }
			}catch(Throwable e){
				e.printStackTrace();
			}
			return mapper.writeValueAsString(modelMap);
	  }
	 
	 @RequestMapping(value="/adm_hjAjax2",
				method = RequestMethod.POST,
				produces = "text/json; charset=UTF-8")
		@ResponseBody
		public String adm_hj2(
				@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
			// 현재 페이지
			int page = Integer.parseInt(params.get("page"));
			
			// 총 게시글 수
			int cnt = ContentsiService.getMovieCnt(params);
			
			// 페이징 계산
			PagingBean pb = iPagingService.getPagingBean(page, cnt, 3, 5);
			
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			List<HashMap<String, String>> movie
			= ContentsiService.getMovieList(params);
			System.out.println(movie);
			
			
			  if(movie != null) {
				  
				  modelMap.put("msg", "success");
				  modelMap.put("movie", movie);
				  modelMap.put("pb", pb);
				  
			  }else {
				  modelMap.put("msg", "error");
			  }
			}catch(Throwable e){
				e.printStackTrace();
			}
			return mapper.writeValueAsString(modelMap);
	  }
	 
	/*
	 * @RequestMapping(value="/adm_hjAjax3", method = RequestMethod.POST, produces =
	 * "text/json; charset=UTF-8")
	 * 
	 * @ResponseBody public String adm_hj3(
	 * 
	 * @RequestParam HashMap<String, String> params) throws Throwable { ObjectMapper
	 * mapper = new ObjectMapper(); Map<String, Object> modelMap = new
	 * HashMap<String, Object>();
	 * 
	 * try { // 현재 페이지 int page = Integer.parseInt(params.get("page"));
	 * 
	 * // 총 게시글 수 int cnt = ContentsiService.getTestCnt(params);
	 * 
	 * // 페이징 계산 PagingBean pb = iPagingService.getPagingBean(page, cnt, 3, 5);
	 * 
	 * params.put("startCnt", Integer.toString(pb.getStartCount()));
	 * params.put("endCnt", Integer.toString(pb.getEndCount()));
	 * List<HashMap<String, String>> ctest = ContentsiService.getTestList(params);
	 * System.out.println(ctest);
	 * 
	 * 
	 * if(ctest != null) {
	 * 
	 * modelMap.put("msg", "success"); modelMap.put("ctest", ctest);
	 * modelMap.put("pb", pb);
	 * 
	 * }else { modelMap.put("msg", "error"); } }catch(Throwable e){
	 * e.printStackTrace(); } return mapper.writeValueAsString(modelMap); }
	 */
	 
}
