package com.gdj35.cdcp.WEB.user.UserService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.user.UserDao.UserIDao;

@Service
public class UserService implements UserIService {
	@Autowired UserIDao useridao;
	
	@Override
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable {
		return useridao.getId(params);
	}
	
	@Override
	public HashMap<String, String> getPw(HashMap<String, String> params) throws Throwable {
		return useridao.getPw(params);
	}

	@Override
	public HashMap<String, String> getM(HashMap<String, String> params) throws Throwable {
		return useridao.getM(params);
	}

	@Override
	public int joinM(HashMap<String, String> params) throws Throwable {
		return useridao.joinM(params);
	}

	@Override
	public HashMap<String, String> idCheck(HashMap<String, String> params) throws Throwable {
		return useridao.idCheck(params);
	}

	@Override
	public HashMap<String, String> emailCheck(HashMap<String, String> params) throws Throwable {
		return useridao.emailCheck(params);
	}

}