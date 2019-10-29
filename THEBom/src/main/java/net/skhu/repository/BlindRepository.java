package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Blind;

public interface BlindRepository extends MongoRepository<Blind,String> {

	
	List<Blind> findByUserId(String userId);
	Blind findByBNo(int bNo);
}
