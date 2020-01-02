package net.skhu.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.skhu.document.Blind;
import net.skhu.document.Dailylog;
import net.skhu.document.Notice;
import net.skhu.document.User;
import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.repository.BlindRepository;
import net.skhu.repository.DailylogRepository;
import net.skhu.repository.PlaceRepository;
import net.skhu.repository.SponsorRepository;
import net.skhu.repository.UserRepository;
import net.skhu.service.CustomUserDetailsService;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private PlaceRepository placeRepository;
	@Autowired
	private BlindRepository blindRepository;
	@Autowired
	private DailylogRepository dailylogRepository;
	@Autowired
	private CustomUserDetailsService userService;

	// admin version 메인페이지-접속한 유저정보랑 공지사항 객체목록 5개 담을것
	@RequestMapping(value = "/sp/sp_main", method = RequestMethod.GET)
	public ModelAndView dashboard(Model model, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());

		session.setAttribute("user", user); // 세션에 로그인 정보 넣어두기.

		modelAndView.addObject("currentUser", user);
		modelAndView.addObject("fullName", "Welcome " + user.getFullname());
		// modelAndView.addObject("adminMessage", "Content Available Only for Users with
		// Admin Role");
		modelAndView.setViewName("user/sp/sp_main");

		return modelAndView;
	}

	// 유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind")
	public String blind(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Blind> blinds = this.blindRepository.findByUserId(user.getEmail()); // 로그인 아이디로 변경해야함
		model.addAttribute("blinds", blinds);
		return "user/sp/blind";
	}

	// 유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind_detail")
	public String blindDetail(@RequestParam("bNo") int bNo, Model model) {
		Blind blind = this.blindRepository.findByBNo(bNo);
		model.addAttribute("part", blind);
		return "user/sp/blind_detail";
	}

	@PostMapping("/sp/blind_detail")
	public String blindDetail(@ModelAttribute("part") Blind part) {
		Blind blind = this.blindRepository.findByBNo(part.getBNo());
		this.blindRepository.delete(blind);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		this.blindRepository.save(blind);
		return "redirect:/sp/blind";
	}

	// 유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind_insert")
	public String blindInsert() {
		return "user/sp/blind_insert";
	}

	// 유저 사각지대 신고 user/sp폴더로 옮겨야함
	@PostMapping("/sp/blind_insert")
	public String blindInsert(@ModelAttribute("part") Blind part, HttpSession session) {
		User user = (User) session.getAttribute("user");
		Blind blind = new Blind();
		int bno = (int) (this.blindRepository.count() + 1);
		blind.setBNo(bno);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		blind.setDate(new Date());
		blind.setUserId(user.getEmail()); // 로그인한 아이디 넣기
		blind.setProcessState(0);
		this.blindRepository.insert(blind);

		return "redirect:/sp/blind";
	}
	@GetMapping("/sp/blindDelete")
	public String blindDelete(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		this.blindRepository.delete(blind);
		return "redirect:/sp/blind";
	}

	@GetMapping("/sp/dailylog")
	public String dailylog(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Dailylog> dailylogs = this.dailylogRepository.findByUserId(user.getEmail()); // 로그인 아이디로 변경해야함
		model.addAttribute("dailylogs", dailylogs);
		return "user/sp/dailylog";
	}

	// 유저 일지작성 user/sp폴더로 옮겨야함
	@GetMapping("/sp/dailylog_detail")
	public String dailylogDetail(@RequestParam("dNo") int dNo, Model model) {
		Dailylog dailylog = this.dailylogRepository.findByDNo(dNo);
		model.addAttribute("part2", dailylog);
		return "user/sp/dailylog_detail";
	}

	@PostMapping("/sp/dailylog_detail")
	public String dailylogDetail(@ModelAttribute("part2") Dailylog part2) {
		Dailylog dailylog = this.dailylogRepository.findByDNo(part2.getDNo());
		this.dailylogRepository.delete(dailylog);
		dailylog.setTitle(part2.getTitle());
		dailylog.setContent(part2.getContent());
		dailylog.setSeniorName(part2.getSeniorName());
		this.dailylogRepository.save(dailylog);
		return "redirect:/sp/dailylog";
	}

	// 유저 일지작성 user/sp폴더로 옮겨야함
	@GetMapping("/sp/dailylog_insert")
	public String dailylogInsert() {
		return "user/sp/dailylog_insert";
	}

	// 유저 일지작성 user/sp폴더로 옮겨야함
	@PostMapping("/sp/dailylog_insert")
	public String dailylogInsert(@ModelAttribute("part2") Dailylog part2, HttpSession session) {
		User user = (User) session.getAttribute("user");
		Dailylog dailylog = new Dailylog();
		int dno = (int) (this.dailylogRepository.count() + 1);
		dailylog.setDNo(dno);
		dailylog.setTitle(part2.getTitle());
		dailylog.setSeniorName(part2.getSeniorName());
		dailylog.setContent(part2.getContent());
		dailylog.setDate(new Date());
		dailylog.setUserId(user.getEmail()); // 로그인한 아이디 넣기
		System.out.println(part2.getSeniorName());
		System.out.println(part2.getTitle());
		this.dailylogRepository.insert(dailylog);

		return "redirect:/sp/dailylog";
	}
	
	@GetMapping("/sp/dailylog_delete")
	public String dailylogDelete(@RequestParam("dNo") int dNo,Model model) {
		Dailylog dailylog=this.dailylogRepository.findByDNo(dNo);
		this.dailylogRepository.delete(dailylog);
		return "redirect:/sp/dailylog";
	}
	
	@GetMapping("/sp/mypage")
	public String sponMypage() {
		return "user/sp/mypage";
	}

	@GetMapping("/sp/donate")
	public String spon(Model model) {
		List<Place> places = this.placeRepository.findAll();
		model.addAttribute("places", places);
		return "user/sp/donate";
	}

	/*
	 * //사각지대 신고데이터 삽입
	 */
/*	@ResponseBody
	@RequestMapping("/insertSpon")
	public String insertLog(@RequestParam("seniorName") String seniorName, @RequestParam("date") Date date,
			@RequestParam("logContent") String logContent) {
		Dailylog dailylog = new Dailylog();
		int dNo = (int) (this.dailylogRepository.count() + 1);
		dailylog.setDNo(dNo);
		dailylog.setDate(date);
		dailylog.setUserId("jimin123"); // 로그인값으로 수정
		dailylog.setContent(logContent);
		dailylog.setSeniorName(seniorName); // 선택한 기관값
		this.dailylogRepository.insert(dailylog);

		return "";
	}*/

}