package com.gdj35.cdcp.WEB.ranking.RankingContoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.WEB.ranking.RankingService.RankingIService;
import com.gdj35.cdcp.WEB.user.UserContoller.UserContoller;
import com.gdj35.cdcp.WEB.user.UserService.UserIService;
import com.gdj35.cdcp.common.bean.PagingBean;
import com.gdj35.cdcp.common.service.IPagingService;

@Controller 
public class RankingContoller {
	
	@Autowired
	public RankingIService RankingiService;
	
	@Autowired
	public IPagingService iPagingService;

	@Autowired
	public UserContoller userContoller;
	
	@Autowired 
	public UserIService useriService;
	
//	card rank 메인페이지
	@RequestMapping(value="/card_rank")
	public ModelAndView card_rank(ModelAndView mav) {
		
		mav.setViewName("ranking/card_rank");
		
		return mav;
	}
	
//	신용카드 top10 페이지
	@RequestMapping(value="/creditTop10")
	public ModelAndView creditTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= RankingiService.getRCredit(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/creditTop10");
		
		return mav;
	}

//	체크카드 top10  페이지
	@RequestMapping(value="/checkTop10")
	public ModelAndView checkTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		
		List<HashMap<String, String>> list 
			= RankingiService.getRCheck(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/checkTop10");
		
		return mav;
	}

// 카드사별 Top3 페이지
	@RequestMapping(value="/cardcompany_top3")
	public ModelAndView cardcompany_top3 (
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> top1
			= RankingiService.cmpTop1(params);
		List<HashMap<String, String>> top2
			= RankingiService.cmpTop2(params);
		List<HashMap<String, String>> top3
			= RankingiService.cmpTop3(params);
		
		mav.addObject("top1", top1);
		mav.addObject("top2", top2);
		mav.addObject("top3", top3);
		
		
		mav.setViewName("ranking/cardcompany_top3");
		
		return mav;
	}
//	카드사별 top3 페이지 test
	@RequestMapping(value="/cardcompany_top3s",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String cardcompany_top3s(
			@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		List<HashMap<String, String>> top1
			= RankingiService.cmpTop1(params);
		List<HashMap<String, String>> top2
			= RankingiService.cmpTop2(params);
		List<HashMap<String, String>> top3
			= RankingiService.cmpTop3(params);
				
		if(top1 != null && top2 != null && top3 != null) {
			modelMap.put("msg", "success");
			modelMap.put("top1", top1);
			modelMap.put("top2", top2);
			modelMap.put("top3", top3);
			
		} else {
			modelMap.put("msg", "failed");
		}
		return mapper.writeValueAsString(modelMap);
	}
//	카드상세보기 페이지
	  @RequestMapping(value="/cardview")
	  public ModelAndView cardview(
			  @RequestParam HashMap<String, String> params, 
			  ModelAndView mav) throws Throwable {
		 // 카드 신청 클릭수 증가	  
		  if(params.get("cardClick") != null) {
			  int cnt = RankingiService.updateCnt(params);
		  }

		
		 // 카드 상세보기 화면 
		  try { 
			  if(params.get("cardNo") != null) { 
		  
				// 현재 페이지
				int page = 1;
										
				if(params.get("page") != null) {
					page = Integer.parseInt(params.get("page"));
				}	
				  List<HashMap<String, String>>
				  data = RankingiService.getCView(params);
				  // 총 별점 가져오기
				  float getStar = RankingiService.starTotal(params);
				  
				  if(getStar == 0) {
					  float starCnt = 0;
					  
					  mav.addObject("starCnt", starCnt);
				  } else {
					  
					  float starCnt = Math.round(((getStar-1)/(5-1))*100);
					  
					  mav.addObject("starCnt", starCnt);
				  }
				  
				  mav.addObject("data", data);
				  mav.addObject("getStar", getStar);
				  mav.addObject("page", page);
				  
				  mav.setViewName("ranking/cardview");
			  }else {
				  mav.setViewName("ranking/wrongApproach");
			  }
		  } catch(Throwable e) {
		  		e.printStackTrace();
		  }
	  return mav; 
	 }
	  // 리뷰 목록 영역 
	  @RequestMapping(value="/cardviews",
					 method = RequestMethod.POST,
					 produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String cardviews(
				@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			// 좋아요 클릭수 증가	  
			  if(params.get("reviewNo") != null) {
				  int likeCnt = RankingiService.updatelikeCnt(params);
				  
				  if(likeCnt > 0) {
						modelMap.put("msg", "success");
					} else {
						modelMap.put("msg", "error");
					}
			  }
			
			
			// 현재 페이지
			int page = Integer.parseInt(params.get("page"));
			
			  // 총 게시글 수
			int cnt = RankingiService.getReviewCnt(params);
				
			  // 페이징 계산
			 PagingBean pb = iPagingService.getPagingBean(page, cnt, 4, 5);

			 params.put("startCnt", Integer.toString(pb.getStartCount()));
			 params.put("endCnt", Integer.toString(pb.getEndCount()));

			 List<HashMap<String, String>> review 
			 	= RankingiService.reviewList(params);
			 
			  if(review != null) {
				  modelMap.put("msg", "success");
				  modelMap.put("review", review);
				  modelMap.put("pb", pb);
				  modelMap.put("cnt", cnt);
				  
			  }else {
				  modelMap.put("msg", "error");
			  }
		
			return mapper.writeValueAsString(modelMap);
	  }
	  // 리뷰작성 팝업
	  @RequestMapping(value = "/reviewWrite", 
					  method = RequestMethod.POST, 
					  produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String reviewWrite(
				@RequestParam HashMap<String, String> params) throws Throwable { 
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int checkCnt = RankingiService.gethaveCard(params);
			
			List<HashMap<String, String>>
			  data = RankingiService.getCView(params);
			
			if(data != null) {
			
				modelMap.put("msg", "success");
				modelMap.put("data", data);
				modelMap.put("checkCnt", checkCnt);
			}else {
				  modelMap.put("msg", "error");
			  }
			return mapper.writeValueAsString(modelMap);
		}
	  // 등록
	  @RequestMapping(value="/reviewAdds",
					  method = RequestMethod.POST,
					  produces = "text/json;charset=UTF-8")
				
		@ResponseBody
		public String reviewAdds(
				@RequestParam HashMap<String, String> params) throws Throwable{
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
				int cnt = RankingiService.reviewAdd(params);
				
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
	// 상세보기
		  @RequestMapping(value="/reviewDetail", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
			
			@ResponseBody
			public String reviewDetail(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				
				try {
					if(params != null){
					
					HashMap<String, String> detail 
						= RankingiService.detailList(params);
					
					modelMap.put("msg", "success");
					modelMap.put("detail", detail);
				}else {
						modelMap.put("msg", "failed");
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		// 상세보기 -> 수정페이지
		  @RequestMapping(value="/reviewUpdate", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
			
			@ResponseBody
			public String reviewUpdate(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				try {
					if(params.get("reviewNo") != null) {
					
					HashMap<String, String> detail 
						= RankingiService.detailList(params);
					
					modelMap.put("msg", "success");
					modelMap.put("detail", detail);
					} else {
						modelMap.put("msg", "failed");
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		// 수정페이지 -> 수정 
			@RequestMapping(value="/reviewUpdates",
							method = RequestMethod.POST,
							produces = "text/json;charset=UTF-8")
			
			@ResponseBody
			public String reviewUpdates(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				try {
					if(params.get("reviewNo") != null) {
					
						int cnt = RankingiService.updateReview(params);
						
						if(cnt > 0) {
							modelMap.put("msg", "success");
						} else {
							modelMap.put("msg", "error");
						}
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		  // 리뷰 삭제
		  @RequestMapping(value="/reviewDelete", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
			
			@ResponseBody
			public String reviewDelete(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				try {
					int cnt = RankingiService.deleteReview(params);
					
					if(cnt > 0) {
						modelMap.put("msg", "success");
					} else {
						modelMap.put("msg", "error");
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		  
		  // 관리자 페이지
		  @RequestMapping(value = "/adminDh")
			  public ModelAndView adminDh(
						@RequestParam HashMap<String, String> params,
						ModelAndView mav) throws Throwable{
				// 현재 페이지
					int page = 1;
					
					if(params.get("page") != null) {
						page = Integer.parseInt(params.get("page"));
					}
					// 총 게시글 수
					int cnt = RankingiService.getRCnt(params);
					
					// 페이징 정보 취득
					PagingBean pb = iPagingService.getPagingBean(page, cnt);
					
					// 게시글 시작, 종료번호 할당
					params.put("startCnt", Integer.toString(pb.getStartCount()));
					params.put("endCnt", Integer.toString(pb.getEndCount()));
				
					List<HashMap<String, String>> reviewList
						= RankingiService.getReviewList(params);
					
					mav.addObject("reviewList", reviewList);
					mav.addObject("page", page);
					mav.addObject("pb", pb);
					
					mav.setViewName("ranking/adminDh");
					
					return mav;
				}
		  // 관리자 페이지
		  @RequestMapping(value = "/adminDh2")
			  public ModelAndView adminDh2(
						@RequestParam HashMap<String, String> params,
						ModelAndView mav) throws Throwable{
				// 현재 페이지
					int page = 1;
					
					if(params.get("page") != null) {
						page = Integer.parseInt(params.get("page"));
					}
					
					mav.addObject("page", page);
					mav.setViewName("ranking/adminDh2");
					
					return mav;
				}
		  
		  // 관리자 페이지 비동기페이지
		  @RequestMapping(value="/adminDhs",
					method = RequestMethod.POST,
					produces = "text/json;charset=UTF-8")
			@ResponseBody
			public String adminDhs(
					@RequestParam HashMap<String, String> params) throws Throwable{
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				// 현재 페이지
			  	   
			  try {	    
				  	int page = Integer.parseInt(params.get("page"));
				  	
					// 총 게시글 수
					int cnt = RankingiService.getRCnt(params);
					
					// 페이징 정보 취득
					PagingBean pb = iPagingService.getPagingBean(page, cnt);
					
					// 게시글 시작, 종료번호 할당
					params.put("startCnt", Integer.toString(pb.getStartCount()));
					params.put("endCnt", Integer.toString(pb.getEndCount()));
				
					List<HashMap<String, String>> reviewList
						= RankingiService.getReviewList(params);
					if(reviewList != null) {
						
					modelMap.put("msg", "success");
					modelMap.put("reviewList", reviewList);
					modelMap.put("page", page);
					modelMap.put("pb", pb);
			  		} else {
			  			modelMap.put("msg", "failed");
			  		}
			  }catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
			  }
			return mapper.writeValueAsString(modelMap);
			}
		  
		// 관리자 페이지 상세보기
		  @RequestMapping(value="/adminDetail", 
						  method = RequestMethod.POST, 
						  produces = "text/json;charset=UTF-8")
			@ResponseBody
			public String adminDetail(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				try {
					if(params != null){
					
					HashMap<String, String> adminDetail 
						= RankingiService.adminDetail(params);
					
					modelMap.put("msg", "success");
					modelMap.put("adminDetail", adminDetail);
				}else {
						modelMap.put("msg", "failed");
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		// 관리자페이지 리뷰 삭제
		  @RequestMapping(value="/adminDelete", 
						  method = RequestMethod.POST, 
						  produces = "text/json;charset=UTF-8")
			
			@ResponseBody
			public String adminDelete(
					@RequestParam HashMap<String, String> params) throws Throwable{
				
				ObjectMapper mapper = new ObjectMapper();
				Map<String, Object> modelMap = new HashMap<String, Object>();
				
				try {
					int cnt = RankingiService.deleteReview(params);
					
					if(cnt > 0) {
						modelMap.put("msg", "success");
					} else {
						modelMap.put("msg", "error");
					}
				} catch (Throwable e) {
					e.printStackTrace();
					modelMap.put("msg", "error");
				}
				
				return mapper.writeValueAsString(modelMap);
			}
		  
}

