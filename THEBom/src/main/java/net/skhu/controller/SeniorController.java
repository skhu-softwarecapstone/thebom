package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SeniorController {
	//senior page
	@GetMapping("seniorMain")
	public String seniorMain() {
		return "senior/senior_main";
	}
	@GetMapping("diary")
	public String diary() {
		return "senior/diary";
	}
}
