package net.skhu.document.map;

import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Location {
	@Field(value="0")
	private double x;
	@Field(value="1")
	private double y;

}
