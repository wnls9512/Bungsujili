package com.kh.bungsu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BungsuController {

	//루트로 들어온 요청
	@GetMapping("/")
	public String home() {		
		// /WEB-INF/views/index.jsp
		return "index";
	}
	
}
