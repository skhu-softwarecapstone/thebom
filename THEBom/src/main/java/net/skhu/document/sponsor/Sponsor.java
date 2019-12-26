package net.skhu.document.sponsor;

import org.springframework.data.annotation.Id;
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

	
	
	@Field(value="address")
	private Address address;



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public int getSpNo() {
		return spNo;
	}



	public void setSpNo(int spNo) {
		this.spNo = spNo;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public boolean isGender() {
		return gender;
	}



	public void setGender(boolean gender) {
		this.gender = gender;
	}



	public int getPoint() {
		return point;
	}



	public void setPoint(int point) {
		this.point = point;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getVisits() {
		return visits;
	}



	public void setVisits(String visits) {
		this.visits = visits;
	}



	public Address getAddress() {
		return address;
	}



	public void setAddress(Address address) {
		this.address = address;
	}

	
}
