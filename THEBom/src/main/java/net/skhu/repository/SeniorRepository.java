package net.skhu.repository;
import org.springframework.data.mongodb.repository.MongoRepository;
import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;

public interface SeniorRepository extends MongoRepository<Senior, String>{
	Senior findBySeNo(int seNo);
}
