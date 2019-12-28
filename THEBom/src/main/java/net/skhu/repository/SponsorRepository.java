package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;

public interface SponsorRepository extends MongoRepository<Sponsor, String>{
	
	Sponsor findBySpNo(int spNo);
	
	//시도별 방문후원자 찾기
	@Query("{'address.country': ?0}")
	  List<Sponsor> findByCity(final String city);

}
