package com.example.travelease.DTO;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginResponseDTO {

    Long id ;

    String jwt;


}
