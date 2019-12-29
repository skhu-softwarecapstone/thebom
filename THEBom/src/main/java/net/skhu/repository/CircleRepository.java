package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Circle;
import net.skhu.document.sponsor.Sponsor;

public interface CircleRepository extends MongoRepository<Circle,String>  {
	Circle findByCNo(int cNo);
}
