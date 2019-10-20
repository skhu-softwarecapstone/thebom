package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Dailylog;

public interface DailylogRepository extends MongoRepository<Dailylog,String> {
	
}
