package com.kh.bungsu.board.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
@RequestMapping("/board")
public class BoardController {

	@RequestMapping("/shop")
	public ModelAndView registerShop(ModelAndView mav) {
		mav.setViewName("board/shopRegistrationForm");
		return mav;
	}
	
	@RequestMapping("")
	public ModelAndView boardList(ModelAndView mav) {
		mav.setViewName("board/boardList");
		return mav;
	}
	
	@RequestMapping("/1")
	public ModelAndView boardDetail(ModelAndView mav) {
		mav.setViewName("board/boardDetail");
		return mav;
	}
	
}
