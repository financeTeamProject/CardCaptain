package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;

public interface UserIDao {
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getM(HashMap<String, String> params) throws Throwable;

	public int joinM(HashMap<String, String> params) throws Throwable;

}
