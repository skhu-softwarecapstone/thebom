
package net.skhu.repository;

import net.skhu.document.User;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRepository extends MongoRepository<User, String> {
    
    User findByEmail(String email);
    
}
