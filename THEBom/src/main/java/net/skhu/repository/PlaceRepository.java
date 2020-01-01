package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.sponsor.Place;
import net.skhu.document.sponsor.Sponsor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import net.skhu.model.Pagination;
public interface PlaceRepository extends MongoRepository<Place, String>{
	 public Page<Place> findAll(Pageable pageable);
	//mobile에서 페이징별 10개 항목 List<Place> 리턴
	List<Place> findByPNoBetween(int i, int j);

	List<Place> findByPNoBetweenOrderByPNoDesc(int i, int j);
    
	public default List<Place> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "pNo"));
        Page<Place> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

	
}