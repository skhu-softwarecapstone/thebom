package net.skhu.controller.m.service.dailylog;

import java.util.Date;

import net.skhu.document.Dailylog;
import net.skhu.document.User;
import net.skhu.model.m.MobileSuccessVO;
import net.skhu.repository.DailylogRepository;

public class DailylogInsertLog {

	private DailylogRepository dailylogRepository;
	private User user;
	private Dailylog dailylog;
	
	public DailylogInsertLog(DailylogRepository dailylogRepository, User user, Dailylog dailylog) {
		this.dailylogRepository = dailylogRepository;
		this.user = user;
		this.dailylog = dailylog;
	}

	public MobileSuccessVO insertLog() {
		MobileSuccessVO mSV = new MobileSuccessVO();
		int dNo = ((int) dailylogRepository.count())+1;
		mSV.setType("insert_dailylog");
		try {
			
			//원래 데이터 있을 경우 수정
			Dailylog duplicateDaily = (Dailylog) dailylogRepository.findByUserIdAndDate(user.getEmail(),
					dailylog.getDate());
			if (duplicateDaily == null) {
				duplicateDaily = dailylog;
				duplicateDaily.setdNo(dNo);
			}
			duplicateDaily.setUserId(user.getEmail()); // 로그인값으로 수정
			duplicateDaily.setSeniorName(dailylog.getSeniorName());
			
			this.dailylogRepository.save(duplicateDaily);
		} catch (Exception e) {
			mSV.setSuccessMessage("FAIL");
			mSV.setErrorMessage("Failed insert to Daiylog");
			return mSV;
		}
		mSV.setSuccessMessage("SUCC");
		mSV.setErrorMessage("");
		
		return mSV;
	}

}
