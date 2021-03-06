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

	@Override
	public List<HashMap<String, String>> checkKeyword(String d) throws Throwable {
		return sql.selectList("search.checkKeyword", d);
	}

	@Override
	public List<HashMap<String, String>> checkcardNoDistinct(String d) throws Throwable {
		return sql.selectList("search.checkcardNoDistinct", d);
	}

	@Override
	public List<HashMap<String, String>> checkcardNoDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.checkcardNoDistinct", params);
	}

	@Override
	public List<HashMap<String, String>> checkpagingDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.checkpagingDistinct", params);
	}

	@Override
	public HashMap<String, String> randomCard() throws Throwable {
		return sql.selectOne("search.randomCard");
	}

	@Override
	public List<HashMap<String, String>> checklistKeyword(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.checklistKeyword", params);
	}

	@Override
	public List<HashMap<String, String>> cardListGet() throws Throwable {
		return sql.selectList("search.cardListGet");
	}

	@Override
	public List<HashMap<String, String>> checkDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.checkDistinct", params);
	}

	@Override
	public List<HashMap<String, String>> listpagingDistinct(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.listpagingDistinct", params);
	}

	@Override
	public List<HashMap<String, String>> compareList(String data) throws Throwable {
		return sql.selectList("search.compareList", data);
	}

	@Override
	public int cardDelete(HashMap<String, String> params) throws Throwable {
		return sql.update("search.cardDelete", params);
	}

	@Override
	public int cardBenefitDelete(HashMap<String, String> params) throws Throwable {
		return sql.update("search.cardBenefitDelete", params);
	}

	@Override
	public List<HashMap<String, String>> cardUpdatePop(HashMap<String, String> params) throws Throwable {
		return sql.selectList("search.cardUpdatePop", params);
	}

	@Override
	public int cardDBUpdate(HashMap<String, String> params) throws Throwable {
		return sql.update("search.cardDBUpdate", params);
	}

	@Override
	public int cardTypeDBUpdate(HashMap<String, String> params) throws Throwable {
		return sql.update("search.cardTypeDBUpdate", params);
	}

	@Override
	public String newCardNum(HashMap<String, String> params) throws Throwable {
		return sql.selectOne("search.newCardNum", params);
	}

	@Override
	public int addNewCard(HashMap<String, String> params) throws Throwable {
		return sql.insert("search.addNewCard", params);
	}

	@Override
	public int addNewCardType(HashMap<String, String> params) throws Throwable {
		return sql.insert("search.addNewCardType", params);
	}
}