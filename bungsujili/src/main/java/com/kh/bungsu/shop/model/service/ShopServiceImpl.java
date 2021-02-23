package com.kh.bungsu.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.bungsu.shop.model.dao.ShopDAO;
import com.kh.bungsu.shop.model.vo.Review;
import com.kh.bungsu.shop.model.vo.Shop;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ShopServiceImpl implements ShopService{

	@Autowired
	private ShopDAO shopDAO;
	
	@Transactional
	@Override
	public int shopRegister(Shop shop) {
		int result = shopDAO.shopRegister(shop);
		log.debug("ShopNo={}", shop.getsNo());
		
		if(result != 0) {
			HashMap<String, Object> param = new HashMap<>();
			param.put("sNo", shop.getsNo());
			param.put("menuArr", shop.getsMenu());
			result = shopDAO.insertMenuMapping(param);
		}
		
		return result;
	}

	@Override
	public List<Shop> getShopAllList() {
		List<Shop> shopList = shopDAO.getShopAllList();
		return shopList;
	}

	@Override
	public HashMap<String, Object> getShopInfoOne(int sNo) {
		HashMap<String, Object> param = new HashMap<>();
		
		Shop shop = shopDAO.getShopInfoOne(sNo);
		List<Integer> menu = new ArrayList<>();
		List<Review> reviewList = new ArrayList<>();
		
		if(shop != null) {
			menu = shopDAO.getShopMenu(shop.getsNo());
			reviewList = shopDAO.getShopReview(shop.getsNo());
		}
		
		param.put("shop", shop);
		param.put("menu", menu);
		param.put("review", reviewList);
		
		return param;
	}

	@Override
	public int insertReview(Review review) {
		return shopDAO.insertReview(review);
	}
	
	
	

}
