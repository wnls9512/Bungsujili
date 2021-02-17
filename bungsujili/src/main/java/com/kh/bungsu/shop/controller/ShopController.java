package com.kh.bungsu.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.bungsu.common.Utils;
import com.kh.bungsu.shop.model.service.ShopService;
import com.kh.bungsu.shop.model.vo.Shop;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/shop")
public class ShopController {

	@Autowired
	private ShopService shopService;
	
	@RequestMapping("/")
	public ModelAndView registerShop(ModelAndView mav) {
		mav.setViewName("shop/shopRegistrationForm");
		return mav;
	}
	
	@GetMapping("/list")
	public ModelAndView shopList(ModelAndView mav) {		
		log.debug("####################################");
		log.debug("## shopList ");
		log.debug("####################################");
		
		List<Shop> shopList = null;
		
		try {
			shopList = shopService.getShopAllList();
			log.debug("# shopList = {}", shopList);
			mav.addObject("shopList", shopList);
		}catch (Exception e) {
			e.printStackTrace();
		}		
		mav.setViewName("shop/shopList");
		return mav;
	}
	
	@RequestMapping("/list/{sNo}")
	public ModelAndView shopDetail(ModelAndView mav,
									@PathVariable("sNo") int sNo) {
		log.debug("####################################");
		log.debug("## shopDetail ");
		log.debug("####################################");
		
		Shop shop = shopService.getShopInfoOne(sNo);
		mav.addObject("shop", shop);
		mav.setViewName("shop/shopDetail");
		return mav;
	}
	
	@PostMapping("/")
	public ModelAndView shopRegister(ModelAndView mav,
									 RedirectAttributes redirectAttr,
									 HttpServletRequest request,
									 @RequestParam(value = "imgFile", required=false) MultipartFile[] imgFiles,
									 Shop shop) {

		String saveDirectory = request.getServletContext().getRealPath("/resources/img/upload/shop");
		
		for(MultipartFile f : imgFiles) {
			
			if( !f.isEmpty() && f.getSize() !=0) {
				String renamedImgName = Utils.getRename(f.getOriginalFilename());
				
				File file = new File(saveDirectory, renamedImgName);
				
				try {
					f.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				
				shop.setImgOriginalName(f.getOriginalFilename());
				shop.setImgRenamedName(renamedImgName);
				
			}
		}
		
		log.debug("Shop={}", shop);
		int result = shopService.shopRegister(shop);
		log.debug("result={}", shop.getsNo());
		
		redirectAttr.addFlashAttribute("msg", result > 0? "가게가 등록되었습니다😊" : "가게 등록에 실패하였습니다😢 ");		
		
		// 제보글 모아보기 페이지로 이동하기
		mav.setViewName("shop/shopList");
		return mav;
	}
	
}
