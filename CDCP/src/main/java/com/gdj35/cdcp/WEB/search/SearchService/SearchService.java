package com.gdj35.cdcp.WEB.search.SearchService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchService implements SearchIService {
	@Autowired SearchIService searchiService;
}