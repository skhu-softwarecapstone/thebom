package net.skhu.document;

import java.util.Date;

import org.springframework.data.mongodb.core.index.IndexDirection;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;

import net.skhu.document.map.Address;

@Document(collection = "visitSenior")
public class VisitSenior {
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date visitDate;
	private String sponsorId;
	private String seniorId;
	private Address address;
	
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
	public String getSeniorId() {
		return seniorId;
	}
	public void setSeniorId(String seniorId) {
		this.seniorId = seniorId;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
