package net.skhu.model.nfc;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;
@Document(collection = "seniorCardInfo")
@Data
public class SeniorCardInfo {
	@Id
	private String id;
	private String uid;
	private int seNo;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getSeNo() {
		return seNo;
	}
	public void setSeNo(int seNo) {
		this.seNo = seNo;
	}
	
	
}
