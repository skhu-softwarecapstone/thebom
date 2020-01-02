package net.skhu.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.GeocoderStatus;
import com.google.code.geocoder.model.LatLng;

@Controller
public class GeocodingController {

	public static String[] geoCoding(String location) {
		
		System.out.println("주소전달성공"+location);
		if (location == null) return null;

		Geocoder geocoder = new Geocoder();

		// setAddress : 변환하려는 주소 (경기도 성남시 분당구 등)

		// 받아온 주소 location을 한국어 인코딩하여 request 설정

		GeocoderRequest geocoderRequest = new GeocoderRequestBuilder().setAddress(location).setLanguage("ko").getGeocoderRequest();

		GeocodeResponse geocoderResponse;

		try {

			geocoderResponse = geocoder.geocode(geocoderRequest);
			System.out.println("여기까지 오케이1");
			System.out.println(geocoderResponse.toString());

			if (geocoderResponse.getStatus() == GeocoderStatus.OK & !geocoderResponse.getResults().isEmpty()) {
				System.out.println("여기못지나감");


				GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();

				LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation();

				System.out.println("변환성공"+latitudeLongitude.toString());
				
				String[] coords = new String[2];

				coords[0] = latitudeLongitude.getLat().toString();
				coords[1] = latitudeLongitude.getLng().toString();
				System.out.println("변환성공2"+coords[0]);
				return coords;

			}

		} catch (IOException ex) {

			ex.printStackTrace();

		}
		System.out.println("여기서 문제발생");
		return null;

	}

}
