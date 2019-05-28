package net.skhu.controller;

import java.util.Date;
import java.util.List;
 
import net.skhu.document.SocialWorker;
import net.skhu.repository.SocialWorkerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	 private static final String[] NAMES = { "chu", "lim", "han" };

	 @Autowired
	    private SocialWorkerRepository socialWorkerRepository;
	 
	 @ResponseBody
	    @RequestMapping("/")
	    public String home() {
	        String html = "";
	        html += "<ul>";
	        html += " <li><a href='/showAllSocialWorker'>Show All SocialWorker</a></li>";
	        html += " <li><a href='/showNameLikechu'>Show All 'chu'</a></li>";
	        html += " <li><a href='/deleteAllSocialWorker'>Delete All SocialWorker</a></li>";
	        html += "</ul>";
	        return html;
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
	 
	        List<SocialWorker> socialWorkers = this.socialWorkerRepository.findByNameLike("추");
	 
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
