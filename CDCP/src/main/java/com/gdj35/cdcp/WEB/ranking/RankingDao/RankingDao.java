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

	@Override
	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("R.getRCredit", params);
	}
	
}
