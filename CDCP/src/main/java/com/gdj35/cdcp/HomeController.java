package com.gdj35.cdcp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	// ????
	@RequestMapping(value="/adm")
	public ModelAndView adm(ModelAndView mav) {
		
		mav.setViewName("main_Layout/adm");
		
		return mav;
	}
	
	@RequestMapping(value="/cardRank")
	public ModelAndView cardRank(ModelAndView mav) {
		
		mav.setViewName("ranking/card_rank");
		
		return mav;
	}
	
	/*
	 * @RequestMapping(value="/search") public ModelAndView search(ModelAndView mav)
	 * {
	 * 
	 * mav.setViewName("search/search");
	 * 
	 * return mav; }
	 */
	
	@RequestMapping(value="/contents")
	public ModelAndView contents(ModelAndView mav) {
		
		mav.setViewName("contents/content");
		
		return mav;
	}
	
	
}
