package net.skhu.converter;

import org.springframework.context.annotation.Bean;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.geo.Point;
import org.springframework.stereotype.Component;


import org.bson.Document;

@Component
public class PointWriteConverter implements Converter<Point, Document> {
	
	
	@Override
	public Document convert(Point source) {
		
		return source == null ? null : new Document("x", source.getX()).append("y", source.getY());
	}
	
}
