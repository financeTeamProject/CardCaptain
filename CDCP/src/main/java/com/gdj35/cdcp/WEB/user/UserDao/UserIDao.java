package com.gdj35.cdcp.WEB.user.UserDao;

import java.util.HashMap;
import java.util.List;

public interface UserIDao {
	
	public HashMap<String, String> getId(HashMap<String, String> params) throws Throwable;
	
	public HashMap<String, String> getPw(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getM(HashMap<String, String> params) throws Throwable;

	public int joinM(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> idCheck(HashMap<String, String> params) throws Throwable;

}
