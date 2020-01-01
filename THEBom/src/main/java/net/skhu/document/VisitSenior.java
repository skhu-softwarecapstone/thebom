package net.skhu.document;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.IndexDirection;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;

import net.skhu.document.map.Address;

@Document(collection = "visitSenior")
public class VisitSenior {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Id
	private String id;
	private Date visitDate;
	private String sponsorId;
	private int seNo;
	private Address address;
	private String SeniorName;
	
	public Date getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}
	public String getSponsorId() {
		return sponsorId;
	}
	public void setSponsorId(String sponsorId) {
		this.sponsorId = sponsorId;
	}
	
	public int getSeNo() {
		return seNo;
	}
	public void setSeNo(int seNo) {
		this.seNo = seNo;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getSeniorName() {
		return SeniorName;
	}
	public void setSeniorName(String seniorName) {
		SeniorName = seniorName;
	}
	
	
}
