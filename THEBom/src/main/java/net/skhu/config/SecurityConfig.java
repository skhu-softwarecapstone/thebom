package net.skhu.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import net.skhu.service.MyAuthenticationProvider;


@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
    @Autowired MyAuthenticationProvider myAuthenticationProvider;

    @Override
    public void configure(WebSecurity web) throws Exception
    {
        web.ignoring().antMatchers("/res/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception
    {
        http.authorizeRequests()
            .antMatchers("/admin/**").access("ROLE_ADMIN")
            .antMatchers("/").permitAll()
            .antMatchers("/**").permitAll();

        http.csrf().disable();

        http.formLogin()
            .loginPage("/") //로그인페이지
            .loginProcessingUrl("/login_processing") //로그인 검사
            .failureUrl("/?error")//로그인 실패 시
            .defaultSuccessUrl("/admin/circle", true)//로그인 성공 시
            .usernameParameter("loginId")
            .passwordParameter("passwd");
//로그인 아이디, 비밀번호 input태그 name 값 설정
        http.logout()
            .logoutRequestMatcher(new AntPathRequestMatcher("/logout_processing")) //로그아웃 절차
            .logoutSuccessUrl("/")//로그아웃 후
            .invalidateHttpSession(true);

        http.authenticationProvider(myAuthenticationProvider);
    }
}

