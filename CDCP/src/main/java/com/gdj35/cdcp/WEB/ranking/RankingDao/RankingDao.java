package com.gdj35.cdcp.WEB.ranking.RankingDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RankingDao implements RankingIDao{

	@Autowired
	public SqlSession sqlSession;
	
	// 신용카드 TOP 10
	@Override
	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.getRCredit", params);
	}
	// 체크카드 TOP 10
	@Override
	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.getRCheck", params);
	}
	// 상세보기
	@Override
	public List<HashMap<String, String>> getCView(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.getCView", params);
	}
	@Override
	public List<HashMap<String, String>> cmpTop1(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.cmpTop1", params);
	}
	@Override
	public List<HashMap<String, String>> cmpTop2(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.cmpTop2", params);
	}
	@Override
	public List<HashMap<String, String>> cmpTop3(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.cmpTop3", params);
	}
	@Override
	public int updateCnt(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.update("R.updateCnt", params);
	}
	@Override
	public List<HashMap<String, String>> reviewList(HashMap<String, String> params) throws Throwable {
		
		 
		return sqlSession.selectList("R.reviewList", params);
	}
	@Override
	public int getReviewCnt(HashMap<String, String> params) throws Throwable {

		return sqlSession.selectOne("R.getReviewCnt", params);
	}
	// 리뷰 작성
	@Override
	public int reviewAdd(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.insert("R.reviewAdd", params);
	}
	// 보유카드 여부 확인
	@Override
	public int gethaveCard(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectOne("R.gethaveCard", params);
	}
	// 상세보기
	@Override
	public HashMap<String, String> detailList(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectOne("R.detailList", params);
	}
	// 리뷰 삭제
	@Override
	public int deleteReview(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.delete("R.deleteReview", params);
	}
	// 리뷰 수정
	@Override
	public int updateReview(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.update("R.updateReview", params);
	}
	// 총 별점 가져오기
	@Override
	public float starTotal(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectOne("R.starTotal", params);
	}
	// 좋아요 수 올리기
	@Override
	public int updatelikeCnt(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.update("R.updatelikeCnt", params);
	}
	// 관리자페이지 리뷰 목록 불러오기
	@Override
	public List<HashMap<String, String>> getReviewList(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.getReviewList", params);
	}
	// 관리자페이지 리뷰 총 수
	@Override
	public int getRCnt(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectOne("R.getRCnt", params);
	}
	// 관리자페이지 상세보기
	@Override
	public HashMap<String, String> adminDetail(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectOne("R.adminDetail", params);
	}
	@Override
	public int reportAdd(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.insert("R.reportAdd", params);
	}

}
