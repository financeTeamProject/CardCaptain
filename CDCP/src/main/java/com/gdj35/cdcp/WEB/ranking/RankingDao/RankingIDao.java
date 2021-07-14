package com.gdj35.cdcp.WEB.ranking.RankingDao;

import java.util.HashMap;
import java.util.List;

public interface RankingIDao {

	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable;

}
