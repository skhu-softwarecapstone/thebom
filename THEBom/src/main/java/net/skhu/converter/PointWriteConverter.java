package net.skhu.converter;


import org.bson.Document;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.WritingConverter;
import org.springframework.data.geo.Point;

@WritingConverter
public class PointWriteConverter implements Converter<Point, Document> {

	
	@Override
	public Document convert(Point source) {
		return source == null ? null : new Document("x", source.getX()).append("y", source.getY());
	}
}