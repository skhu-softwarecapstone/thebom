package net.skhu.controller.m;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.document.Notice;
import net.skhu.model.m.MobileCountVO;
import net.skhu.repository.NoticeRepository;

@RestController
public class MobileNoticeController {

		@Autowired
		private NoticeRepository noticeRepository; // Notice Collection을 다루기 위한 NoticeRepository 자동 의존 주입
		
		// 공지사항 리스트 매핑 메서드
		// 공지사항 리스트 (인덱스 별로 Notice documents 리스트 형식의 json 객체 응답)
		@RequestMapping(value = "/m/notice/{index}", method = RequestMethod.POST)
		public List<Notice> noticesPerIndex(@PathVariable("index") int index) {
			return noticeRepository.findByNoBetweenOrderByCreatedDateDesc(((index - 1) * 10), (index * 10) + 1);
			// 얻어온 페이지 인덱스 기준으로 10개씩 페이징하고, 내림차순으로 notice document list json 객체 리턴
		}
		
		// 공지사항 개수 매핑 메서드
		// 클라이언트에서 공지사항 개수를 기반으로 페이징 개수를 얻기 위해 해당 josn 객체 리턴
		@RequestMapping(value = "/m/noticeCount")
		public MobileCountVO noticeCount() {
			MobileCountVO mCV = new MobileCountVO();
			mCV.setCount((int) noticeRepository.count());
			return mCV;
		}
}
