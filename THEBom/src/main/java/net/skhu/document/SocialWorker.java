package net.skhu.document;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude= {"phone","city","district","neighborhood"})
@Document(collection = "social_worker")
public class SocialWorker {

	@Id
	private String id;

	@Field(value="swNo")
	private int swNo;

	@Field(value="name")
	private String name;

	@Field(value="phone")
	private String phone;

	@Field(value="city")
	private String city;

	@Field(value="district")
	private String district;

	@Field(value="neighborhood")
	private String neighborhood;

	@Field(value="ranks")
	private String ranks;


}
