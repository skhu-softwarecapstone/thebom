package net.skhu.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class SeniorModel {
	
	@NotEmpty(message="어르신 성함을 입력해주세요!")
    String name;
	
	@NotEmpty(message="어르신 연세을 입력해주세요!")
    int age;
	
	boolean gender;
	
	@Size(min=13, message="010-xxxx-xxxx형식으로 입력해주세요")
    String phone;
	
	String disabilityGrade;
	
	String address1;
	
	String address_detail;
	
	String zipcode;
	
	String uniqueness;


}
