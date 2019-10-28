package net.skhu.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.document.Blind;
import net.skhu.document.Circle;
import net.skhu.document.Dailylog;
import net.skhu.document.SocialWorker;
import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.repository.BlindRepository;
import net.skhu.repository.CircleRepository;
import net.skhu.repository.DailylogRepository;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.SponsorRepository;

@Controller
public class SocialController {
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private SeniorRepository seniorRepository;
	@Autowired
	private CircleRepository circleRepository;

	//social
		@GetMapping("social")
		public String social() {
			return "social/social_main";
		}
		@GetMapping("addCircle")
		public String addCircle(Model model) {
			
			return "social/addCircle";
		}
		@GetMapping("circle")
		public String circle(Model model) {
			List<Circle> circles=this.circleRepository.findAll();
			model.addAttribute("circles", circles);
			return "social/circle";
		}
		
		@GetMapping("social/notice")
		public String notice() {
			return "notice";
		}
		
		@GetMapping("senior")
		public String senior(Model model) {
			List<Senior> seniors=this.seniorRepository.findAll();
			model.addAttribute("seniors", seniors);
//			Senior senior=this.seniorRepository.findBySeNo(1);
//			model.addAttribute("senior", senior);
			return "social/senior";
		}
		
//		@GetMapping("seniorDetail")
//		public String seniorDetail(@RequestParam("seNo") int seNo,Model model) {
//			model.addAttribute("senior", seniorRepository.findBySeNo(seNo));
//			return "social/senior_detail";
//		}

		@GetMapping("seniorDetail")
		public String seniorDetail(@RequestParam("seNo") int seNo,Model model) {
			model.addAttribute("senior", seniorRepository.findBySeNo(seNo));
			return "social/senior_detail";
		}
		
		@GetMapping("socialMypage")
		public String socialMypage() {
			return "social/mypage";
		}
		
		
		@GetMapping("noticeDetail")
		public String noticeDetail(@RequestParam("id") String id,Model model)  {
			return "social/notice_detail";
		}
		
		@GetMapping("sponsor")
		public String Sponsor(Model model) {
			
			List<Sponsor> sponsors=this.sponsorRepository.findAll();
			model.addAttribute("sponsors", sponsors);
			return "social/sponsor";
		}
		
		@GetMapping("sponsorview")
		public String SponsorView(Model model) {
			
			model.addAttribute("sponsor", sponsorRepository.findBySpNo(1));
			return "social/sponsor_view";
		}
		
		@GetMapping("sponsorview1")
		public String SponsorView1(@RequestParam("id") String id,Model model) {
			
			model.addAttribute("sponsor", sponsorRepository.findById(id));
			return "social/sponsorview";
		}

}
