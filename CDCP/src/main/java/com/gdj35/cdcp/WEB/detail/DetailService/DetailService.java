package com.gdj35.cdcp.WEB.detail.DetailService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.detail.DetailDao.DetailIDao;

@Service

public class DetailService implements DetailIService{
	
	
	@Autowired
	public DetailIDao DetailiDao;
		
	@Override
	public List<HashMap<String, String>> getDCredit(HashMap<String, String> params) throws Throwable {
		
		return DetailiDao.getDCredit(params);
		
	}

	@Override
	public List<HashMap<String, String>> getDCheck(HashMap<String, String> params) throws Throwable {
		
		return DetailiDao.getDCheck(params);
				
	}
	
}




