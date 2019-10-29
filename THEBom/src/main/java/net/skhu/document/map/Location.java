package net.skhu.document.map;

import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Location {
	@Field(value="0")
	private double lat;
	@Field(value="1")
	private double lng;
	
	public Location(double lat, double lng) {
		super();
		this.lat = lat;
		this.lng = lng;
	}
	
	

}
