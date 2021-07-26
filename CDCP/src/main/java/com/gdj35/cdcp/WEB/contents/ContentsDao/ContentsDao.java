package com.gdj35.cdcp.WEB.contents.ContentsDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContentsDao implements ContentsIDao{

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public List<HashMap<String, String>> getCtest(HashMap<String, String> params) throws Throwable {
		
		return sqlSession.selectList("C.getCtest", params);
	}
	@Override
	public List<HashMap<String, String>> getMovie(HashMap<String, String> params) {
		return sqlSession.selectList("C.getMovie", params);
	}
	@Override
	public List<HashMap<String, String>> getTip(HashMap<String, String> params) {
		return sqlSession.selectList("C.getTip", params);
	}
	@Override
	public int getTipCnt(HashMap<String, String> params) {
		return sqlSession.selectOne("C.getTipCnt", params);
	}
	@Override
	public List<HashMap<String, String>> getTipList(HashMap<String, String> params) {
		return sqlSession.selectList("C.getTipList", params);
	}
}
