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

	//admin version 메인페이지-접속한 유저정보랑 공지사항 객체목록 5개 담을것 
	@RequestMapping(value = "/sp/sp_main", method = RequestMethod.GET)
	public ModelAndView dashboard(Model model, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		
		session.setAttribute("user", user); //세션에 로그인 정보 넣어두기.
		
		modelAndView.addObject("currentUser", user);
		modelAndView.addObject("fullName", "Welcome " + user.getFullname());
		//modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
		modelAndView.setViewName("user/sp/sp_main");
		
		return modelAndView;
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind")
	public String blindPage(Model model) {
		List<Blind> blinds=this.blindRepository.findByUserId("admin"); //로그인 아이디로 변경해야함
		model.addAttribute("blinds", blinds);
		return "user/sp/blind";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind_detail")
	public String blindPagedt(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		model.addAttribute("part", blind);
		return "user/sp/blind_detail";
	}
	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sp/blind_insert")
	public String insertBlind() {
		return "user/sp/blind_insert";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@PostMapping("/sp/blind_insert")
	public String insertBlind(@ModelAttribute("part")Blind part) {
		Blind blind=new Blind();
		int bno= (int) (this.blindRepository.count() + 1);
		blind.setBNo(bno);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		blind.setDate(new Date());
		blind.setUserId("admin"); //로그인한 아이디 넣기
		blind.setProcessState(0);
		this.blindRepository.insert(blind);

		return "redirect:/sp/blind";
	}

	@GetMapping("/sp/dailylog")
	public String dailylog(Model model) {
		
		return "user/sp/dailylog";
	}
	
	@GetMapping("/sp/manage")
	public String manage(Model model) {
		List<Place> places=this.placeRepository.findAll();
		model.addAttribute("places", places);
		return "user/sp/manage";
	}

	@GetMapping("/sp/mypage")
	public String sponMypage() {
		return "user/sp/mypage";
	}
	
	@GetMapping("/sp/notice")
	public String sponNotice() {
		return "user/sp/notice";
	}
	@GetMapping("/sp/notice_detail")
	public String sponNoticeDetail() {
		return "user/sp/notice_detail";
	}

	@GetMapping("/sp/register")
	public String register() {
		return "user/sp/register";
	}
	
	@GetMapping("/sp/donate")
	public String spon(Model model) {
		List<Place> places=this.placeRepository.findAll();
		model.addAttribute("places", places);
		return "user/sp/donate";
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