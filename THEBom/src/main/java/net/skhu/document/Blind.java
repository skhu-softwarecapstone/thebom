package net.skhu.document;

import java.util.Date;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
@Document(collection = "blind")
@Data
public class Blind {
	
	@Id
	private String id;
	
	@Field(value="bNo")
	private int bNo;
	@Field(value="name")
	private String name;
	@Field(value="content")
	private String content;
	@Field(value="userid")
	private String userId;
	@CreatedDate
	@Field(value="date")
	private Date date;
	@Field(value="processState")
	private int processState;

	// *****
	// "/m/blind_insert" 매핑 메서드를 위한 getter setter 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBNo() {
		return bNo;
	}
	public void setBNo(int bNo) {
		this.bNo = bNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getProcessState() {
		return processState;
	}
	public void setProcessState(int processState) {
		this.processState = processState;
	}
}
