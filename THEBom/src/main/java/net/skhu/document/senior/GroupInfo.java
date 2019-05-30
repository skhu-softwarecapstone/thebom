package net.skhu.document.senior;

import lombok.Data;

//독거노인그룹을 관리하는 클래스로 담당사회복지사 외래키(object_id)와 지역정보,참여인원 저장

@Data
public class GroupInfo {
	
	String socialWorkerId;
	String neighborhood;
	int participants;

}
