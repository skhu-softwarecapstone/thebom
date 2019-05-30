package net.skhu.repository.SocialWorker;

import java.util.Date;

import net.skhu.document.SocialWorker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.mongodb.client.result.UpdateResult;

//The implementation class name is very strict, the name must be "CoreRepositoryInterface" + Impl

@Repository
public class SocialWorkerRepositoryCustomImpl implements SocialWorkerRepositoryCustom {

	@Autowired MongoTemplate mongoTemplate;
	
	//사회복지사 수 구하기
	public int getMaxSwNo() {
        Query query = new Query();
        //내림차순으로 정렬 후 최상위 객체 조회
        query.with(new Sort(Sort.Direction.DESC, "swNo"));
        query.limit(1);
        SocialWorker maxObject = mongoTemplate.findOne(query, SocialWorker.class);
        if (maxObject == null) {
            return 0;
        }
        return maxObject.getSwNo();
    }
	
	
	@Override
	public long updateSocialWorker(String swNo, String district, String ranks) {
		Query query = new Query(Criteria.where("swNo").is(swNo));
		Update update = new Update();

		update.set("district", district);
		update.set("ranks", ranks);

		UpdateResult result = this.mongoTemplate.updateFirst(query, update, SocialWorker.class);



		if (result != null) {
			return result.getModifiedCount();
		}

		return 0;
	}
}
