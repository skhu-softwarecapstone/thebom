package net.skhu.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Dailylog;
import net.skhu.document.DailylogSenior;

public interface DailylogSeniorRepository extends MongoRepository<DailylogSenior,String> {

	List<Dailylog> findAllByHomeSeNo(int homeSeNo); // ***** Dailylog 전체 항목 확인
	List<Dailylog> findAllByVisitSeNo(int visitSeNo); // ***** Dailylog 전체 항목 확인
	List<Dailylog> findAllByDsNo(int dsNo); // ***** Dailylog 전체 항목 확인
	
}
