package net.skhu.document.sponsor;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import lombok.ToString;
import net.skhu.document.map.Address;

@Data
@Document(collection = "sponsor")

//이름,성별,연락처,리워드,방문횟수,방문보고서,주소를 저장한 방문후원자정보
public class Sponsor {
	
	
	@PersistenceConstructor
	public Sponsor(String id, int spNo, String name, boolean gender,@Value("#root.point ?: 0")int point, String phone, @Value("#root.visits ?: 0")String visits,
			Report report) {
		super();
		this.id = id;
		this.spNo = spNo;
		this.name = name;
		this.gender = gender;
		this.point = point;
		this.phone = phone;
		this.visits = visits;
		this.report = report;
		
	}

	@Id
	private String id;
	
	@Field(value="spNo")
	private int spNo;

	@Field(value="name")
	private String name;
	
	@Field(value="gender")
	private boolean gender;
	
	@Field(value="point")
	private int point;

	@Field(value="phone")
	private String phone;

	@Field(value="visits")
	private String visits;

	@Field(value="report")
	private Report report;
	
//	@Field(value="address")
//	private Address address;

}
