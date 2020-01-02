package net.skhu.controller.m;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import net.skhu.document.User;

@RestController
public class MobileUserController {

	// 마이페이지 메서드
	@PostMapping("/m/mypage")
	public User sponMypage(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			User showUser = new User();
			showUser.setEmail(user.getEmail());
			showUser.setFullname(user.getFullname());
			return showUser;
		}
		return null;
	}
}
