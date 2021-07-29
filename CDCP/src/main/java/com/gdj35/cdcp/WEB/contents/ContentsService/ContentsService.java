package com.gdj35.cdcp.WEB.contents.ContentsService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.contents.ContentsDao.ContentsDao;

@Service
public class ContentsService implements ContentsIService{

	@Autowired
	public ContentsDao ContentsiDao;
	
	@Override
	public List<HashMap<String, String>> getCtest(HashMap<String, String> params) throws Throwable {
		
		return ContentsiDao.getCtest(params);
	}

	@Override
	public List<HashMap<String, String>> getMovie(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getMovie(params);
	}

	@Override
	public List<HashMap<String, String>> getTip(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getTip(params);
	}

	@Override
	public int getTipCnt(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getTipCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getTipList(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getTipList(params);
	}

	@Override
	public int getMovieCnt(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getMovieCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getMovieList(HashMap<String, String> params) throws Throwable {
		return ContentsiDao.getMovieList(params);
	}

}
