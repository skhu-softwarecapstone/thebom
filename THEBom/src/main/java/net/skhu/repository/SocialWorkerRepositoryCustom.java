package net.skhu.repository;

import java.util.Date;

public interface SocialWorkerRepositoryCustom {
	
	//현재 등록된 사회복지사 수 확인
	public int getMaxSwNo();
	
	//사회복지사 정보 변경-swNo로 검색하여 관할지역,급수 변경
	public long updateSocialWorker(String swNo, String district, String ranks);

}
