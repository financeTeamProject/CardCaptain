package com.gdj35.cdcp.WEB.ranking.RankingDao;

import java.util.HashMap;
import java.util.List;

public interface RankingIDao {

	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getCView(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop1(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop2(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop3(HashMap<String, String> params) throws Throwable;

}
