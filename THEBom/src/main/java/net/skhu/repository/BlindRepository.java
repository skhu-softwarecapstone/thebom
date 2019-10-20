package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Blind;

public interface BlindRepository extends MongoRepository<Blind,String> {
	
}
