package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao implements UserIDao {
	@Autowired 
	public SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.getId", params);
	}
	@Override
	public HashMap<String, String> getPw(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.getPw", params);
	}
	@Override
	public HashMap<String, String> getM(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.getM", params);
	}
	@Override
	public int joinM(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("user.joinM", params);
	}
	@Override
	public HashMap<String, String> idCheck(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.idCheck", params);
	}
	@Override
	public HashMap<String, String> mCheck(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.mCheck", params);
	}
}
