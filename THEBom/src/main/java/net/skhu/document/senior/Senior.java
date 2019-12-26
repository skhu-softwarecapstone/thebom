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
   
   @Field(value="match")
   private int match;

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public int getSeNo() {
	return seNo;
}

public void setSeNo(int seNo) {
	this.seNo = seNo;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
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

public String getDisabilityGrade() {
	return disabilityGrade;
}

public void setDisabilityGrade(String disabilityGrade) {
	this.disabilityGrade = disabilityGrade;
}

public GroupInfo getGroupInfo() {
	return groupInfo;
}

public void setGroupInfo(GroupInfo groupInfo) {
	this.groupInfo = groupInfo;
}

public Address getAddress() {
	return address;
}

public void setAddress(Address address) {
	this.address = address;
}

public String getUniqueness() {
	return uniqueness;
}

public void setUniqueness(String uniqueness) {
	this.uniqueness = uniqueness;
}

public int getMatch() {
	return match;
}

public void setMatch(int match) {
	this.match = match;
}

   
}