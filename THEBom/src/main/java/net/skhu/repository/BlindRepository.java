package net.skhu.repository;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Blind;
import net.skhu.document.sponsor.Place;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import net.skhu.model.Pagination;

public interface BlindRepository extends MongoRepository<Blind,String> {

    public Page<Blind> findAll(Pageable pageable);
	public Page<Blind> findByUserId(Pageable pageable,String email);
	List<Blind> findByUserId(String email);
	Blind findByBNo(int bNo);
	int countByUserId(String email);
	List<Blind> findAllByUserIdOrderByDateDesc(String email, PageRequest pageRequest);
	
	public default List<Blind> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "bNo"));
        Page<Blind> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

	public default List<Blind> findByUserId(Pagination pagination,String email) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "bNo"));
        Page<Blind> page = findByUserId(pageable,email);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

	
	
}
