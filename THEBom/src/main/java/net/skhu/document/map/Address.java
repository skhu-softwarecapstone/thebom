package net.skhu.document.map;


import lombok.Data;

@Data
public class Address {
	
	private String city;
	private String zip;
	private double[] location;

}
