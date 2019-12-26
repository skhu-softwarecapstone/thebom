package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;

public interface PlaceRepository extends MongoRepository<Place, String>{
	//mobile에서 페이징별 10개 항목 List<Place> 리턴
	List<Place> findByPNoBetween(int i, int j);

	List<Place> findByPNoBetweenOrderByPNoDesc(int i, int j);
	
	
}