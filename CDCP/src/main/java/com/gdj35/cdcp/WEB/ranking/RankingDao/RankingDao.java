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
		
		System.out.println("======DAO=======");
		System.out.println(params);
		System.out.println("=============");
		 
		return sqlSession.selectList("R.reviewList", params);
	}
	@Override
	public int getReviewCnt(HashMap<String, String> params) throws Throwable {

		return sqlSession.selectOne("R.getReviewCnt", params);
	}

}
