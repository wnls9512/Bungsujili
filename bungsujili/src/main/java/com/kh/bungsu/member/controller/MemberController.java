package com.kh.bungsu.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.bungsu.member.model.service.MemberService;
import com.kh.bungsu.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@RestController
@SessionAttributes(value = { "loginMember" })
@Slf4j
public class MemberController {
	
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/sign-in")
	public ModelAndView login(ModelAndView mav) {
		mav.setViewName("member/loginForm");
		return mav;
	}
	
	@GetMapping("/sign-up")
	public ModelAndView join(ModelAndView mav) {
		mav.setViewName("member/joinForm2");
		return mav;
	}
	
	@GetMapping("/member/{memberId}")
	public Map<String, Object> checkIdDuplicate(@PathVariable("memberId") String memberId) {
		
		Member member = memberService.selectOneMember(memberId);
		boolean isUsable = (member == null);	//oneMember가 null이면 isUsable = true
		
		Map<String, Object> map = new HashMap<>();
		map.put("isUsable", isUsable);
		map.put("memberId", memberId);
		
		return map;
	}
	
	@PostMapping("/sign-up")
	public ModelAndView join(ModelAndView mav, 
					   		 Member member,
					   		 RedirectAttributes redirectAttr) {
		
		String rawPassword = member.getPassword();
		String encryptPassword = passwordEncoder.encode(rawPassword);
		
		member.setPassword(encryptPassword);
		
		int result = memberService.joinMember(member);
		
		if(result>0) {
			redirectAttr.addFlashAttribute("msg", "정상적으로 가입되었습니다.");
		} else {
			redirectAttr.addFlashAttribute("msg", "가입에 실패하였습니다.");
		}
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	@PostMapping("/sign-in")
	public ModelAndView signIn(ModelAndView mav,
							   @RequestParam("memberId") String memberId,
							   @RequestParam("password") String password,
							   HttpSession session,
							   RedirectAttributes redirectAttr) {
		
		Member member = memberService.selectOneMember(memberId);
		
		String location = "";
		
		// 로그인 성공
		if(member != null && passwordEncoder.matches(password, member.getPassword())) {
			mav.addObject("loginMember", member);
			
			String next = (String) session.getAttribute("next");
			location = next != null ? next : location;
			session.removeAttribute("next");
		}
		// 로그인 실패
		else {
			redirectAttr.addFlashAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		
		redirectAttr.addFlashAttribute("memberId", memberId);
		mav.setViewName("redirect:/"+location);
		
		return mav;
	}
	
	@RequestMapping("/sign-out")
	public ModelAndView signOut(ModelAndView mav,
								SessionStatus sessionStatus) {
		
		// @SessionAttributes를 통해 등록된 객체 무효화
		if(sessionStatus.isComplete() == false) {
			sessionStatus.setComplete();
		}
		mav.setViewName("redirect:/");
		
		return mav;
	}
	

}
