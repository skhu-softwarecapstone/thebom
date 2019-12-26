package net.skhu.repository.SocialWorker;

import java.util.Date;
import java.util.List;

import net.skhu.document.SocialWorker;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

public interface SocialWorkerRepository extends MongoRepository<SocialWorker, String> {

	//담당지역으로 사회복지사 찾기
	SocialWorker findByDistrict(String district);
	
	//이름으로 사회복지사 찾기
	List<SocialWorker> findByNameLike(String name);
	
	// Supports native JSON query string
	@Query("{name:'?0'}")
	List<SocialWorker> findCustomByName(String name);
}
