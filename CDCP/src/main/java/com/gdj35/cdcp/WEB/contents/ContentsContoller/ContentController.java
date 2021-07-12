package com.gdj35.cdcp.WEB.contents.ContentsContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {
	
	
	@RequestMapping(value = "/content") // 콘텐츠 메인 화면
	public ModelAndView content(ModelAndView mav) {
		mav.setViewName("contents/content");
		
		return mav;
	}
	
	@RequestMapping(value = "/cardTerms") // 콘텐츠 카드간단용어 기사
	public ModelAndView cardTerms(ModelAndView mav) {
		mav.setViewName("contents/cardTerms");
		
		return mav;
	}
	
	@RequestMapping(value = "/Ctest1") // 콘텐츠 소비심리테스트 첫번째 화면
	public ModelAndView Ctest1(ModelAndView mav) {
		mav.setViewName("contents/Ctest1");
		
		return mav;
	}
	
	@RequestMapping(value = "/Ctest2") // 콘텐츠 소비심리테스트 두번째 화면
	public ModelAndView Ctest2(ModelAndView mav) {
		mav.setViewName("contents/Ctest2");
		
		return mav;
	}
	
	@RequestMapping(value = "/Ctest3") // 콘텐츠 소비심리테스트 세번째 화면
	public ModelAndView Ctest3(ModelAndView mav) {
		mav.setViewName("contents/Ctest3");
		
		return mav;
	}
	
	@RequestMapping(value = "/Ctest4") // 콘텐츠 소비심리테스트 네번째 화면
	public ModelAndView Ctest4(ModelAndView mav) {
		mav.setViewName("contents/Ctest4");
		
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
	
}
