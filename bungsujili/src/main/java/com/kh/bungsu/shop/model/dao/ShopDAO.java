package com.kh.bungsu.shop.model.dao;

import java.util.HashMap;

import com.kh.bungsu.shop.model.vo.Shop;

public interface ShopDAO {

	int shopRegister(Shop shop);

	int insertMenuMapping(HashMap<String, Object> param);

}
