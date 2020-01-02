package net.skhu.document;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import net.skhu.document.senior.Senior;
import net.skhu.document.map.*;

@Data
public class Circle {
	@Id
	private String id;
	@Field(value="cNo")
	private int cNo;
	@Field(value="socialWorker")
	private SocialWorker socialWorker;
	@Field(value="seniorsInCircle")
	private List<Senior> seniorsInCircle;
	@Field(value="address")
	private String address;

}
