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
	@Override
	public int deleteList(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("user.deleteList", params);
	}
	@Override
	public int memUpdate(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("user.memUpdate", params);
	}
	@Override
	public int mCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.mCnt", params);
	}
	@Override
	public List<HashMap<String, String>> mList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("user.mList", params);
	}
	@Override
	public int memLeave(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("user.memLeave", params);
	}
	@Override
	public HashMap<String, String> mDetails(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.mDetails", params);
	}
	@Override
	public int mUpdate(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("user.mUpdate", params);
	}
}
