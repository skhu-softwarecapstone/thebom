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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public Integer[] getSenior() {
		return senior;
	}
	public void setSenior(Integer[] senior) {
		this.senior = senior;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
}
