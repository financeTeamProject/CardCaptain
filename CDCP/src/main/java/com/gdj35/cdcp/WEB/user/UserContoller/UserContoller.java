package com.gdj35.cdcp.WEB.user.UserContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserContoller {

	//회원가입 페이지
	@RequestMapping(value = "/join")
	public ModelAndView search(ModelAndView mav) {
		
		mav.setViewName("user/join");
		
		return mav;
	}
}
