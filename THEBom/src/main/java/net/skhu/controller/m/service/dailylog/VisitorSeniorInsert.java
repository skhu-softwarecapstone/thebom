package net.skhu.controller.m.service.dailylog;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import net.skhu.document.User;
import net.skhu.document.VisitSenior;
import net.skhu.document.senior.Senior;
import net.skhu.model.m.MobileSuccessVO;
import net.skhu.repository.DailylogRepository;
import net.skhu.repository.SeniorRepository;
import net.skhu.repository.VisitSeniorRepository;

public class VisitorSeniorInsert {

	private DailylogRepository dailylogRepository;
	private VisitSeniorRepository visitSeniorRepository;
	private SeniorRepository seniorRepository;
	private User user;
	private Senior senior;

	public VisitorSeniorInsert(DailylogRepository dailylogRepository, VisitSeniorRepository visitSeniorRepository, SeniorRepository seniorRepository, User user, Senior senior) {
		this.dailylogRepository = dailylogRepository;
		this.visitSeniorRepository = visitSeniorRepository;
		this.seniorRepository = seniorRepository;
		this.user = user;
		this.senior = senior;
	}


	public MobileSuccessVO insert() {
		MobileSuccessVO mSV = new MobileSuccessVO();
		mSV.setType("visitSenior_insert");
		
		// --> Senior 검증할 코드
		senior = seniorRepository.findBySeNo(senior.getSeNo());
		
		Calendar cal = Calendar.getInstance();	// 현재 시간에 대한 Calendar 객체 얻어오기.
		int calDate = cal.get(Calendar.DATE);	// 현재 날짜를 얻어온다. 
		String inputDate = cal.get(Calendar.YEAR) + "-" + (cal.get(Calendar.MONTH) + 1) + "-"
				+ (calDate < 10 ? "0" + calDate : "" + calDate); // (날짜가 10 이하일 떄, 두자리수로 맵핑)

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = simpleDateFormat.parse(inputDate);
			VisitSenior visitSenior = (VisitSenior) visitSeniorRepository.findByVisitDateAndSponsorId(date,
					user.getEmail());
			if (visitSenior == null) {
				visitSenior = new VisitSenior();
				visitSenior.setSeniorId(senior.getName());
				visitSenior.setSponsorId(user.getEmail());
				visitSenior.setVisitDate(date);
				visitSeniorRepository.save(visitSenior);
			}

		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			mSV.setSuccessMessage("FAIL");
			mSV.setErrorMessage("Failed to insert VisitSenior Data");
			return mSV;
		}

		mSV.setSuccessMessage("SUCC");
		mSV.setErrorMessage("");
		return mSV;
	}

}
