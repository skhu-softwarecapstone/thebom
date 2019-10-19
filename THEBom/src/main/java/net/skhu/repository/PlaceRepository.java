package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;

public interface PlaceRepository extends MongoRepository<Place, String>{
	
	
}