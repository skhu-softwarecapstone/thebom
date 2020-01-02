package net.skhu.config;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
            HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {
        //set our response to OK status
        response.setStatus(HttpServletResponse.SC_OK);
       
        for (GrantedAuthority auth : authentication.getAuthorities()) {
            if ("ADMIN".equals(auth.getAuthority())) {
                //response.sendRedirect("/sw/sw_main");
                response.sendRedirect("/sw/sw_main");
            } else if ("USER".equals(auth.getAuthority())) {
            	//로그인시, 'mobile' parameter로 redirect할 주소 구분
            	if(request.getParameter("mobile") != null) { 	// *****
            		System.out.println(request.getParameter("mobile"));
            		RequestDispatcher rd = request.getRequestDispatcher("/m/login/true");
            		rd.forward(request, response);
            		//response.sendRedirect("/m/login/true");
            	}else {
            		response.sendRedirect("/sp/sp_main");
            	}												// *****
            } else if ("SPONSOR".equals(auth.getAuthority())) {
                response.sendRedirect("/sp/sp_main");
            }
           
        }
        
/*        
        for (GrantedAuthority auth : authentication.getAuthorities()) {
            if ("USER".equals(auth.getAuthority())) {
            	System.out.println(55555);
                response.sendRedirect("/sp/sp_main");
            }
        }
        
        for (GrantedAuthority auth : authentication.getAuthorities()) {
            if ("SPONSOR".equals(auth.getAuthority())) {
                response.sendRedirect("/sp/sp_main");
            }
        }
*/
    }

}
