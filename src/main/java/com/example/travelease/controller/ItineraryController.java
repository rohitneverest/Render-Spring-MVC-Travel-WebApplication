package com.example.travelease.controller;






import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Users;
import jakarta.servlet.http.HttpSession;
import org.antlr.v4.runtime.misc.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Optional;


@Controller
public class ItineraryController {

    @GetMapping("agartala")
    public String agartala(){
        return "itinerary/agartala";
    }
    @GetMapping("aizawl")
    public String aizawl(){
        return "itinerary/aizawl";
    }
    @GetMapping("cherapunjee")
    public String cherapunjee(){
        return "itinerary/cherapunjee";
    }
    @GetMapping("dawki")
    public String dawki(){
        return "itinerary/dawki";
    }
    @GetMapping("kaziranga")
    public String kaziranga(){
        return "itinerary/kaziranga";
    }
    @GetMapping("kohima")
    public String kohima(){
        return "itinerary/kohima";
    }
    @GetMapping("loktak")
    public String loktak(){
        return "itinerary/loktak";
    }
    @GetMapping("mawlynnong")
    public String mawlynnong(){
        return "itinerary/mawlynnong";
    }
    @GetMapping("selapass")
    public String selapass(){
        return "itinerary/selapass";
    }
    @GetMapping("tawang")
    public String tawang(){
        return "itinerary/tawang";
    }
    @GetMapping("tsomgo")
    public String tsomgo(){
        return "itinerary/tsomgo";
    }
    @GetMapping("umiam")
    public String umiam(){
        return "itinerary/umiam";
    }
}
