package net.skhu.repository;
import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Notice;
public interface NoticeRepository extends MongoRepository<Notice,String> {

}
