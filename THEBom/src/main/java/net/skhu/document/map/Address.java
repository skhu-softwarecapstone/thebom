package net.skhu.document.map;

import lombok.Data;

@Data
public class Address {
	
	private String address1;
	private String address_detail;
	private String zipcode;
	private Location location;

}
