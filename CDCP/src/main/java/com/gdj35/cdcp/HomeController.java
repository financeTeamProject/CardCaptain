package com.gdj35.cdcp;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.WEB.search.SearchService.SearchIService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	public SearchIService iservice;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Throwable {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		// 지도 API 카드 랜덤뽑기
		HashMap<String, String> randomCard = iservice.randomCard();
		HashMap<String, String> place = new HashMap<String, String>();

		String[] arr = randomCard.get("SHOP_INFO").split(",");

		try {
			for (int i = 0; i < arr.length; i++) {
				place.put("shop", arr[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("randomCard", randomCard);
		model.addAttribute("arr", arr);
		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	// ????
	@RequestMapping(value = "/adm")
	public ModelAndView adm(ModelAndView mav) {

		mav.setViewName("admin/adm");

		return mav;
	}

	// 카드랭킹 페이지 이동
	@RequestMapping(value = "/cardRank")
	public ModelAndView cardRank(ModelAndView mav) {

		mav.setViewName("ranking/card_rank");

		return mav;
	}

	// 카드검색/비교 페이지 이동
	@RequestMapping(value = "/search")
	public ModelAndView search(ModelAndView mav) {

		mav.setViewName("search/search");

		return mav;
	}

	// 컨텐츠 페이지 이동
	@RequestMapping(value = "/contents")
	public ModelAndView contents(ModelAndView mav) {

		mav.setViewName("contents/content");

		return mav;
	}

	// 어드민 이동
	
	@RequestMapping(value = "/admin")
	public ModelAndView admin(ModelAndView mav) {

		mav.setViewName("admin/admin");

		return mav;
	}
}
