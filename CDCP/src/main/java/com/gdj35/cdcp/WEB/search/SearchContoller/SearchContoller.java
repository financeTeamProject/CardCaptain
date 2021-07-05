package com.gdj35.cdcp.WEB.search.SearchContoller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.common.CommonProperties;
import com.gdj35.cdcp.util.Utils;

@Controller
public class SearchContoller {
	//맞춤카드검색 페이지
	@RequestMapping(value = "/checkSearch")
	public ModelAndView checkSearch(ModelAndView mav) {
		mav.setViewName("search/checkSearch");
		return mav;
	}
	
	//키워드검색 페이지
	@RequestMapping(value = "/keywordSearch")
	public ModelAndView keywordSearch(ModelAndView mav) {
		mav.setViewName("search/keywordSearch");
		return mav;
	}
	
	//카드비교 페이지
	@RequestMapping(value = "/compareSearch")
	public ModelAndView compareSearch(ModelAndView mav) {
		mav.setViewName("search/compareSearch");
		return mav;
	}
	
	//카드검색 결과 페이지searchingCardList
	@RequestMapping(value = "/searchingCardList")
	public ModelAndView searchingCardList(ModelAndView mav) {
		mav.setViewName("search/searchingCardList");
		return mav;
	}
	
	@RequestMapping(value = "/checkingEmail", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String fileUploadAjax(@RequestParam HashMap<String,String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();

		return mapper.writeValueAsString(modelMap);
	}
}
