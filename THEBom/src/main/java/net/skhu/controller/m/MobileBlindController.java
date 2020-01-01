package net.skhu.controller.m;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.document.Blind;
import net.skhu.document.User;
import net.skhu.model.m.MobileCountVO;
import net.skhu.model.m.MobileSuccessVO;
import net.skhu.repository.BlindRepository;

@RestController
public class MobileBlindController {

	@Autowired
	private BlindRepository blindRepository; // Blind Collection을 다루기 위한 BlindRepository 자동 의존 주입

	// blind 개수 count
	@RequestMapping(value = "/m/blindCount")
	public MobileCountVO blindCount(HttpSession session) {
		MobileCountVO mCV = new MobileCountVO();
		User user = (User) session.getAttribute("user");
		mCV.setCount((int) blindRepository.countByUserId(user.getEmail()));
		return mCV;
	}

	// blind(사각지대 신고 기능) 유저가 작성한 사각지대 신고 목록 검색
	@PostMapping("/m/blind/{index}")
	public List<Blind> blind(Model model, HttpSession session, @PathVariable("index") int index) {

		User user = (User) session.getAttribute("user");
		PageRequest pageRequest = PageRequest.of(index - 1, 10);
		List<Blind> blinds = this.blindRepository.findAllByUserIdOrderByDateDesc(user.getEmail(), pageRequest);
		return blinds;
	}

	// blind(사각지대 신고 기능) 유저 사각지대 신고 메서드
	@PostMapping("/m/blind_insert")
	public MobileSuccessVO blindInsert(@RequestBody Blind part, HttpSession session) {
		User user = (User) session.getAttribute("user");
		Blind blind = new Blind();
		int bno = (int) (this.blindRepository.count() + 1);
		blind.setbNo(bno);
		blind.setName(part.getName());
		blind.setContent(part.getContent());
		blind.setDate(new Date());
		blind.setUserId(user.getEmail()); // 로그인한 아이디 넣기
		blind.setProcessState(0);

		MobileSuccessVO mSV = new MobileSuccessVO();
		mSV.setType("blind_insert");
		try {
			this.blindRepository.insert(blind);
		} catch (Exception e) {
			mSV.setSuccessMessage("FAIL");
			mSV.setErrorMessage("failed to save");
			return mSV;
		}
		mSV.setSuccessMessage("SUCC");
		mSV.setErrorMessage("");
		// 해당 요청 내역 완료하였다는 메시지 VO 객체 리턴
		return mSV;
	}

	// blind(사각지대 신고 기능) 유저 사각지대 신고 상세 사항 확인 메서드
	@PostMapping("/m/blind_detail")
	public MobileSuccessVO blindDetail(@RequestBody Blind part) {
		MobileSuccessVO mSV = new MobileSuccessVO();
		mSV.setType("blind_detail");
		try {
			Blind blind = this.blindRepository.findByBNo(part.getbNo());
			this.blindRepository.delete(blind);
			blind.setName(part.getName());
			blind.setContent(part.getContent());
			this.blindRepository.save(blind);
		} catch (Exception e) {
			mSV.setSuccessMessage("FAIL");
			mSV.setErrorMessage("Failed to modifying");
			return mSV;
		}
		mSV.setSuccessMessage("SUCC");
		mSV.setErrorMessage("");
		// 해당 요청 내역 완료하였다는 메시지 VO 객체 리턴
		return mSV;
	}

}
