package net.skhu.repository;

import java.util.List;

import org.springframework.data.geo.Distance;
import org.springframework.data.geo.Point;
import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.sponsor.Sponsor;

public interface LocationRepository extends MongoRepository<Sponsor,String>{
	
	List<Sponsor> findByAddressLocationNearAndMatch(Point p,Distance d,int match);

}
