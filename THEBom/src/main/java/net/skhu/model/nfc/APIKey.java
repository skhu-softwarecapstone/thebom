package net.skhu.model.nfc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
public class APIKey {
	private static final String API_PATH_KEY = "api_key";
	@Autowired
	private Environment environment;
	
	public String getContextPath() {
		return environment.getProperty(API_PATH_KEY);
	}
}
