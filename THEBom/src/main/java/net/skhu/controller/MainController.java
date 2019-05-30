package net.skhu.controller;

import java.util.Date;
import java.util.List;
import java.util.Random;

import net.skhu.document.SocialWorker;
import net.skhu.repository.SocialWorkerRepository;
import net.skhu.repository.SocialWorkerRepositoryCustom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	private static final String[] NAMES = { "chu", "lim", "han" };

	@Autowired
	private SocialWorkerRepository socialWorkerRepository;
	@Autowired
	private SocialWorkerRepositoryCustom socialWorkerRepositoryCustom;

	@GetMapping("/")
	public ModelAndView LoginPage() {

		ModelAndView response = new ModelAndView("/test");

		return response;
	}
	
	@GetMapping("main")
	public String Main() {
		return "main";
	}
	@GetMapping("sponsor")
	public String Sponsor() {
		return "admin/sponsor";
	}

	//사회복지사 테스트 데이터 삽입
	@ResponseBody
	@RequestMapping("/testInsert")
	public String testInsert() {
		SocialWorker socialWorker = new SocialWorker();

		int id = this.socialWorkerRepositoryCustom.getMaxSwNo() + 1;
		int idx = (int) (id % NAMES.length);
		String name = NAMES[idx];

		Random random=new Random();
		int ranks=random.nextInt(6)+1;
		socialWorker.setSwNo(id);
		socialWorker.setName(name);
		socialWorker.setRanks(ranks+"급");
		this.socialWorkerRepository.insert(socialWorker);

		return "Inserted: " + socialWorker;
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
