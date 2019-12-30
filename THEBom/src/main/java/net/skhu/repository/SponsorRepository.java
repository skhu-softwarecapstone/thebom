package net.skhu.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import net.skhu.document.senior.Senior;
import net.skhu.document.sponsor.Sponsor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import net.skhu.model.Pagination;
public interface SponsorRepository extends MongoRepository<Sponsor, String>{
	
	Sponsor findBySpNo(int spNo);
	
	 public Page<Sponsor> findAll(Pageable pageable);
	//시도별 방문후원자 찾기
	@Query("{'address.country': ?0}")
	  List<Sponsor> findByCity(final String city);
	
	public default List<Sponsor> findAll(Pagination pagination) {
        Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(),
                                           new Sort(Sort.Direction.ASC, "spNo"));
        Page<Sponsor> page = findAll(pageable);
        pagination.setRecordCount((int)page.getTotalElements());
        return page.getContent();
    }

}
