package com.example.travelease.service;

import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Users;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
@Slf4j
public class JwtAuthFilter extends OncePerRequestFilter {
//oncePerRequestFilter means --run this filter once for every http request
    @Autowired
    private AuthUtil authUtil;

    @Autowired
    private UsersRepo usersRepository;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        //prints -- incoming request /payment
        logger.info("incoming request "+request.getRequestURI());

        //Reads {  Authorization: Bearer eyrrsyujtdyfughyyydfuh  }
        final String requestTokenHeader=request.getHeader("Authorization");

        //if no authorisation header(no jwt) OR doesn't start with "Bearer"
        //then skip jwt processing and move to the next filter
        if(requestTokenHeader==null || !requestTokenHeader.startsWith("Bearer")){
            filterChain.doFilter(request,response);
            return;
        }

        //Extract jwt
        String token=requestTokenHeader.split("Bearer ")[1];

        //verifying jwt
        //check signature,expiry checked,username extracted
        String userName=authUtil.validateAndGetUsernameFromToken(token);

        //if there is username and authentication doesn't exist
        //then authenticate by storing usernamePasswordAuthenticationToken in securityContextHolder
        if(userName!=null && SecurityContextHolder.getContext().getAuthentication()==null){
            Users user=usersRepository.findByUsername(userName).orElseThrow();
            UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken=new UsernamePasswordAuthenticationToken(user,null,null);
            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
        }

        //else move to the next filter
        filterChain.doFilter(request,response);
    }
}


