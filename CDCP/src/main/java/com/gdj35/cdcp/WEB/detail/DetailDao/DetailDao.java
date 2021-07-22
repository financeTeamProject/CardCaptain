package com.gdj35.cdcp.WEB.detail.DetailDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class DetailDao implements DetailIDao{
	
	@Autowired
	public SqlSession sqlSession;

	@Override
	public List<HashMap<String, String>> getDCredit(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("detail.getDCredit", params);
			
	}

	@Override
	public List<HashMap<String, String>> getDCheck(HashMap<String, String> params) throws Throwable {

		return sqlSession.selectList("detail.getDCredit" , params);
		
	}
	
}
