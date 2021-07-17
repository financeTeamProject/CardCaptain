package com.gdj35.cdcp.WEB.user.UserService;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface UserIListService {

	public List<HashMap<String, String>> getList(HashMap<String, String> params) throws Throwable;

	public int getCnt(HashMap<String, String> params) throws Throwable;

}