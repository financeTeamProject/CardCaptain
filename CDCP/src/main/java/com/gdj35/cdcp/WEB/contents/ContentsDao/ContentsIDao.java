package com.gdj35.cdcp.WEB.contents.ContentsDao;

import java.util.HashMap;
import java.util.List;

public interface ContentsIDao {

	public List<HashMap<String, String>> getCtest(HashMap<String, String> params) throws Throwable;

	public int getTipCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getTip(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMovie(HashMap<String, String> params) throws Throwable;

}
