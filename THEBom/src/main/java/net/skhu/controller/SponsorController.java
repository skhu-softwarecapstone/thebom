package net.skhu.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.skhu.document.Blind;
import net.skhu.document.Dailylog;
import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.repository.BlindRepository;
import net.skhu.repository.DailylogRepository;
import net.skhu.repository.PlaceRepository;
import net.skhu.repository.SponsorRepository;

@Controller
public class SponsorController {
	
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private PlaceRepository placeRepository;
	@Autowired
	private BlindRepository blindRepository;
	@Autowired
	private DailylogRepository dailylogRepository;
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
		/*
		//사각지대 신고데이터 삽입
*/
		@ResponseBody
		@RequestMapping("/insertBlind")
		public String insertBlind(@RequestParam("name") String name,@RequestParam("content") String content,@RequestParam("pNo") int pNo) {
			Blind blind= new Blind();
			int bNo = (int) (this.blindRepository.count() + 1);
			blind.setBNo(bNo);
			blind.setName(name);
			blind.setUserId("jimin123"); //로그인값으로 수정
			blind.setContent(content);
			this.blindRepository.insert(blind);

			return "";
		}
		
		/*
		//사각지대 신고데이터 삽입
*/
		@ResponseBody
		@RequestMapping("/insertSpon")
		public String insertLog(@RequestParam("seniorName") String seniorName,@RequestParam("date") Date date,@RequestParam("logContent") String logContent) {
			Dailylog dailylog= new Dailylog();
			int dNo = (int) (this.dailylogRepository.count() + 1);
			dailylog.setDNo(dNo);
			dailylog.setDate(date);
			dailylog.setUserId("jimin123"); //로그인값으로 수정
			dailylog.setContent(logContent);
			dailylog.setSeniorName(seniorName); //선택한 기관값
			this.dailylogRepository.insert(dailylog);

			return "";
		}
		
}