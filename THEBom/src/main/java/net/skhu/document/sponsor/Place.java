package net.skhu.document.sponsor;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import net.skhu.document.map.Address;

@Data
@Document(collection = "place")
public class Place {
	@Id
	private String id;
	
	@Field(value="pNo")
	private int pNo;

	@Field(value="name")
	private String name;
	
	@Field(value="introduce")
	private String introduce;
	
	@Field(value="address")
	private Address address;
}
