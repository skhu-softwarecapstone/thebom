package net.skhu.repository;
import java.util.List;
import java.util.Optional;
import net.skhu.model.Pagination;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Blind;
import net.skhu.document.Notice;

public interface NoticeRepository extends MongoRepository<Notice, Integer>{
	Notice findByNo(int no);
	//mobile에서 페이징별 10개 항목 List<Notice> 리턴
	List<Notice> findByNoBetweenOrderByCreatedDateDesc(int startNo, int endNo); // *****
	
	public Page<Notice> findAll(Pageable pageable);

    public default List<Notice> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "no"));
        Page<Notice> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

}