package com.gdj35.cdcp.WEB.contents.ContentsService;

import java.util.HashMap;
import java.util.List;

public interface ContentsIService {

	public List<HashMap<String, String>> getCtest(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMovie(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getTip(HashMap<String, String> params) throws Throwable;

	public int getTipCnt(HashMap<String, String> params)  throws Throwable;

	public List<HashMap<String, String>> getTipList(HashMap<String, String> params) throws Throwable;

	public int getMovieCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMovieList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getTestList(HashMap<String, String> params) throws Throwable;

}
