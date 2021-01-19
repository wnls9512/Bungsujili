package com.kh.bungsu.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.bungsu.member.model.service.MemberService;
import com.kh.bungsu.member.model.vo.Auth;
import com.kh.bungsu.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView mav) {
		mav.setViewName("member/loginForm");
		return mav;
	}
	
	@RequestMapping("/join")
	public ModelAndView join(ModelAndView mav) {
		mav.setViewName("member/joinForm2");
		return mav;
	}
	
	@GetMapping("/checkIdDuplicate.do")
	public Map<String, Object> checkIdDuplicate(@RequestParam("memberId") String memberId) {
		
		Member member = memberService.selectOneMember(memberId);
		boolean isUsable = (member == null);	//oneMember가 null이면 isUsable = true
		
		Map<String, Object> map = new HashMap<>();
		map.put("isUsable", isUsable);
		map.put("memberId", memberId);
		
		return map;
	}
	
	@PostMapping("/join")
	public String join(RedirectAttributes redirectAttr, 
							 Member member,
							 Auth auth) {
		
		int result = memberService.joinMember(member);
		int result2 = memberService.joinMemberAuth(auth);
		
		if(result>0 && result2>0) {
			redirectAttr.addFlashAttribute("msg", "정상적으로 가입되었습니다.");
		} else {
			redirectAttr.addFlashAttribute("msg", "가입에 실패하였습니다.");
		}
		
		return "redirect:/";
	}
	
	

}
