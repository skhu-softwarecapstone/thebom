package net.skhu.controller;

import java.util.*;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team.truffle.service.KakaoAPI;

import org.springframework.stereotype.Controller;
/*
@Controller
public class KakaoController {
	
	@Autowired KakaoAPI kakao;
	//맨 처음 접속하는 페이지
	@RequestMapping(value="/")
	public String index() {
		return "intro";
	}
	//로그인 페이지
	@RequestMapping(value="/login")
	public String login(@RequestParam("code") String code,HttpSession session) {

		//접근 코드 얻기
		String access_Token = kakao.getAccessToken(code);

		//유저 별명과 이메일 정보 맵 객체 획득
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		System.out.println("login Controller(user) : " + userInfo);

		//유저 프로필 이미지 정보 담은 맵 객체 획득
		HashMap<String, Object> profile = kakao.getProfile(access_Token);
		System.out.println("login Controller(profile) : " + profile);

		return "login";
	}
}
*/