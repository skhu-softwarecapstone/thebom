package net.skhu.controller.m.service.dailylog;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.skhu.document.User;
import net.skhu.document.VisitSenior;
import net.skhu.repository.VisitSeniorRepository;

public class VisitSeniorDateSelect {

	private VisitSeniorRepository visitSeniorRepository;
	private VisitSenior visitSenior;
	private User user;
	
	public VisitSeniorDateSelect(VisitSeniorRepository visitSeniorRepository, VisitSenior visitSenior, User user) {
		this.visitSeniorRepository = visitSeniorRepository;
		this.visitSenior = visitSenior;
		this.user = user;
	}

	public List<VisitSenior> dateSelect() {
		// inputDate format : "2019-12-01"
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date = simpleDateFormat.format(visitSenior.getVisitDate());
		Calendar cal = Calendar.getInstance();
		try {
			cal.setTime(simpleDateFormat.parse(date));
			int dateMAX = cal.getActualMaximum(Calendar.DATE);
			Date firstDate = simpleDateFormat.parse(date.substring(0, 8) + "01");
			Date lastDate = simpleDateFormat.parse(date.substring(0, 8) + dateMAX);

			 return visitSeniorRepository
					.findAllByDateBetweenAndSponsorIdOrderByDesc(firstDate, lastDate, user.getEmail());
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
