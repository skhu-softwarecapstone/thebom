package net.skhu.document.map;


import lombok.Data;

@Data
public class Address {
	
	private String city;
	private String zip;
	private double[] location;
	public Address(String city, String zip, double[] location) {
		super();
		this.city = city;
		this.zip = zip;
		this.location = location;
	}

}
