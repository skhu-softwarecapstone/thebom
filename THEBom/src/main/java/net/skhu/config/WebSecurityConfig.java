package net.skhu.config;

import net.skhu.service.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.util.SystemPropertyUtils;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    CustomizeAuthenticationSuccessHandler customizeAuthenticationSuccessHandler;

    @Bean
    public UserDetailsService mongoUserDetails() {
        return new CustomUserDetailsService();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        UserDetailsService userDetailsService = mongoUserDetails();
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(bCryptPasswordEncoder);

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        .authorizeRequests()
        .antMatchers("/").permitAll()
        .antMatchers("/login").permitAll()
        .antMatchers("/signup").permitAll()
        .antMatchers("/m/login").permitAll() // ***** mobile 영역 로그인, 회원가입 권한 허용
        .antMatchers("/m/signup").permitAll() // *****
//        .antMatchers("/sw/**").access("ADMIN") //ADMIN 권한을 소요한 사용자만 요청할 수 있음
//        .antMatchers("/sw/**").access("hasRole('ADMIN') or hasRole('ADMIN') and hasRole('DBA')")
//        .antMatchers("/sw/**").access("hasRole('ADMIN')")
        .antMatchers("/sp/**").access("USER")
        .antMatchers("/se/**").access("USER")
        .antMatchers("/m/**").access("USER") // ***** mobile 영역 USER 권한 허용 
        .antMatchers("/sp/**", "/m/**").hasAuthority("USER").anyRequest()  // ***** "/m/**" 경로 추가
        .authenticated().and().csrf().disable().formLogin().successHandler(customizeAuthenticationSuccessHandler)
        
        
        .loginPage("/login").failureUrl("/login?error=true")
        .usernameParameter("email")
        .passwordParameter("password")
        .and().logout()
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .logoutRequestMatcher(new AntPathRequestMatcher("/m/logout")) // ***** mobile 로그아웃 경로 추가.
        .logoutSuccessUrl("/").and().exceptionHandling();
        
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/res/**", "/fonts/**", "/css/**", "/js/**", "/images/**");
    }
}
