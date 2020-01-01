package net.skhu.model;

import java.util.Date;

import javax.validation.constraints.NotEmpty;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class ReserveModel {
	
	
	@NotEmpty(message="요일을 입력해주세요!")
	private String day;
	
	@NotEmpty(message="시간을 입력해주세요!")
	private String time;
	
	@NotEmpty(message="시작날짜를 yyyy-mm-dd형식으로 입력해주세요!")
	private Date startDate;
	
}