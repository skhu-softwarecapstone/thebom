package net.skhu.document.map;

import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Location {
	@Field(value="0")
	private double lat;
	@Field(value="1")
	private double lng;

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}
	
	

}
