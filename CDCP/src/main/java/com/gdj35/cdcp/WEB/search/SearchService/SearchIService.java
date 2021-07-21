package com.gdj35.cdcp.WEB.search.SearchService;

import java.util.HashMap;
import java.util.List;

public interface SearchIService {

	public List<HashMap<String, String>> searchKeyword(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cardNoDistinct(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> paging(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> pagingDistinct(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> checkKeyword(String data) throws Throwable;

	public List<HashMap<String, String>> checkcardNoDistinct(String data) throws Throwable;

	public List<HashMap<String, String>> checkpagingDistinct(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> randomCard() throws Throwable;

	public List<HashMap<String, String>> checklistKeyword(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cardListGet() throws Throwable;
}
