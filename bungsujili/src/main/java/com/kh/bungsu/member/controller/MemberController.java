package com.kh.bungsu.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.bungsu.member.model.service.MemberService;
import com.kh.bungsu.member.model.vo.Auth;
import com.kh.bungsu.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		
		return "member/loginForm";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "member/joinForm";
	}
	
	@GetMapping("/checkIdDuplicate.do")
	@ResponseBody
	public Map<String, Object> checkIdDuplicate(@RequestParam("memberId") String memberId) {
		
		String oneMember = memberService.selectOneMember(memberId);
		boolean isUsable = (oneMember == null);	//oneMember가 null이면 isUsable = true
		
		Map<String, Object> map = new HashMap<>();
		map.put("isUsable", isUsable);
		map.put("memberId", memberId);
		
		return map;
	}
	
	@PostMapping("/joinMember")
	public String memberJoin(RedirectAttributes redirectAttr, 
							 Member member,
							 Auth auth) {

		System.out.println("member="+member);
		System.out.println("authority="+auth);
		
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
