package net.skhu.repository;
import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import net.skhu.document.senior.Senior;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import net.skhu.model.Pagination;

public interface SeniorRepository extends MongoRepository<Senior, String>{
	public Page<Senior> findAll(Pageable pageable);
	Senior findBySeNo(int seNo);
	List<Senior> findByMatch(int match);
	Senior findTopByOrderBySeNoDesc();
	
	
	public default List<Senior> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "seNo"));
        Page<Senior> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

}
