package com.kh.bungsu.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bungsu.member.model.service.MemberService;

import lombok.extern.slf4j.Slf4j;

//@RestController
@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		
		return "member/loginForm";
	}
}
