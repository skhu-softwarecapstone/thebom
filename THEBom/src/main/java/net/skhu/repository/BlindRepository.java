package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Blind;

public interface BlindRepository extends MongoRepository<Blind,String> {

	
	List<Blind> findByUserId(String userId);
	Blind findByBNo(int bNo);
	int countByUserId(String email);
	List<Blind> findAllByUserIdOrderByDateDesc(String email, PageRequest pageRequest);
	
}
