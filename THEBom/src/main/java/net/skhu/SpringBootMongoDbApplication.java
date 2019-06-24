package net.skhu;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.mongodb.MongoDbFactory;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.convert.CustomConversions;
import org.springframework.data.mongodb.core.convert.DefaultDbRefResolver;
import org.springframework.data.mongodb.core.convert.DefaultMongoTypeMapper;
import org.springframework.data.mongodb.core.convert.MappingMongoConverter;
import org.springframework.data.mongodb.core.index.GeospatialIndex;
import org.springframework.data.mongodb.core.mapping.MongoMappingContext;

import net.skhu.converter.PointReadConverter;
import net.skhu.converter.PointWriteConverter;
import net.skhu.document.Venue;

@SpringBootApplication
public class SpringBootMongoDbApplication {
	
	private final List<Converter<?, ?>> converters = new ArrayList<Converter<?, ?>>();
	public static void main(String[] args) {
		SpringApplication.run(SpringBootMongoDbApplication.class, args);
	}

	@Bean
	public MongoTemplate mongoTemplate(MongoDbFactory mongoDbFactory, MongoMappingContext context) {

		MappingMongoConverter converter = new MappingMongoConverter(new DefaultDbRefResolver(mongoDbFactory), context);
		converter.setTypeMapper(new DefaultMongoTypeMapper(null));
		
		converter.setCustomConversions(new CustomConversions(
		        Arrays.asList(
		                new PointReadConverter(),
		                new PointWriteConverter()
		        )
		));
		converter.afterPropertiesSet();
		
		MongoTemplate mongoTemplate = new MongoTemplate(mongoDbFactory, converter);
		

		return mongoTemplate;


	}
}
