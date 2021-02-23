package com.kh.bungsu.shop.model.dao;

import java.util.HashMap;
import java.util.List;

import com.kh.bungsu.shop.model.vo.Review;
import com.kh.bungsu.shop.model.vo.Shop;

public interface ShopDAO {

	int shopRegister(Shop shop);

	int insertMenuMapping(HashMap<String, Object> param);

	List<Shop> getShopAllList();

	Shop getShopInfoOne(int sNo);

	List<Integer> getShopMenu(int sNo);

	int insertReview(Review review);

	List<Review> getShopReview(int sNo);

}
