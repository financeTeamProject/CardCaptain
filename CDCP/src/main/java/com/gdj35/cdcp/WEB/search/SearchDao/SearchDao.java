package com.gdj35.cdcp.WEB.search.SearchDao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDao implements SearchIDao {
	@Autowired public SqlSession sql;

	@Override
	public List<HashMap<String, String>> searchKeyword(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.searchKeyword", params);
	}

	@Override
	public List<HashMap<String, String>> cardNoDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.cardNoDistinct", params);
	}

	@Override
	public List<HashMap<String, String>> paging(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.paging", params);
	}

	@Override
	public List<HashMap<String, String>> pagingDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.pagingDistinct", params);
	}
}