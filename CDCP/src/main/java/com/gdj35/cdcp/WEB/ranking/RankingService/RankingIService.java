package com.gdj35.cdcp.WEB.ranking.RankingService;

import java.util.HashMap;
import java.util.List;

public interface RankingIService {

	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable;

}
