package net.skhu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import net.skhu.document.SocialWorker;

@Component
public class MyAuthenticationProvider implements AuthenticationProvider {

    @Autowired workerService workerService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String loginId = authentication.getName();
        String passwd = authentication.getCredentials().toString();
        return authenticate(loginId, passwd);
    }

    public Authentication authenticate(String loginId, String password) throws AuthenticationException {
        SocialWorker worker = workerService.login(loginId, password);
        if (worker == null) return null;

        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        String role = "";
        switch (worker.getUserType()) {
        case "사회복지사": role = "ROLE_ADMIN"; break;
        }
        grantedAuthorities.add(new SimpleGrantedAuthority(role));
        return new MyAuthenticaion(loginId, password, grantedAuthorities,worker);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

    public class MyAuthenticaion extends UsernamePasswordAuthenticationToken {
        private static final long serialVersionUID = 1L;
        SocialWorker worker;

        public MyAuthenticaion (String loginId, String passwd, 
                                List<GrantedAuthority> grantedAuthorities, SocialWorker worker) {
            super(loginId, passwd, grantedAuthorities);
            this.worker=worker;
        }

        public SocialWorker getUser() {
            return worker;
        }

        public void setUser(SocialWorker worker) {
            this.worker=worker;
        }
    }
}
