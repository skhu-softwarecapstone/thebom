package net.skhu.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import net.skhu.document.Blind;
import net.skhu.document.Circle;
import net.skhu.document.SocialWorker;
import net.skhu.document.User;
import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;

import net.skhu.repository.BlindRepository;
import net.skhu.repository.CircleRepository;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.SponsorRepository;
import net.skhu.service.CustomUserDetailsService;


/*사회복지사가 다루는 페이지 목록*/


@Controller
public class AdminController {
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private SeniorRepository seniorRepository;
	@Autowired
	private CircleRepository circleRepository;
	@Autowired
	private CustomUserDetailsService userService;

	//admin version 메인페이지-접속한 유저정보랑 공지사항 객체목록 5개 담을것 
	@RequestMapping(value = "/sw/sw_main", method = RequestMethod.GET)
	public ModelAndView dashboard() {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("currentUser", user);
		modelAndView.addObject("fullName", "Welcome " + user.getFullname());
		modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
		modelAndView.setViewName("admin/sw/sw_main");
		return modelAndView;
	}

	//공지사항 페이지
	@GetMapping("/sw/notice")
	public String notice(Model model) {

		//model.addAttribute("notices", qnaService.getAllArticles());

		return "admin/sw/notice";
	}
	//공지사항 세부페이지
	@GetMapping("/sw/notice_detail")
	public String noticeDetail(@RequestParam("id") String id,Model model)  {
		return "admin/sw/notice_detail";
	}
	//공지사항 작성
	@GetMapping("/sw/notice_write")
	public String noticeWrite(@RequestParam("id") String id,Model model)  {
		return "admin/sw/notice_write";
	}


	//관리하는 독거노인 목록 조회
	@GetMapping("/sw/seniorList")
	public String senior(Model model) {
		List<Senior> seniors=this.seniorRepository.findAll();
		model.addAttribute("seniors", seniors);
		//			Senior senior=this.seniorRepository.findBySeNo(1);
		//			model.addAttribute("senior", senior);
		return "admin/sw/seniorList";
	}

	//해당 독거노인 세부페이지
	@GetMapping("/sw/seniorList_detail")
	public String seniorDetail(@RequestParam("seNo") int seNo,Model model) {
		model.addAttribute("senior", seniorRepository.findBySeNo(seNo));
		return "admin/sw/seniorList";
	}

	//독거노인 그룹 관리
	@GetMapping("/sw/circle")
	public String circle(Model model) {
		List<Circle> circles=this.circleRepository.findAll();
		model.addAttribute("circles", circles);
		return "admin/sw/circle";
	}

	//독거노인 그룹 추가
	@GetMapping("/sw/circle_add")
	public String circleAdd(Model model) {

		return "admin/sw/circle_add";
	}

	//후원자 관리-자신의 지역에 거주하는 방문후원자|방문후원지원자 목록 조회(포인트 순으로 나열)
	@GetMapping("/sw/sponsor")
	public String Sponsor(Model model) {

		List<Sponsor> sponsors=this.sponsorRepository.findAll();
		model.addAttribute("sponsors", sponsors);
		return "admin/sw/sponsor";
	}

	//후원자 세부페이지
	@GetMapping("/sw/sponsor_detail")
	public String SponsorDetail(Model model) {

		model.addAttribute("sponsor", sponsorRepository.findBySpNo(1));
		return "admin/sw/sponsor_detail";
	}

	//후원자 세부페이지2
	@GetMapping("/sw/sponsor_detail1")
	public String SponsorDetail1(@RequestParam("id") String id,Model model) {

		model.addAttribute("sponsor", sponsorRepository.findById(id));
		return "admin/sw/sponsor_detail1";
	}



	//개인정보 확인 수정 페이지-내가 후원하는 단체 목록이 아니라 사회복지사 소속 변경용
	@GetMapping("/sw/mypage")
	public String Mypage() {
		return "admin/sw/mypage";
	}




}