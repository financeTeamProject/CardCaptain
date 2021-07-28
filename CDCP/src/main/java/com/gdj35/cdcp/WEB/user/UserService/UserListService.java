package com.gdj35.cdcp.WEB.user.UserService;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.cdcp.WEB.user.UserDao.UserIListDao;

@Service
public class UserListService implements UserIListService {
	@Autowired UserIListDao useriListdao;

	@Override
	public List<HashMap<String, String>> getList(HashMap<String, String> params) throws Throwable {
		return useriListdao.getList(params);
	}

	@Override
	public int getCnt(HashMap<String, String> params) throws Throwable {
		return useriListdao.getCnt(params);
	}

	@Override
	public int addCard(HashMap<String, String> params) throws Throwable {
		return useriListdao.addCard(params);
	}

	@Override
	public List<HashMap<String, String>> getAddList(HashMap<String, String> params) throws Throwable {
		return useriListdao.getAddList(params);
	}

	@Override
	public int deleteList(HashMap<String, String> params) throws Throwable {
		return useriListdao.deleteList(params);
	}

	@Override
	public int memUpdate(HashMap<String, String> params) throws Throwable {
		return useriListdao.memUpdate(params);
	}

	@Override
	public int mCnt(HashMap<String, String> params) throws Throwable {
		return useriListdao.mCnt(params);
	}

	@Override
	public List<HashMap<String, String>> mList(HashMap<String, String> params) throws Throwable {
		return useriListdao.mList(params);
	}
}