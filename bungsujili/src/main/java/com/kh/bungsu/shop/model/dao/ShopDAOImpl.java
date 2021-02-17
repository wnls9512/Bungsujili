package com.kh.bungsu.shop.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bungsu.shop.model.vo.Shop;

@Repository
public class ShopDAOImpl implements ShopDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String namespace = "shop";
	
	@Override
	public int shopRegister(Shop shop) {
		return sqlSession.insert(namespace + ".shopRegister", shop);
	}

	@Override
	public int insertMenuMapping(HashMap<String, Object> param) {
		return sqlSession.insert(namespace + ".insertMenuMapping", param);
	}

	@Override
	public List<Shop> getShopAllList() {
		return sqlSession.selectList(namespace + ".getShopAllList");
	}

	@Override
	public Shop getShopInfoOne(int sNo) {
		return sqlSession.selectOne(namespace + ".getShopInfoOne", sNo);
	}
	
}
