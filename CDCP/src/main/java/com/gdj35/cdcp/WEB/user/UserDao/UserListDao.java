package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserListDao implements UserIListDao {
	@Autowired 
	public SqlSession sqlSession;
	
	@Override
	public List<HashMap<String, String>> getList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("user.getList", params);
	}
	@Override
	public int getCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.getCnt", params);
	}
	@Override
	public int addCard(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("user.addCard", params);
	}
	@Override
	public List<HashMap<String, String>> getAddList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("user.getAddList", params);
	}
}
