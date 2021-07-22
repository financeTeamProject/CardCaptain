package com.gdj35.cdcp.WEB.detail.DetailDao;

import java.util.HashMap;
import java.util.List;

public interface DetailIDao {

	public List<HashMap<String, String>> getDCredit(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getDCheck(HashMap<String, String> params) throws Throwable;
	
}
