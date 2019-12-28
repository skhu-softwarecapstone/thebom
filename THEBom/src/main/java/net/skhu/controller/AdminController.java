package net.skhu.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

import net.skhu.document.Blind;
import net.skhu.document.Circle;
import net.skhu.document.Notice;
import net.skhu.document.SocialWorker;
import net.skhu.document.User;
import net.skhu.document.map.Address;
import net.skhu.document.map.Location;
import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;

import net.skhu.model.SeniorModel;

import net.skhu.repository.BlindRepository;
import net.skhu.repository.CircleRepository;
import net.skhu.repository.NoticeRepository;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.SponsorRepository;
import net.skhu.repository.UserRepository;

import net.skhu.service.CustomUserDetailsService;
import net.skhu.service.KakaoAPI;


/*사회복지사가 다루는 페이지 목록*/


@Controller
public class AdminController {
	@Autowired
	private SponsorRepository sponsorRepository;
	@Autowired
	private NoticeRepository noticeRepository;
	@Autowired
	private SeniorRepository seniorRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private CircleRepository circleRepository;
	@Autowired
	private CustomUserDetailsService userService;
	@Autowired
	private KakaoAPI kakaoAPI;
	@Autowired
	private BlindRepository blindRepository;

	//admin version 메인페이지-접속한 유저정보랑 공지사항 객체목록 5개 담을것 
	@RequestMapping(value = "/sw/sw_main", method = RequestMethod.GET)
	public ModelAndView dashboard(Model model, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		
		session.setAttribute("user", user); //세션에 로그인 정보 넣어두기.
		
		System.out.println(user);
		modelAndView.addObject("currentUser", user);
		modelAndView.addObject("fullName", "Welcome " + user.getFullname());
		//modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
		modelAndView.setViewName("admin/sw/sw_main");
		
		List<Notice> notices= this.noticeRepository.findAll();
		model.addAttribute("notices", notices);
		return modelAndView;
	}

	//공지사항 페이지
	@GetMapping("/sw/notice")
	public String notice(Model model) {
		List<Notice> notices=this.noticeRepository.findAll();
		model.addAttribute("notices", notices);
		return "admin/sw/notice";
	}
	//공지사항 세부페이지
	@GetMapping("/sw/notice_detail")
	public String noticeDetail(@RequestParam("no") int no,Model model)  {
		model.addAttribute("notice", noticeRepository.findByNo(no));
		return "admin/sw/notice_detail";
	}
	//공지사항 작성
	@GetMapping("/sw/notice_write")
	public String noticeWrite()  {
		return "admin/sw/notice_write";
	}
	//공지사항 데이터 삽입
	@PostMapping("/sw/notice_write")
	public String noticeWrite(@ModelAttribute("part")Notice part,HttpSession session) {
		User user=(User) session.getAttribute("user");
		Notice notice=new Notice();
		int no = (int) (this.noticeRepository.count() + 1);
		notice.setNo(no);
		notice.setTitle(part.getTitle());
		notice.setContent(part.getContent()); 
		notice.setUserId(user.getEmail()); //로그인한 아이디 넣기
		notice.setCreatedDate(new Date()); 
		this.noticeRepository.insert(notice);

		return "redirect:/sw/notice";
	}
	//사회복지사가 확인하는 사각지대 페이지
	@GetMapping("/sw/blind")
	public String blind(Model model) {
		List<Blind> blinds=this.blindRepository.findAll();
		model.addAttribute("blinds", blinds);
		return "admin/sw/blind";
	}
	//사각지대 세부 페이지
	@GetMapping("/sw/blind_detail")
	public String blindDetail(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		model.addAttribute("part", blind);
		return "admin/sw/blind_detail";
	}
	


	@GetMapping("/sw/blindAccept")
	public String blindAccept(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		this.blindRepository.delete(blind);
		blind.setProcessState(1);
		this.blindRepository.save(blind);
		return "redirect:/sw/blind";
	}
	@GetMapping("/sw/blindComplete")
	public String blindComplete(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		this.blindRepository.delete(blind);
		blind.setProcessState(2);
		this.blindRepository.save(blind);
		return "redirect:/sw/blind";
	}
	@GetMapping("/sw/blindDelete")
	public String blindDelete(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		this.blindRepository.delete(blind);
		return "redirect:/sw/blind";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sw/insertBlind")
	public String insertBlind() {
		return "admin/sw/insertBlind";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@PostMapping("/sw/insertBlind")
	public String insertBlind(@ModelAttribute("part")Blind part,HttpSession session) {
		User user=(User) session.getAttribute("user");
		Blind blind=new Blind();
		int bno= (int) (this.blindRepository.count() + 1);
		blind.setBNo(bno);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		blind.setDate(new Date());
		blind.setUserId(user.getEmail()); //로그인한 아이디 넣기
		blind.setProcessState(0);
		this.blindRepository.insert(blind);

		return "redirect:/sw/blindPage";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sw/blindPage")
	public String blindPage(Model model,HttpSession session) {
		User user=(User) session.getAttribute("user");
		List<Blind> blinds=this.blindRepository.findByUserId(user.getEmail()); 
		model.addAttribute("blinds", blinds);
		return "admin/sw/blindPage";
	}

	//유저 사각지대 신고 user/sp폴더로 옮겨야함
	@GetMapping("/sw/blindPagedt")
	public String blindPagedt(@RequestParam("bNo") int bNo,Model model) {
		Blind blind=this.blindRepository.findByBNo(bNo);
		model.addAttribute("part", blind);
		return "admin/sw/blindPagedt";
	}

	@PostMapping("/sw/blindPagedt")
	public String blindPagedt(@ModelAttribute("part")Blind part) {
		Blind blind=this.blindRepository.findByBNo(part.getBNo());	
		this.blindRepository.delete(blind);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		this.blindRepository.save(blind);
		return "redirect:/sw/blindPage";
	}
	//관리하는 독거노인 목록 조회
	@GetMapping("/sw/seniorList")
	public String senior(Model model) {
		List<Senior> seniors=this.seniorRepository.findAll();

		model.addAttribute("seniors", seniors);
		return "admin/sw/seniorList";
	}

	//해당 독거노인 세부페이지
	@GetMapping("/sw/seniorList_detail")
	public String seniorDetail(@RequestParam("seNo") int seNo,Model model) {
		Senior senior =this.seniorRepository.findBySeNo(seNo);
		//		User socialWorker =this.userRepository.findById(senior.getGroupInfo().getSocial_worker_id()).get();

		model.addAttribute("senior", senior);
		System.out.print(senior.getAddress().getLocation());
		model.addAttribute("location",senior.getAddress().getLocation());
		//		model.addAttribute("socialWorker", socialWorker);
		return "admin/sw/seniorList_detail";
	}
	//독거노인목록에 독거노인 데이터 추가페이지
	@GetMapping("/sw/seniorList_insert")
	public String write(Model model) {
		return "admin/sw/seniorList_insert";
	}
	//독거노인목록에 독거노인 데이터 추가버튼 클릭 후 디비에 저장
	@Transactional
	@PostMapping("/sw/seniorList_insert")
	public String seniorInsert(SeniorModel seniorModel, Model model) throws UnsupportedEncodingException {

		int maxSeNo=seniorRepository.findTopByOrderBySeNoDesc().getSeNo();
		Senior senior=new Senior();

		senior.setSeNo(maxSeNo+1);
		senior.setName(seniorModel.getName());
		senior.setAge(seniorModel.getAge());
		senior.setGender(seniorModel.isGender());
		senior.setPoint(0);
		senior.setPhone(seniorModel.getPhone());
		senior.setDisabilityGrade(seniorModel.getDisabilityGrade());

		Address address=new Address();

		address.setAddress1(seniorModel.getAddress1());
		address.setAddress_detail(seniorModel.getAddress_detail());
		address.setZipcode(seniorModel.getZipcode());

		HashMap<String, Object> coordinates=kakaoAPI.getCoords(seniorModel.getAddress1());

		Location location = new Location((Double)coordinates.get("x"),(Double)coordinates.get("y"));

		address.setLocation(location);
		senior.setAddress(address);
		senior.setUniqueness(seniorModel.getUniqueness());
		seniorRepository.insert(senior);

		return "redirect:seniorList";
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

	
	//해당 독거노인 세부페이지
		@GetMapping("/sw/sponsor_detail")
		public String SponsorDetail(@RequestParam("spNo") int spNo,Model model) {
			Sponsor sponsor =this.sponsorRepository.findBySpNo(spNo);
			//		User socialWorker =this.userRepository.findById(senior.getGroupInfo().getSocial_worker_id()).get();

			model.addAttribute("sponsor", sponsor);
			System.out.print(sponsor.getAddress().getLocation());
			model.addAttribute("location",sponsor.getAddress().getLocation());
			//		model.addAttribute("socialWorker", socialWorker);
			return "admin/sw/sponsor_detail";
		}
	//매칭 관리
	@GetMapping("/sw/match")
	public String match(Model model) {
		List<Senior> seniors=this.seniorRepository.findByMatch(0);
		//List<Senior> seniors=this.seniorRepository.findAll();
		model.addAttribute("seniors", seniors);
		return "admin/sw/match";
	}
	
	@GetMapping("/sw/matchDetail")
	public String matchDetail(@RequestParam("seNo") int seNo,Model model) {
		//List<Sponsor> sponsors=this.sponsorRepository.findBy
		model.addAttribute("senior", this.seniorRepository.findBySeNo(seNo));
		return "admin/sw/match_detail";
	}

	//개인정보 확인 수정 페이지-내가 후원하는 단체 목록이 아니라 사회복지사 소속 변경용
	@GetMapping("/sw/mypage")
	public String Mypage() {
		return "admin/sw/mypage";
	}

}