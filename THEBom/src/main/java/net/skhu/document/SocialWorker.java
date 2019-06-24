package net.skhu.document;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
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

	@PersistenceConstructor
	public SocialWorker(String id, int swNo, String name, String phone, String city, String district,
			String neighborhood, String ranks) {
		super();
		this.id = id;
		this.swNo = swNo;
		this.name = name;
		this.phone = phone;
		this.city = city;
		this.district = district;
		this.neighborhood = neighborhood;
		this.ranks = ranks;
	}

	public SocialWorker() {
		// TODO Auto-generated constructor stub
	}
	
	


}
