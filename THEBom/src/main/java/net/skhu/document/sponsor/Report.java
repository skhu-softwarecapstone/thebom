package net.skhu.document.sponsor;

import java.util.Date;
import lombok.Data;

@Data
public class Report {
	
	private int id;
	private String title;
	private String memo;
	private Date time;
	
}
