package net.skhu.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.document.Blind;
import net.skhu.document.Circle;
import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.model.Pagination;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.SponsorRepository;

@Controller
public class MatchController {
	
	@Autowired
	SeniorRepository seniorRepository;
	@Autowired
	SponsorRepository sponsorRepository;
	
	//노인조회에서 매칭버튼을 누를 경우
	@GetMapping("/sw/matchComplete")
	public String blindComplete(@RequestParam("seNo") int seNo,@RequestParam("spNo") int spNo,Model model) {
		
		System.out.print("seNo:"+seNo+"spNo:"+spNo);
		Sponsor sponsor = this.sponsorRepository.findBySpNo(spNo);
		Senior senior = this.seniorRepository.findBySeNo(seNo);
		
		sponsor.setMatch(1);
		senior.setSponsor(sponsor);
		this.sponsorRepository.save(sponsor);
		this.seniorRepository.save(senior);
		return "redirect:/sw/match";
	}

	//노인과 방문후원자 매칭된 목록 조회
	@GetMapping("/sw/match")
	public String match(Pagination pagination, Model model) {
		List<Senior> seniors=this.seniorRepository.findBySponsorIsNotNull();
		//List<Senior> seniors = this.seniorRepository.findByMatch(pagination,0);
		
		model.addAttribute("seniors", seniors);
		return "admin/sw/match";
	}
	
	
	//독거노인 그룹 관리
		@GetMapping("/sw/circle")
		public String circle(Pagination pagination, Model model) {
//			List<Circle> circles=this.circleRepository.findAll(pagination);
//			model.addAttribute("circles", circles);
			return "admin/sw/circle";
		}

		//독거노인 그룹 관리 상세 페이지
		@GetMapping("/sw/circle_detail")
		public String circleDetail(@RequestParam("cNo") int cNo,Model model) {
//			model.addAttribute("circle", circleRepository.findByCNo(cNo));
//			model.addAttribute("seniors", seniorRepository.findByMatch(cNo));
			return "admin/sw/circle_detail";
		}

		//독거노인 그룹 추가
		@GetMapping("/sw/circle_create")
		public String circleCreate(Model model) {
			
			String address="서울 영등포구 대림동";
//			List<Senior> seniors=seniorRepository.findByAddressAddress1StartsWith(address);
			
			int total_count =(int) seniorRepository.count();
			
			int peopleInCircle=4;
			int cNo=1;
			for(int k=0;k<total_count-1;k++) {
				
				Circle circle =new Circle();
				circle.setCNo(cNo);
				circle.setAddress(address);
				
				Random random =new Random();
				int first_point=random.nextInt(total_count);
				
				List<Senior> seniorsInCircle=null;
				for(int i=0;i<peopleInCircle-1;i++) {
					
				}
				
			}
			
			
			return "redirect:/sw/circle_detail";
		}
}
