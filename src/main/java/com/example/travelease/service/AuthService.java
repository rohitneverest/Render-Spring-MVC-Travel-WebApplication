package com.example.travelease.service;

import com.example.travelease.DTO.LoginResponseDTO;
import com.example.travelease.model.Users;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@RequiredArgsConstructor
@Service
public class AuthService {



    private final AuthenticationManager authenticationManager;
    private final AuthUtil authUtil;



    public Authentication login(String username,
                                String password){

        return authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        username,
                        password
                )
        );
    }



//    public LoginResponseDTO login(String username, String password) {
//
//        Authentication authentication=authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(username,password));
////if authenticated it will continue to make jwt
//        Users user=(Users) authentication.getPrincipal();
//
//        String jwtToken=authUtil.generateAcessToken(user);
//        return new LoginResponseDTO(user.getId(),jwtToken);
//    }


}
