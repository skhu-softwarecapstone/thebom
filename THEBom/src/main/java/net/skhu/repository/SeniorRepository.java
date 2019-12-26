package net.skhu.repository;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import net.skhu.document.senior.Senior;


public interface SeniorRepository extends MongoRepository<Senior, String>{
	
	Senior findBySeNo(int seNo);
	List<Senior> findByMatch(int match);
	Senior findTopByOrderBySeNoDesc();
}
