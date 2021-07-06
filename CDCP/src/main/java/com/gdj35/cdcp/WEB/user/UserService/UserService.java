package com.gdj35.cdcp.WEB.user.UserService;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.user.UserDao.UserIDao;

@Service
public class UserService implements UserIService {
	@Autowired UserIDao useridao;
fsadf
	@Override
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable {
		return useridao.getId(params);
	}

}