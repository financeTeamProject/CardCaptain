package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;
import java.util.List;

public interface UserIListDao {
	
	public List<HashMap<String, String>> getList(HashMap<String, String> params) throws Throwable;

	public int getCnt(HashMap<String, String> params) throws Throwable;

	public int addCard(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getAddList(HashMap<String, String> params) throws Throwable;

	public int deleteList(HashMap<String, String> params) throws Throwable;

	public int memUpdate(HashMap<String, String> params) throws Throwable;

}
