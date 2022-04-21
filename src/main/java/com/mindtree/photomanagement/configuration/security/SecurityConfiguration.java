package com.mindtree.photomanagement.configuration.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@SuppressWarnings("deprecation")
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		http.cors();
//		http.csrf().disable();
		http.authorizeRequests().antMatchers("/photo").permitAll().antMatchers("/user/photo").permitAll()
				.antMatchers("/admin/home").hasAnyRole("ADMIN").antMatchers("/viewcampusmind").hasAnyRole("ADMIN")
				.antMatchers("/downloadcampusmind").hasAnyRole("ADMIN").antMatchers("/admin/photo/view/")
				.hasAnyRole("ADMIN").antMatchers("/admin/photo/download/").hasAnyRole("ADMIN")
				.antMatchers("/admin/photos").hasAnyRole("ADMIN").anyRequest().authenticated().and().formLogin()
				.loginPage("/admin/login").defaultSuccessUrl("/admin/home").permitAll().and().logout()
				.logoutSuccessUrl("/admin/login?logout=true").permitAll().and().httpBasic().and().csrf().disable();

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**", "/assets/**",
				"/dis/**");

	}
}
