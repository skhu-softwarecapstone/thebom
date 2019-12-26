package net.skhu.document;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class SponApply {
	@Id
	private String id;
	@Field(value="aNo")
	private int aNo;
	@Field(value="userId")
	private String userId;
	@Field(value="day")
	private String day;
	@Field(value="time")
	private String time;
	@Field(value="startDate")
	private Date startDate;
}
