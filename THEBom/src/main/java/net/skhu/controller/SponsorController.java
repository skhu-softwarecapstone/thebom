package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.repository.PlaceRepository;
import net.skhu.repository.SponsorRepository;

@Controller
public class SponsorController {
	
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private PlaceRepository placeRepository;
	
	//sponsor
		@GetMapping("sponMain")
		public String sponMain() {
			return "sponsor/sponsor_main";
		}
		@GetMapping("register")
		public String register() {
			return "sponsor/register";
		}
		@GetMapping("manage")
		public String manage(Model model) {
			List<Place> places=this.placeRepository.findAll();
			model.addAttribute("places", places);
			return "sponsor/manage";
		}
		
//		@GetMapping("manage_detail")
//		public String manageDetail(@RequestParam("id") String id,Model model) {
//			
//			model.addAttribute("place", placeRepository.findById(id));
//			return "sponsor/manage_detail";
//		}
		
		@GetMapping("spon")
		public String spon(Model model) {
			List<Place> places=this.placeRepository.findAll();
			model.addAttribute("places", places);
			return "sponsor/spon";
		}
		@GetMapping("sponMypage")
		public String sponMypage() {
			return "sponsor/mypage";
		}
		@GetMapping("sponNotice")
		public String sponNotice() {
			return "sponsor/notice";
		}
		@GetMapping("sponNoticeDetail")
		public String sponNoticeDetail() {
			return "sponsor/notice_detail";
		}
		
		
}
