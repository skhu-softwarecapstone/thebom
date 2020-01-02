package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import net.skhu.document.User;


public interface UserRepository extends MongoRepository<User, String> {
    
    User findByEmail(String email);



}

