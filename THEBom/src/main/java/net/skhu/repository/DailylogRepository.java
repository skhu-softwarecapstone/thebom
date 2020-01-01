package net.skhu.repository;

import java.util.Date;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.Dailylog;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import net.skhu.model.Pagination;

public interface DailylogRepository extends MongoRepository<Dailylog,String> {
	public Page<Dailylog> findAll(Pageable pageable);
	public Page<Dailylog> findByUserId(Pageable pageable,String userId); // ***** Dailylog 전체 항목 확인
	Dailylog findByUserIdAndDate(String id, Date date); // ***** Dailylog 해당 날짜 항목 확인

	@Query(value="{'userId':?0}", fields="{'date':1}")
	List<Dailylog> findAllByUserId(String id); // ***** Dailylog 해당 날짜리스트 확인에 필요
	
	Dailylog findByDNo(int dNo);
	int countByUserId(String email);
	List<Dailylog> findAllByUserIdOrderByDateDesc(String email, PageRequest pageRequest);
    
	public default List<Dailylog> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "dNo"));
        Page<Dailylog> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }
	public default List<Dailylog> findByUserId(Pagination pagination,String userId) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "dNo"));
        Page<Dailylog> page = findByUserId(pageable,userId);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }


	
}
