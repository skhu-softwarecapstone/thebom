package net.skhu.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Dailylog;

public interface DailylogRepository extends MongoRepository<Dailylog,String> {

	List<Dailylog> findAllById(String id); // ***** Dailylog 전체 항목 확인

	Dailylog findByUserIdAndDate(String id, Date date); // ***** Dailylog 해당 날짜 항목 확인
	Dailylog findByUserIdAndDNo(String id, int dNo);
	@Query(value="{'userId':?0}", fields="{'date':1}")
	List<Dailylog> findAllByUserId(String id); // ***** Dailylog 해당 날짜리스트 확인에 필요
	
}
