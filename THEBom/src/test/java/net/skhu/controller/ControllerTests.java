package net.skhu.controller;

import java.util.List;

import org.junit.Test;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import net.skhu.document.senior.Senior;
import net.skhu.repository.SeniorRepository;

public class ControllerTests {
	
	private SeniorRepository seniorRepository;
	
	@Test
	public String senior(Model model) {
		List<Senior> seniors=this.seniorRepository.findAll();
		model.addAttribute("seniors", seniors);
		return "social/senior";
	}
}
