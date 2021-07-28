package com.gdj35.cdcp.WEB.ranking.RankingService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.ranking.RankingDao.RankingIDao;

@Service
public class RankingService implements RankingIService {

	@Autowired
	public RankingIDao RankingiDao;
	
	@Override
	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getRCredit(params);
	}

	@Override
	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getRCheck(params);
	}

	@Override
	public List<HashMap<String, String>> getCView(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getCView(params);
	}

	@Override
	public List<HashMap<String, String>> cmpTop1(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.cmpTop1(params);
	}

	@Override
	public List<HashMap<String, String>> cmpTop2(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.cmpTop2(params);
	}

	@Override
	public List<HashMap<String, String>> cmpTop3(HashMap<String, String> params) throws Throwable {

		return RankingiDao.cmpTop3(params);
	}

	@Override
	public int updateCnt(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.updateCnt(params);
	}

	@Override
	public List<HashMap<String, String>> reviewList(HashMap<String, String> params) throws Throwable {
		 
		return RankingiDao.reviewList(params);
	}

	@Override
	public int getReviewCnt(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getReviewCnt(params);
	}
	// 리뷰 작성
	@Override
	public int reviewAdd(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.reviewAdd(params);
	}
	// 보유카드 여부 확인
	@Override
	public int gethaveCard(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.gethaveCard(params);
	}
	// 상세보기 목록
	@Override
	public HashMap<String, String> detailList(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.detailList(params);
	}
	// 리뷰 삭제
	@Override
	public int deleteReview(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.deleteReview(params);
	}
	// 리뷰 수정
	@Override
	public int updateReview(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.updateReview(params);
	}
	// 총 별점 가져오기
	@Override
	public float starTotal(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.starTotal(params);
	}
	// 좋아요 수 올리기
	@Override
	public int updatelikeCnt(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.updatelikeCnt(params);
	}
	// 관리자페이지 리뷰 목록 불러오기
	@Override
	public List<HashMap<String, String>> getReviewList(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getReviewList(params);
	}
	// 관리자페이지 리뷰 총 수
	@Override
	public int getRCnt(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getRCnt(params);
	}
	// 관리자페이지 상세보기
	@Override
	public HashMap<String, String> adminDetail(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.adminDetail(params);
	}




}
