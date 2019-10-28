package net.skhu.document;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Circle {
	@Id
	private String id;
	@Field(value="cNo")
	private int cNo;
	@Field(value="mNo")
	private int mNo;
	@Field(value="senior")
	private Integer[] senior;
	@Field(value="introduce")
	private String introduce;
}
