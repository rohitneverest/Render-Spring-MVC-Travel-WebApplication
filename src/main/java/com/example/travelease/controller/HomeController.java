package com.example.travelease.controller;



import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Tour;
import com.example.travelease.model.Users;
import com.example.travelease.service.TourService;
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

    @Autowired
    TourService tourService;


    @GetMapping("/")
    public String index(@CookieValue(value = "rememberEmail", required = false) String rememberedEmail,
                        Model model) {

        model.addAttribute("rememberedEmail",
                rememberedEmail);

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

    @GetMapping({"/book", "/book/{slug}"})
    public String bookTour(
            @PathVariable(required = false) String slug,
            HttpSession session,
            Model model) {

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if (loggedIn == null || !loggedIn) {

            model.addAttribute(
                    "loginError",
                    "Please login to access booking.");

            model.addAttribute("showLogin", true);

            return "index";
        }

        // Only search if slug exists
        if (slug != null && !slug.isEmpty()) {

            Tour tour = tourService.getTourBySlug(slug);

            if (tour != null) {
                model.addAttribute(
                        "selectedTour",
                        tour.getName());
            }
        }


        return "Navbar/book";
    }

    //packages
    @GetMapping("/packages")
    public String packages(Model model) {

        model.addAttribute("tours",
                tourService.getDummyTours());

        return "Navbar/packages";
    }

    //Gallery
    @GetMapping("gallery")
    public String gallery(){
        return "Navbar/gallery";
    }

    //contact
    @GetMapping("contact")
    public String contact(){
        return "Navbar/contact";
    }

    //service
    @GetMapping("service")
    public String service(){
        return "Navbar/service";
    }

    //review
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
