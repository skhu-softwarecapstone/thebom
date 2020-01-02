package net.skhu.controller.m;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.document.Notice;
import net.skhu.document.sponsor.Place;
import net.skhu.model.m.MobileCountVO;
import net.skhu.repository.PlaceRepository;

@RestController
public class MobileSponsorController {

	@Autowired
	private PlaceRepository placeRepository;

	//
	@RequestMapping("/m/place/{index}")
	// 공지사항 리스트 매핑 메서드
	public List<Place> placesPerIndex(@PathVariable("index") int index) {
		return placeRepository.findByPNoBetweenOrderByPNoDesc(((index - 1) * 10), (index * 10) + 1);
		// 얻어온 페이지 인덱스 기준으로 10개씩 페이징하고, 내림차순으로 place document list json 객체 리턴
	}

	// 공지사항 개수 매핑 메서드
	// 클라이언트에서 공지사항 개수를 기반으로 페이징 개수를 얻기 위해 해당 json 객체 리턴
	@RequestMapping(value = "/m/placeCount")
	public MobileCountVO noticeCount() {
		MobileCountVO mCV = new MobileCountVO();
		mCV.setCount((int) placeRepository.count());
		return mCV;
	}
}
