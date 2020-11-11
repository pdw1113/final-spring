package com.fp.neezit.manager.model.service;

import java.sql.Date;
import java.util.List;

import com.fp.neezit.manager.model.vo.Forbidden;

public interface ManagerService {

	
	int insertWords(String words);

	int deleteWords(String dwords);

	List<Forbidden> searchWords(String search);

	List<Forbidden> dateWords(Date date);
	

}
