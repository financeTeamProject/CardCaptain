package com.gdj35.cdcp.WEB.ranking.RankingService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.ranking.RankingDao.RankingIDao;

@Service
public class RankingService implements RankingIService {

	@Autowired
	public RankingIDao RankingiDao;
	
	@Override
	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getRCredit(params);
	}

	@Override
	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable {
		
		return RankingiDao.getRCheck(params);
	}

}
