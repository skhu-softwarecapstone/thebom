package net.skhu.controller.nfc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Date;

import javax.net.ssl.HttpsURLConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.skhu.document.DailylogSenior;
import net.skhu.document.VisitSenior;
import net.skhu.document.senior.Senior;
import net.skhu.model.nfc.APIKey;
import net.skhu.model.nfc.AddressInfo;
import net.skhu.model.nfc.NFCRequestData;
import net.skhu.model.nfc.NFCSuccessVO;
import net.skhu.model.nfc.SeniorCardInfo;
import net.skhu.model.nfc.TAddress;
import net.skhu.repository.DailylogSeniorRepository;
import net.skhu.repository.SeniorCardInfoRepository;
import net.skhu.repository.SeniorRepository;

@RestController
public class NFCController {

	@Autowired
	SeniorRepository seniorRepository;

	@Autowired
	SeniorCardInfoRepository seniorCardInfoRepository;

	@Autowired
	APIKey aPIKey;

	@Autowired
	DailylogSeniorRepository dailylogSeniorRepository;
	
	@RequestMapping("/m/nfc/match_senior")
	// NFC 주소 인증 및  방문한  senior 포인트 증가
	public NFCSuccessVO placesPerIndex(@RequestBody NFCRequestData request) {

		// NFC 결과 리턴
		NFCSuccessVO nfcSuccessVO = new NFCSuccessVO();
		nfcSuccessVO.setType("match_senior validation");

		// T Map geocoder api 설정 setting
		String api_url = "https://apis.openapi.sk.com/tmap/geo/reversegeocoding";
		String api_version = "1";
		String api_lat = request.getLat();
		String api_lon = request.getLon();
		String api_callback = "false";
		String app_key = aPIKey.getContextPath();

		String setupAPI = api_url + "?" + "version=" + api_version + "&" + "lat=" + api_lat + "&" + "lon=" + api_lon
				+ "&" + "callback=" + api_callback + "&" + "appKey=" + app_key;

		// api url에 좌표 값 기반 주소 요청
		try {
			URL url = new URL(setupAPI);
			HttpsURLConnection connection;
			connection = (HttpsURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Accept", "application:json");
			connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");

			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}

			// jasper 모듈을 이용하여 받은 json객체를 자바 객체로 파싱
			ObjectMapper objectMapper = new ObjectMapper();
			TAddress tAddress = objectMapper.readValue(result, TAddress.class);

			System.out.println(request.getUid1());
			System.out.println(request.getUid2());
			System.out.println(request.getLat());
			System.out.println(request.getLon());

			SeniorCardInfo seniorCardInfo1 = seniorCardInfoRepository.findByUid(request.getUid1());
			SeniorCardInfo seniorCardInfo2 = seniorCardInfoRepository.findByUid(request.getUid2());
			System.out.println(seniorCardInfo1.getSeNo());
			System.out.println(seniorCardInfo2.getSeNo());
			
			// senior 검증
			Senior homeSenior = seniorRepository.findBySeNo(seniorCardInfo1.getSeNo());
			Senior visitSenior = seniorRepository.findBySeNo(seniorCardInfo2.getSeNo());
		
			AddressInfo addressInfo = tAddress.getAddressInfo();
			String getAddress = addressInfo.getCity_do() + " " + addressInfo.getGu_gun() + " " +addressInfo.getLegalDong();
			
			System.out.println(getAddress);
			System.out.println(homeSenior.getAddress().getAddress1());
			// homeSenior의 address1 주소가 좌표값으로부터 받은 fullAddress값과 일치했을 때, 방문한 visitSenior의 point를 100 증가
			if (getAddress.equals(homeSenior.getAddress().getAddress1()) && visitSenior != null
					&& homeSenior != null) {
				visitSenior.setPoint(visitSenior.getPoint() + 100);
				seniorRepository.save(visitSenior);
				
				// DailylogSenior 기록 
				int dsNo = (int) dailylogSeniorRepository.count();
				DailylogSenior dailylogSenior = new DailylogSenior();
				dailylogSenior.setDsNo(++dsNo);
				dailylogSenior.setDate(new Date());
				dailylogSenior.setHomeSeNo(homeSenior.getSeNo());
				dailylogSenior.setVisitSeNo(visitSenior.getSeNo());
				dailylogSenior.setLocation(homeSenior.getAddress().getLocation());
				
				dailylogSeniorRepository.save(dailylogSenior);
			
				nfcSuccessVO.setErrorMessage("");
				nfcSuccessVO.setSuccessMessage("SUCC");
				return nfcSuccessVO;
			}
		} catch (IOException e) {
			e.printStackTrace();
			nfcSuccessVO.setErrorMessage("NETWORK_ERROR");
			nfcSuccessVO.setSuccessMessage("FAIL");
			return nfcSuccessVO;
		}
		// 주소값이 일치하지 않을 때
		nfcSuccessVO.setErrorMessage("ADDRESS_NOT_MATCH");
		nfcSuccessVO.setSuccessMessage("FAIL");
		return nfcSuccessVO;
	}

}
