package com.fp.neezit.user.model.service;

import java.util.List;

import com.fp.neezit.product.model.vo.ProductCategory;
import com.fp.neezit.user.model.vo.User;

public interface UserService {
	
	User loginUser(User u);

	int phoneCheck(String phone);
	
	public List<ProductCategory> category() throws Exception;

}
