package com.kh.bungsu.shop.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bungsu.shop.model.dao.ShopDAO;
import com.kh.bungsu.shop.model.vo.Shop;

@Service
public class ShopServiceImpl implements ShopService{

	@Autowired
	private ShopDAO shopDAO;
	
	@Override
	public int shopRegister(Shop shop) {
		return shopDAO.shopRegister(shop);
	}

}
