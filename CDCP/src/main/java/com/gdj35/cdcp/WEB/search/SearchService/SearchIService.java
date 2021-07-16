package com.gdj35.cdcp.WEB.search.SearchService;

import java.util.HashMap;
import java.util.List;

public interface SearchIService {

	public List<HashMap<String, String>> searchKeyword(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cardNoDistinct(HashMap<String, String> params) throws Throwable;

}
