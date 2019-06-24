package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Venue;

public interface VenueRepository extends MongoRepository<Venue, String>{

}
