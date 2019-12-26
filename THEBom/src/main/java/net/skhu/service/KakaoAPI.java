package net.skhu.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import net.skhu.model.KakaoGeoRes;

@Service
public class KakaoAPI {

	public HashMap<String, Object> getCoords (String address) throws UnsupportedEncodingException {

		String APIKey = "3f1c33a10d3341eaf12e0508b0683781"; 
		
		//    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> location = new HashMap<>();
		
		String reqURL = "https://dapi.kakao.com/v2/local/search/address.json?query=" 
                + URLEncoder.encode(address, "UTF-8");
		
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			//    요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "KakaoAK " + APIKey);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body(location) : " + result);

//			JsonParser parser = new JsonParser();
//			JsonElement element = parser.parse(result);
//						
//			JsonObject documents = element.getAsJsonObject().get("documents").getAsJsonObject();
//			
//
//			String id = element.getAsJsonObject().get("id").getAsString();
//			String x = documents.getAsJsonObject().get("x").getAsString();
//			String y = documents.getAsJsonObject().get("y").getAsString();
//
//			location.put("x", x);
//			location.put("y", y);
			

			ObjectMapper objectMapper = new ObjectMapper();
			objectMapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			
			KakaoGeoRes bodyJson = objectMapper.readValue(result, KakaoGeoRes.class);
			location.put("x", bodyJson.getDocuments().get(0).getX());
			location.put("y", bodyJson.getDocuments().get(0).getY());
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return location;
	}

}
