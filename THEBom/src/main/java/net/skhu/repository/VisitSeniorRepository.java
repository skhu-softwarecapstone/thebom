package net.skhu.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Blind;
import net.skhu.document.VisitSenior;

public interface VisitSeniorRepository  extends MongoRepository<VisitSenior,String> {
	VisitSenior findByVisitDateAndSponsorId(Date date, String sponsorId);

	@Query(value="{'visitDate' :{ '$gte' : ?0, '$lte' : ?1}, 'sponsorId': ?2}", fields= "{'visitDate':1}")
	List<VisitSenior> findAllByDateBetweenAndSponsorIdOrderByDesc(Date firstDate, Date lastDate, String email);
}
