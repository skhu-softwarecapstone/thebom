package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Circle;

public interface CircleRepository extends MongoRepository<Circle,String>  {

}
