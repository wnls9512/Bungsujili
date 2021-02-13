package com.kh.bungsu.shop.model.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.bungsu.shop.model.dao.ShopDAO;
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
		log.debug("ShopNo={}", shop.getSNo());
		
		if(result != 0) {
			HashMap<String, Object> param = new HashMap<>();
			param.put("sNo", shop.getSNo());
			param.put("menuArr", shop.getSMenu());
			result = shopDAO.insertMenuMapping(param);
		}
		
		return result;
	}

}
