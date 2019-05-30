package net.skhu.document;

import java.util.Date;
import lombok.Data;

@Data
public class Report {
	
	private int id;
	private String title;
	private String memo;
	private Date time;
	
}
