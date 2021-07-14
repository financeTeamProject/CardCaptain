package com.gdj35.cdcp.WEB.search.SearchDao;

import java.util.HashMap;
import java.util.List;

public interface SearchIDao {

	public List<HashMap<String, String>> searchKeyword(HashMap<String, String> params) throws Throwable;

}
