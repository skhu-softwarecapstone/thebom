package net.skhu.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import net.skhu.document.SocialWorker;
import net.skhu.document.senior.Senior;
import net.skhu.repository.SocialWorker.SocialWorkerRepository;
import net.skhu.repository.SocialWorker.SocialWorkerRepositoryCustom;

import net.skhu.document.sponsor.Sponsor;
import net.skhu.repository.SponsorRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//지금은 test용이지만 포괄적으로 사용되는 중요기능 명령내리는 곳으로 사용합시당>0<

@Controller
public class MainController {

	private static final String[] NAMES = { "chu", "lim", "han" };

	@Autowired
	private SocialWorkerRepository socialWorkerRepository;
	@Autowired
	private SocialWorkerRepositoryCustom socialWorkerRepositoryCustom;
	@Autowired
	private SponsorRepository sponsorRepository;

	@GetMapping("/")
	public ModelAndView LoginPage() {

		ModelAndView response = new ModelAndView("/guest/landing");

		return response;
	}
	
	@GetMapping("intro")
	public String intro() {
		return "intro";
	}
	
	@GetMapping("login")
	public String login() {
		return "guest/login";
	}
	

	
/*	@GetMapping("landing")
	public String Landing() {
		return "landing";
	}
	@GetMapping("login")
	public String Main() {
		return "login";
	}
	
	@PostMapping("login")
	public String Login(@RequestParam(value="usernumber") String usernumber,
			@RequestParam(value="pass") String pass,
			HttpSession session) throws Exception{

		Map<String, Object> loginMap = new HashMap<String, Object>();
		loginMap.put("usernumber", usernumber);
		loginMap.put("pass", pass);

		
		Senior senior=signService.seniorLogin(loginMap);
		Sponsor sponsor=signService.sponsorLogin(loginMap);
		SocialWorker social=signService.socialLogin(loginMap);


		if(admin != null) {
			session.setAttribute("loginUser", admin); //세션에 로그인 정보 넣어두기.
			return "redirect:admin";
		}else if(student != null) {
			session.setAttribute("loginUser", student); //loginUser에 알맞은 객체 넣기.
			return "redirect:student";
		}else {
			return "redirect:/";
		}
	}
	*/
	
	
	
	

	//사회복지사 테스트 데이터 삽입
	@ResponseBody
	@RequestMapping("/testInsert")
	public String testInsert() {
		SocialWorker socialWorker = new SocialWorker();

		int swNo = this.socialWorkerRepositoryCustom.getMaxSwNo() + 1;
		int swNox = (int) (swNo % NAMES.length);
		String name = NAMES[swNox];

		Random random=new Random();
		int ranks=random.nextInt(6)+1;
		socialWorker.setSwNo(swNo);
		socialWorker.setName(name);
		socialWorker.setRanks(ranks+"급");
		this.socialWorkerRepository.insert(socialWorker);

		return "Inserted: " + socialWorker;
	}
	
	@ResponseBody
	@RequestMapping("/insertBlind")
	public void insertBlind() {
		
	}





	//사회복지사 모두 보기 
	@ResponseBody
	@RequestMapping("/showAllSocialWorker")
	public String showAllSocialWorker() {

		List<SocialWorker> socialWorkers = this.socialWorkerRepository.findAll();

		String html = "<socialworklist>";
		for (SocialWorker sw : socialWorkers) {
			html += sw + "<br>";
		}

		return html;
	}
	
	
	//이름에 chu 가 포함된 이름 모두 찾기
	@ResponseBody
	@RequestMapping("/showNameLikechu")
	public String showFullNameLikeTom() {

		List<SocialWorker> socialWorkers = this.socialWorkerRepository.findByNameLike("chu");

		String html = "";
		for (SocialWorker emp : socialWorkers) {
			html += emp + "<br>";
		}

		return html;
	}
	//모든 사회복지사 정보 삭제
	@ResponseBody
	@RequestMapping("/deleteAllSocialWorker")
	public String deleteAllSocialWorker() {

		this.socialWorkerRepository.deleteAll();
		return "Deleted!";
	}
}
