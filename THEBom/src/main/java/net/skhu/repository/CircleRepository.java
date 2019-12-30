package net.skhu.repository;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.document.Circle;
import net.skhu.document.sponsor.Sponsor;
import net.skhu.model.Pagination;

public interface CircleRepository extends MongoRepository<Circle,String>  {
	 public Page<Circle> findAll(Pageable pageable);
	Circle findByCNo(int cNo);
	
    public default List<Circle> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "cNo"));
        Page<Circle> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

}
