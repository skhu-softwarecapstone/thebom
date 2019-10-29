package net.skhu.repository;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;
import net.skhu.document.Notice;

public interface NoticeRepository extends MongoRepository<Notice, Integer>{
	Notice findByNo(int no);
}