package net.skhu.controller.m.service.dailylog;

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
			Dailylog duplicateDaily = (Dailylog) dailylogRepository.findByUserIdAndDate(user.getEmail(),
					dailylog.getDate());
			if (duplicateDaily != null) {
				dailylogRepository.delete(duplicateDaily);
			}

			dailylog.setDNo(dNo);
			dailylog.setUserId(user.getEmail()); // 로그인값으로 수정

			this.dailylogRepository.insert(dailylog);
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
