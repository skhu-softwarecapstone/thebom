package net.skhu.controller.m;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import net.skhu.document.User;
import net.skhu.model.m.MobileLoginVO;
import net.skhu.service.CustomUserDetailsService;

//모바일 로그인 관련 컨트롤러
@RestController
public class MobileLoginController {

	@Autowired
	private CustomUserDetailsService userService;

	@RequestMapping(value = "/m/login/{success}")
	public MobileLoginVO MobileLoginController(@PathVariable boolean success, HttpSession session) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());		
		session.setAttribute("user", user); //세션에 로그인 정보 넣어두기.
		
		MobileLoginVO mLV = new MobileLoginVO();
		if (success) {
			mLV.setUserEmail("login");
			mLV.setSucessMessage("SUCC");
			mLV.setErrorMessage("");
		} else {
			mLV.setUserEmail("login");
			mLV.setSucessMessage("FAIL");
			mLV.setErrorMessage("id or password not corrected");	
		}

		return mLV;
	}

	@RequestMapping(value = "/m/signup", method = RequestMethod.POST)
	public MobileLoginVO createNewUser(@RequestBody User user) {
		ModelAndView modelAndView = new ModelAndView();
		User userExists = userService.findUserByEmail(user.getEmail());
		MobileLoginVO mLV = new MobileLoginVO(); // 로그인 성공 결과 여부 및 에러메시지 json
		mLV.setUserEmail(user.getEmail());

		if (userExists != null) {
			mLV.setSucessMessage("FAIL");
			mLV.setErrorMessage("DUPLICATE : here is already a user registered with the username provided");
		} else {
			userService.saveUser(user);
			mLV.setSucessMessage("SUCC");
			mLV.setErrorMessage("");
		}
		return mLV;
	}

	@RequestMapping(value = "/m/test", method = RequestMethod.POST)
	public String test() {
		String str = "{login:\"heelo\"}";
		return str;
	}

}
