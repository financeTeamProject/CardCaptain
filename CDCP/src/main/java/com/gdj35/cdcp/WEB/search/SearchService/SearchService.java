package com.gdj35.cdcp.WEB.search.SearchService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.search.SearchDao.SearchIDao;

@Service
public class SearchService implements SearchIService {
	@Autowired SearchIDao idao;

	@Override
	public List<HashMap<String, String>> searchKeyword(HashMap<String, String> params) throws Throwable {
		return idao.searchKeyword(params);
	}

	@Override
	public List<HashMap<String, String>> cardNoDistinct(HashMap<String, String> params) throws Throwable {
		return idao.cardNoDistinct(params);
	}

	@Override
	public List<HashMap<String, String>> paging(HashMap<String, String> params) throws Throwable {
		return idao.paging(params);
	}

	@Override
	public List<HashMap<String, String>> pagingDistinct(HashMap<String, String> params) throws Throwable {
		return idao.pagingDistinct(params);
	}

	@Override
	public List<HashMap<String, String>> checkKeyword(String data) throws Throwable {
		return idao.checkKeyword(data);
	}

	@Override
	public List<HashMap<String, String>> checkcardNoDistinct(String data) throws Throwable {
		return idao.checkcardNoDistinct(data);
	}

	@Override
	public List<HashMap<String, String>> checkpagingDistinct(HashMap<String, String> params) throws Throwable {
		return idao.checkpagingDistinct(params);
	}

	@Override
	public HashMap<String, String> randomCard() throws Throwable {
		return idao.randomCard();
	}

	@Override
	public List<HashMap<String, String>> checklistKeyword(HashMap<String, String> params) throws Throwable {
		return idao.checklistKeyword(params);
	}

	@Override
	public List<HashMap<String, String>> cardListGet() throws Throwable {
		return idao.cardListGet();
	}

	@Override
	public List<HashMap<String, String>> checkDistinct(HashMap<String, String> params) throws Throwable {
		return idao.checkDistinct(params);
	}

	@Override
	public List<HashMap<String, String>> listpagingDistinct(HashMap<String, String> params) throws Throwable {
		return idao.listpagingDistinct(params);
	}

	@Override
	public List<HashMap<String, String>> compareList(String data) throws Throwable {
		return idao.compareList(data);
	}
}