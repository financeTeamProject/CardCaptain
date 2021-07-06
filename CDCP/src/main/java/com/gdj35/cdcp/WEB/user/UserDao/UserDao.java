package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao implements UserIDao {
	@Autowired 
	public SqlSession sqlSession;
jaofjsdl;kf
	@Override
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("user.getId", params);
	}
}
