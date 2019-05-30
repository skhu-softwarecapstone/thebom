package net.skhu.document.map;


import lombok.Data;

@Data
public class Address {
	
	private String city;
	private String district;
	private String neighborhood;
	private String zip;
	private Location location;

}
