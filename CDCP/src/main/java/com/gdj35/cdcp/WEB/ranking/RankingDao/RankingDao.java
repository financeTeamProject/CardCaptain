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
	
}
