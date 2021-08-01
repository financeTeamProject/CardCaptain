package com.gdj35.cdcp.WEB.user.UserContoller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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
//import com.gd.test.common.bean.PagingBean;
import com.gdj35.cdcp.WEB.user.UserService.UserIService;
import com.gdj35.cdcp.util.Mail;
import com.gdj35.cdcp.util.Utils;

@Controller
public class UserContoller {
	@Autowired UserIService useriService;
	
	/* 로그인메인 */
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
			
			params.put("mPw",Utils.encryptAES128(params.get("mPw")));
			
			HashMap<String,String> data = useriService.getM(params);
			
			if(data != null) {
				session.setAttribute("sMNo", data.get("MEMBER_NO"));
				session.setAttribute("sMId", data.get("MEMBER_ID"));
				session.setAttribute("sMPw", data.get("MEMBER_PW"));
				session.setAttribute("sMPw2",Utils.decryptAES128(data.get("MEMBER_PW")));
				session.setAttribute("sMBi", data.get("MEMBER_BIRTH"));
				session.setAttribute("sMCo", data.get("CONTACT"));
				session.setAttribute("sMNm", data.get("NICKNAME"));
				session.setAttribute("sMNa", data.get("E_NAME"));
				session.setAttribute("sMAd", data.get("E_ADDRESS"));
				
				modelMap.put("resMsg", "success");
				
			} else {
				modelMap.put("resMsg", "failed");
			}
		return mapper.writeValueAsString(modelMap);
	}
	
	//로그아웃 (원래 페이지로 이동)
	@RequestMapping(value="/testALogout")
	public void testALogout(HttpSession session,
			HttpServletResponse response) throws Throwable {
		
		session.invalidate();
		
		/* mav.setViewName("redirect:/"); */
		useriService.logout(response);
	
	}
	//로그아웃 2 (내가 원하는 페이지로 이동)
		@RequestMapping(value="/testALogout2")
		public ModelAndView testALogout2 (HttpSession session,
				ModelAndView mav) {
			
			session.invalidate();
			
			mav.setViewName("redirect:/card_rank");
			
			return mav;
		}
	//로그아웃 2 (마이)
			@RequestMapping(value="/testALogout3")
			public ModelAndView testALogout3 (HttpSession session,
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
	
	@RequestMapping(value = "/joins", 
			method = RequestMethod.POST, 
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String joins(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		System.out.println(params);
		
		params.put("mPw",Utils.encryptAES128(params.get("mPw")));
		
		try {
			int cnt = useriService.joinM(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
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
	
	/* id찾기 - 데이터 가져오기 */
	@RequestMapping(value="mDatas",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String mDatas(
			HttpSession session,
			@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		HashMap<String,String> data = useriService.getId(params);
		
		if(data != null) {
			modelMap.put("resMsg", "success");
			modelMap.put("mId", data.get("MEMBER_ID"));
		} else {
			modelMap.put("resMsg", "failed");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	/* pw찾기 - 데이터 가져오기 */
	@RequestMapping(value="mData2s",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String mData2s(
			HttpSession session,
			@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		HashMap<String,String> data = useriService.getPw(params);
		
		System.out.println(data);
		System.out.println(params);
		
		if(data == null) {
			modelMap.put("resMsg", "failed");
			System.out.println("123");
			
		} else if(params.get("findType").equals("pw")) { //(회원가입) 조건에 맞는 모든 값 입력 - 인증코드 발송 - 일치시 joincard로 이동.
			String temp = RandomStringUtils.randomAlphanumeric(6); // 랜덤값 6자리 생성 후 temp에 담음.
			String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),temp); // Mail.sendMail조건에 맞게 값을 담고 Mail.java로 연계. 보내는 값 = "랜덤값"
			
			
			modelMap.put("resMsg", "success");
			modelMap.put("mPw",Utils.decryptAES128(data.get("MEMBER_PW")));
			//modelMap.put("mPw", data.get("MEMBER_PW"));
			modelMap.put("result", result);
			modelMap.put("temp", temp);
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	// 아이디 중복체크
	@RequestMapping(value="/idChecks",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String idChecks(
			HttpSession session,
			@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
			
		Map<String, Object> modelMap = new HashMap<String, Object>();
			
		HashMap<String,String> data = useriService.idCheck(params);
			
		if(data != null) {
			session.setAttribute("sMId", data.get("MEMBER_ID"));

			modelMap.put("resMsg", "success");
		} else {
			modelMap.put("resMsg", "failed");
		}
		return mapper.writeValueAsString(modelMap);
	}
	//이메일 중복체크
	@RequestMapping(value="/emailChecks",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	
	public String emailChecks(
			HttpSession session,
			@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		HashMap<String,String> data = useriService.emailCheck(params);
		
		if(data != null) {
			session.setAttribute("sMId", data.get("MEMBER_ID"));
			
			modelMap.put("resMsg", "success");
			modelMap.put("mId", data.get("MEMBER_ID"));
		} else {
			modelMap.put("resMsg", "failed");
		}
		return mapper.writeValueAsString(modelMap);
	}

	// user - 회원가입 이메일인증
	@RequestMapping(value = "/checkingEmails",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String checkingEmails(
			@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// Mail.sendMail(수신자이메일주소, findType, 메일내용)
		
		try {
			if (params.get("findType").equals("id")) { // (아이디찾기) 전화번호,생년월일,이메일 일치 - 아이디 전송.
				HashMap<String, String> data = useriService.getId(params); // DB의 select값을 data에 담음.
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),data.get("MEMBER_ID")); // ail.sendMail조건에 맞게 값을 담고 Mail.java로 연계. 보내는 값 = "아이디"
				System.out.println("============================================");
				System.out.println(data.get("MEMBER_ID"));
				modelMap.put("result", result); // 값을 result로 jsp에 보내줌
				
			} else if (params.get("findType").equals("pw")) { // (비밀번호찾기) 아이디, 이메일 - 비밀번호 재설정.
				String temp = RandomStringUtils.randomAlphanumeric(6); // 랜덤값 6자리 생성 후 temp에 담음.
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),temp);
				modelMap.put("result", result);
				modelMap.put("temp", temp);
				
			} else if (params.get("findType").equals("join")) { //(회원가입) 조건에 맞는 모든 값 입력 - 인증코드 발송 - 일치시 joincard로 이동.
				String temp = RandomStringUtils.randomAlphanumeric(6); // 랜덤값 6자리 생성 후 temp에 담음.
				String result = Mail.sendMail(params.get("checkEmail"), params.get("findType"),temp); // Mail.sendMail조건에 맞게 값을 담고 Mail.java로 연계. 보내는 값 = "랜덤값"
				modelMap.put("result", result);
				modelMap.put("temp", temp);
				
			} else {
				modelMap.put("result", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	//마이페이지
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage(ModelAndView mav) {
		
		mav.setViewName("user/mypage");
		
		return mav;
	}
}