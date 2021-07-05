package com.gdj35.cdcp.WEB.user.UserContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserContoller {

	//회원가입 페이지
	@RequestMapping(value = "/join")
	public ModelAndView join(ModelAndView mav) {
		
		mav.setViewName("user/join");
		
		return mav;
	}
	
	//ID/PW찾기
	@RequestMapping(value="/searchmem")
	public ModelAndView searchmem(ModelAndView mav) {
		
		mav.setViewName("user/searchmem");
		
		return mav;
	}
	
	//로그인메인
	@RequestMapping(value="/login")
	public ModelAndView login(ModelAndView mav) {
		
		mav.setViewName("user/login");
		
		return mav;
	}
}