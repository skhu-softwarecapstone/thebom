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
	public Page<Senior> findByMatch(Pageable pageable,int match);
	Senior findBySeNo(int seNo);
	List<Senior> findByMatch(int match);
	Senior findTopByOrderBySeNoDesc();

	List<Senior> findBySponsorIsNull();
	List<Senior> findBySponsorIsNotNull();
	
	
	
	
	public default List<Senior> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "seNo"));
        Page<Senior> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }
	
	public default List<Senior> findBySponsorIsNull(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "seNo"));
        Page<Senior> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }
	
	public default List<Senior> findByMatch(Pagination pagination,int match) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "seNo"));
        Page<Senior> page = findByMatch(pageable,match);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

}

