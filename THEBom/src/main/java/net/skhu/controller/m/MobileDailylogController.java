package net.skhu.controller.m;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.basic.BasicScrollPaneUI.VSBChangeListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.controller.m.service.dailylog.DailylogInsertLog;
import net.skhu.controller.m.service.dailylog.VisitSeniorDateSelect;
import net.skhu.controller.m.service.dailylog.VisitorSeniorInsert;
import net.skhu.document.Dailylog;
import net.skhu.document.User;
import net.skhu.document.VisitSenior;
import net.skhu.document.senior.Senior;
import net.skhu.model.m.MobileSuccessVO;
import net.skhu.repository.DailylogRepository;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.VisitSeniorRepository;

@RestController
public class MobileDailylogController {
	
	@Autowired
	private DailylogRepository dailylogRepository; // Dailylog Collection을 다루기 위한 BlindRepository 자동 의존 주입
	
	@Autowired
	private VisitSeniorRepository visitSeniorRepository; // VisitSenior Collection을 다루기 위한 BlindRepository 자동 의존 주입
	
	@Autowired
	private SeniorRepository seniorRepository; // Senior Collection을 다루기 위한 BlindRepository 자동 의존 주입
	
	// Dailylog 작성											 메서드
	@RequestMapping("/m/dailylog_insert")
	public MobileSuccessVO insertLog(@RequestBody Dailylog dailylog, HttpSession session) {
		User user = (User) session.getAttribute("user");
		DailylogInsertLog dailylogInsertLog = new DailylogInsertLog(dailylogRepository, user, dailylog);

		MobileSuccessVO mSV = dailylogInsertLog.insertLog();
		return mSV;
	}

	// Dailylog 날짜 형식 리턴
	@RequestMapping("/m/dailylog_dates")
	public List<Dailylog> dailylogDateList(HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Dailylog> dailylogDates = dailylogRepository.findAllByUserId(user.getEmail());

		return dailylogDates;
	}

	// Dailylog_Detail 날짜에 해당하는 Dailylog 상세 정보 확인
	@RequestMapping("/m/dailylog_detail")
	public Dailylog dailylog_detail(@RequestBody Dailylog dailylogParam, HttpSession session) {
		User user = (User) session.getAttribute("user");
		Dailylog dailylog = dailylogRepository.findByUserIdAndDate(user.getEmail(), dailylogParam.getDate());

		return dailylog;
	}

	// NFC 태깅시 VisitSenior 데이터 저장
	@RequestMapping("/m/visitSenior_insert")
	public MobileSuccessVO visitorSeniorInsert(@RequestBody Senior senior, HttpSession session) {
		User user = (User) session.getAttribute("user");
		VisitorSeniorInsert visitorSeniorInsert = new VisitorSeniorInsert(dailylogRepository, visitSeniorRepository, seniorRepository, user, senior);
		MobileSuccessVO mSV = visitorSeniorInsert.insert();
		
		return mSV;
	}

	// 유저가 dailylog 작성 시 활성화 될 date 목록
	@RequestMapping("/m/visitSenior_dateSelect")
	public List<VisitSenior> visitSeniorDateSelect(@RequestBody VisitSenior visitSenior, HttpSession session) {	
		User user = (User) session.getAttribute("user");
		VisitSeniorDateSelect visitSeniorDateSelect = new VisitSeniorDateSelect(visitSeniorRepository,visitSenior, user);  
		List<VisitSenior> existVisitSenior = visitSeniorDateSelect.dateSelect();

		return existVisitSenior;
	}
}
