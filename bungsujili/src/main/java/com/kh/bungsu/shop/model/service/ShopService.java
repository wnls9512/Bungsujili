package com.kh.bungsu.shop.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.bungsu.shop.model.vo.Shop;

public interface ShopService {

	int shopRegister(Shop shop);

	List<Shop> getShopAllList();

	HashMap<String, Object> getShopInfoOne(int sNo);

}
