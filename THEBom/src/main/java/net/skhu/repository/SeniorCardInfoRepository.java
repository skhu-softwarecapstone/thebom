package net.skhu.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import net.skhu.model.nfc.SeniorCardInfo;

public interface SeniorCardInfoRepository extends MongoRepository<SeniorCardInfo, String>{
	SeniorCardInfo findByUid(String uid);
}
