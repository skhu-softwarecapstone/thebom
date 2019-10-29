package net.skhu.document.senior;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import lombok.ToString;
import net.skhu.document.map.Address;

@Data
@Document(collection = "senior")

//독거노인을 관리하는 클래스로 이름,성별,연락처,리워드,장애등급,참여그룹정보,주소를 저장
public class Senior {
	
	@Id
	private String id;
	
	@Field(value="seNo")
	private int seNo;

	@Field(value="name")
	private String name;
	
	@Field(value="age")
	private int age;
	
	@Field(value="gender")
	private boolean gender;
	
	@Field(value="point")
	private int point;

	@Field(value="phone")
	private String phone;

	@Field(value="disability")
	private String disabilityGrade;

	@Field(value="group_info")
	private GroupInfo groupInfo;
	
	@Field(value="address")
	private Address address;
	
	@Field(value="uniqueness")
	private String uniqueness;
	
}