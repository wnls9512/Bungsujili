package com.kh.bungsu.shop.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bungsu.shop.model.vo.Shop;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class ShopController {

	@RequestMapping("/shop")
	public ModelAndView registerShop(ModelAndView mav) {
		mav.setViewName("shop/shopRegistrationForm");
		return mav;
	}
	
	@RequestMapping("/list")
	public ModelAndView shopList(ModelAndView mav) {
		mav.setViewName("shop/shopList");
		return mav;
	}
	
	@RequestMapping("/list/1")
	public ModelAndView shopDetail(ModelAndView mav) {
		mav.setViewName("shop/shopDetail");
		return mav;
	}
	
	@PostMapping("/shop")
	public ModelAndView shopRegister(ModelAndView mav,
									 Shop shop) {
		
		log.debug("shop = "+shop);
		mav.setViewName("index");
		return mav;
	}
	
}
