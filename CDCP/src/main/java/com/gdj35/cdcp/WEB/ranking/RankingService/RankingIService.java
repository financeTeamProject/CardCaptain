package com.gdj35.cdcp.WEB.ranking.RankingService;

import java.util.HashMap;
import java.util.List;

public interface RankingIService {

	public List<HashMap<String, String>> getRCredit(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getRCheck(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getCView(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop1(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop2(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> cmpTop3(HashMap<String, String> params) throws Throwable;

	public int updateCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> reviewList(HashMap<String, String> params) throws Throwable;

	public int getReviewCnt(HashMap<String, String> params) throws Throwable;

	public int reviewAdd(HashMap<String, String> params) throws Throwable;

	public int gethaveCard(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> detailList(HashMap<String, String> params) throws Throwable;

	public int deleteReview(HashMap<String, String> params) throws Throwable;

	public int updateReview(HashMap<String, String> params) throws Throwable;



}