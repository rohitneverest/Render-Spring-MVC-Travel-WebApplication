package com.example.travelease.controller;



import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Users;
import jakarta.servlet.http.HttpSession;
import org.antlr.v4.runtime.misc.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;



@Controller
public class HomeController {




    @RequestMapping("/")
    public String index(){
        return "index";
    }




// State

    @GetMapping("nagaland")
    public String nagaland(){
        return "State/Nagaland";
    }

    @GetMapping("meghalaya")
    public String meghalaya(){
        return "State/Meghalaya";
    }
    @GetMapping("mizoram")
    public String mizoram(){
        return "State/Mizoram";
    }
    @GetMapping("sikkim")
    public String sikkim(){
        return "State/Sikkim";
    }
    @GetMapping("tripura")
    public String tripura(){
        return "State/Tripura";
    }
    @GetMapping("assam")
    public String assam(){
        return "State/Assam";
    }
    @GetMapping("arunachal")
    public String arunachal(){
        return "State/Arunachal";
    }
    @GetMapping("manipur")
    public String manipur(){
        return "State/Manipur";
    }


//Navbar

    @GetMapping("/book")
    public String book(HttpSession session, Model model){

        Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){

            model.addAttribute(
                    "loginError",
                    "Please login to access booking.");

            model.addAttribute("showLogin", true);

            return "index";
        }

        return "Navbar/book";
    }
    @GetMapping("packages")
    public String packages(){
        return "Navbar/packages";
    }

    @GetMapping("gallery")
    public String gallery(){
        return "Navbar/gallery";
    }

    @GetMapping("contact")
    public String contact(){
        return "Navbar/contact";
    }
    @GetMapping("service")
    public String service(){
        return "Navbar/service";
    }
    @GetMapping("review")
    public String review(){
        return "Navbar/review";
    }



// validation

    @RequestMapping("thanks")
    public String thanks(String name, String email, String message, HttpSession session){
        session.setAttribute("name",name);
        return "Validation/reviewReceived";
    }

    @RequestMapping("booking")
    public String booking(){
        return "Validation/bookThanks";
    }

    @RequestMapping("thanksforContacting")
    public String contactThanks(){
        return "Validation/contactThanks";
    }







    @GetMapping("new")
    public String mew(){
        return "1new";
    }





}
