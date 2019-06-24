package net.skhu.document.senior;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
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

	@Field(value="disability_grade")
	private String disabilityGrade;

	@Field(value="group_info")
	private GroupInfo groupInfo;
	
	@Field(value="address")
	Address address;
	
	@PersistenceConstructor
	public Senior(String id, int seNo, String name, int age, boolean gender, int point, String phone,
			String disabilityGrade, GroupInfo groupInfo, Address address) {
		super();
		this.id = id;
		this.seNo = seNo;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.point = point;
		this.phone = phone;
		this.disabilityGrade = disabilityGrade;
		this.groupInfo = groupInfo;
		this.address = address;
	}
	
	
}