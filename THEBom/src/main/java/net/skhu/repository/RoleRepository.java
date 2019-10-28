
package net.skhu.repository;

import net.skhu.document.Role;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface RoleRepository extends MongoRepository<Role, String> {
    
    Role findByRole(String role);
}
