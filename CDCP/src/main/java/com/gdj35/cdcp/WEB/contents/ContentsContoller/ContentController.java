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

@Controller
public class ContentController {
	
	@Autowired
	public ContentsIService ContentsiService;
	
	
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
	
	@RequestMapping(value = "/main") // 콘텐츠 소비심리테스트 카드 추천 화면
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
		
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest2");
		
		return mav;
	}
	
	@RequestMapping(value="/Ctest3") // Ctest3 페이지
	public ModelAndView Ctest3(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
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
		
		List<HashMap<String, String>> list
			= ContentsiService.getCtest(params);
		
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("contents/Ctest4");
		
		return mav;
	}
	
	@RequestMapping(value="/content") // 
	public ModelAndView content(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> 
		list = ContentsiService.getMovie(params);
		
		mav.addObject("list", list);
		
		System.out.println(list);
		mav.setViewName("contents/content");
		
		return mav;
	}
	/*
	@RequestMapping(value="/content") // 
	public ModelAndView content3(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> 
		list = ContentsiService.getTip(params);
		
		mav.addObject("list", list);
		
		System.out.println(list);
		mav.setViewName("contents/content");
		
		return mav;
	}
	*/
}
