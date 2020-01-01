package net.skhu.document;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import net.skhu.document.map.Location;

@Data
public class DailylogSenior {
	
	@Id
	private String id;
	@Field(value="dsNo")
	private int dsNo;
	@Field(value="date")
	private Date date;
	@Field(value="homeSeNo")
	private int homeSeNo;
	@Field(value="visitSeNo")
	private int visitSeNo;
	@Field(value="location")
	private Location location;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDsNo() {
		return dsNo;
	}
	public void setDsNo(int dsNo) {
		this.dsNo = dsNo;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getHomeSeNo() {
		return homeSeNo;
	}
	public void setHomeSeNo(int homeSeNo) {
		this.homeSeNo = homeSeNo;
	}
	public int getVisitSeNo() {
		return visitSeNo;
	}
	public void setVisitSeNo(int visitSeNo) {
		this.visitSeNo = visitSeNo;
	}
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	
}
