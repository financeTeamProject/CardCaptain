package com.gdj35.cdcp.WEB.user.UserContoller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.WEB.user.UserService.UserIService;
import com.gdj35.cdcp.util.Mail;

@Controller
public class UserContoller {
	@Autowired UserIService useriService;
	
	//로그인메인
	@RequestMapping(value="/logins",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String login(
				HttpSession session,
				@RequestParam HashMap<String,String> params) throws Throwable {
		System.out.println(params);
			ObjectMapper mapper = new ObjectMapper();
			
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			HashMap<String,String> data = useriService.getM(params);
			
			if(data != null) {
				session.setAttribute("sMNo", data.get("MEMBER_NO"));
				session.setAttribute("sMNm", data.get("NICKNAME"));
				
				modelMap.put("resMsg", "success");
				// mav.addObject("resMsg", "success");
			} else {
				modelMap.put("resMsg", "failed");
				// mav.addObject("resMsg", "failed");
			}
		return mapper.writeValueAsString(modelMap);
	}
	
	//로그아웃
	@RequestMapping(value="/testALogout")
	public ModelAndView testALogout(HttpSession session,
			ModelAndView mav) {
		
		session.invalidate();
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	//회원가입 페이지
	@RequestMapping(value = "/join")
	public ModelAndView join(ModelAndView mav) {
		
		mav.setViewName("user/join");
		
		return mav;
	}
	
	@RequestMapping(value="/joins",
			method = RequestMethod.POST,
			produces = "text/json;charsetUTF-8")
		@ResponseBody
		public String joins(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
			System.out.println(params);
		try {
			int cnt = useriService.joinM(params);
			
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
	
	//ID/PW찾기
	@RequestMapping(value="/searchmem")
	public ModelAndView searchmem(ModelAndView mav) {
		
		mav.setViewName("user/searchmem");
		
		return mav;
	}
	

	//user - searchmem 이메일인증ㅇㅇㅇ
	@RequestMapping(value = "/checkingEmail", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String checkingEmail(@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			HashMap<String, String> data = useriService.getId(params);
			if (params.get("findType").equals("id")) {
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),data.get("MEMBER_ID"));
				modelMap.put("result", result);
			} else if (params.get("findType").equals("pw")) {
	        	String temp = RandomStringUtils.randomAlphanumeric(6);
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),temp);
				modelMap.put("result", result);
			} else if (params.get("findType").equals("join")) {
				//Mail.sendMail(수신자이메일주소, findType, 메일내용)
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),"");
				modelMap.put("result", result);
			} else {
				modelMap.put("result", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "/joincard")
	public ModelAndView joincard(ModelAndView mav) {
		
		mav.setViewName("user/joincard");
		
		return mav;
	}
}