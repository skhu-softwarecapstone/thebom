package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Dailylog;
import net.skhu.document.Reserve;

public interface ReserveRepository extends MongoRepository<Reserve, String>{
		
	List<Reserve> findByUserId(String userId);

}