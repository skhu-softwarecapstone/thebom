package net.skhu.document;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.Data;

@Data
@Document(collection = "notice")
public class Notice {
	
	@Id
    private String id;
	String title;
	String content;
	Date date;

}
