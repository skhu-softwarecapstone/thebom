package net.skhu.config;

import java.io.IOException;
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
            	System.out.println("44444");
                //response.sendRedirect("/sw/sw_main");
                response.sendRedirect("/sw/sw_main");
                System.out.println("4444-2");
            } else if ("USER".equals(auth.getAuthority())) {
            	System.out.println(55555);
                response.sendRedirect("/sp/sp_main");
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
