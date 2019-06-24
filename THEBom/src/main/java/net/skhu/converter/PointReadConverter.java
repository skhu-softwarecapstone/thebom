package net.skhu.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.ReadingConverter;
import org.springframework.data.geo.Point;
import org.bson.Document;

@ReadingConverter
public class PointReadConverter implements Converter<Document, Point> {
	@Override
	public Point convert(Document source) {
		Point p = new Point(source.getDouble("x"), source.getDouble("y"));
		
		return p;
	}
}
