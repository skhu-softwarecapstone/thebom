package net.skhu.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Blind;
import net.skhu.document.Notice;

public interface NoticeRepository extends MongoRepository<Notice, Integer>{
	Notice findByNo(int no);
	//mobile에서 페이징별 10개 항목 List<Notice> 리턴
	List<Notice> findByNoBetweenOrderByCreatedDateDesc(int startNo, int endNo); // *****
}