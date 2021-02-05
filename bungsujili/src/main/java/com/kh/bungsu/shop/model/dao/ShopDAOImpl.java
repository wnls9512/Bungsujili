package com.kh.bungsu.shop.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bungsu.shop.model.vo.Shop;

@Repository
public class ShopDAOImpl implements ShopDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int shopRegister(Shop shop) {
		return sqlSession.insert("shop.shopRegister", shop);
	}

}
