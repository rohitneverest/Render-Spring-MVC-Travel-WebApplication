package com.example.travelease.config;

import com.example.travelease.service.JwtAuthFilter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.aot.generate.ValueCodeGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfiguration;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Slf4j
@Configuration
@EnableWebSecurity
public class SecurityConfig{


     //  Spring Boot automatically creates this for you:Because you have these
    //  two beans present:UserDetailsService, PasswordEncoder

//    @Bean
//    public AuthenticationProvider authenticationProvider(
//            UserDetailsService userDetailsService,
//            PasswordEncoder passwordEncoder) {
//
//        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
//        provider.setUserDetailsService(userDetailsService);
//        provider.setPasswordEncoder(passwordEncoder);
//        return provider;
//    }



    @Bean
   public AuthenticationManager authenticationManager(AuthenticationConfiguration configuration) throws Exception {
       return configuration.getAuthenticationManager();
   }


   @Autowired
   private JwtAuthFilter jwtAuthFilter;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        http.csrf(csrf -> csrf.disable());
        http.sessionManagement(session ->
                session.sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED
                ));
        http.authorizeHttpRequests(auth -> auth
                .requestMatchers(

                        // home
                        "/",
                        "/login",
                        "/registration",
                        "/thanks",
                        "/booking",
                        "/thanksforContacting",

                        // state pages
//                "/nagaland",
                        "/meghalaya",
                        "/mizoram",
                        "/sikkim",
                        "/tripura",
                        "/assam",
                        "/arunachal",
                        "/manipur",
                        "/nagaland",

                        // navbar
                        "/book",
                        "/packages",
                        "/gallery",
                        "/contact",
                        "/service",
                        "/review",

                        // misc
                        "/new",

                        //static
                        "/WEB-INF/**",
                        "/resources/**"
                ).permitAll()
                .requestMatchers(
                        //itinerary
                        "/agartala",
                        "/aizawl",
                        "/cherapunjee",
                        "/dawki",
                        "/kaziranga",
                        "/kohima",
                        "/loktak",
                        "/mawlynnong",
                        "/selapass",
                        "/tawang",
                        "/tsomgo",
                        "/umiam"
                ).permitAll()
                .requestMatchers(
                        //payment
                        "/payment",
                        "/pay",
                        "/pay/success",
                        "/pay/cancel"

                ).permitAll()
                .requestMatchers(
                        "/search"
                ).permitAll()
                .requestMatchers(
                        "/auth/**"
                ).permitAll()
                .anyRequest().permitAll()
        );

//        http.addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class);





//        http.formLogin(form -> form
//                .loginPage("/login")
//                .permitAll()
//        );



        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

//    @Bean
//    public UserDetailsService getUserDetailsService() {
//        UserDetails user1= User.withUsername("Rohit")
//                .password(passwordEncoder().encode("55555"))
//                .roles("ADMIN")
//                .build();
//        return new InMemoryUserDetailsManager(user1);
//    }


}
