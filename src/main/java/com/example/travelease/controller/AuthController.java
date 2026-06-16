package com.example.travelease.controller;

import com.example.travelease.DTO.LoginResponseDTO;
import com.example.travelease.Repo.UsersRepo;
import com.example.travelease.model.Users;
import com.example.travelease.service.AuthService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/auth")
public class AuthController {




    Users tempUser = new Users();
    @Autowired
    UsersRepo usersRepo;

    //FORM

    @Autowired
    private PasswordEncoder encoder;

    @PostMapping("/register")
    public String registration(String Rname, String Remail, String Rpassword, Model model){

//repo.findall()
//  repo.findById(id)
// Optional<Users> u=usersRepo.findById(3)
//  syso(u)
//        or
//syso(u.orElse(new Student() )

// repo.save(obj)7
//repo.delete(obj)
//repo.deleteById(5)



        tempUser.setUsername(Remail);

        tempUser.setPassword(encoder.encode(Rpassword));

        model.addAttribute("name", Rname);
        model.addAttribute("email", Remail);

        Optional<Users> user=usersRepo.findByUsername(Remail);
        if(user.isEmpty()){
            usersRepo.save(tempUser);
            return "Validation/success";
        }
        else {

            return "Validation/alreadyExist";
        }
    }

    @Autowired
    private AuthService authService;





    @PostMapping("signin")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session,
                        Model model) {

        try {

            Authentication authentication =
                    authService.login(email,password);

            SecurityContextHolder
                    .getContext()
                    .setAuthentication(authentication);

            session.setAttribute("loggedIn", true);
            session.setAttribute("email", email);



            return "redirect:/";

        } catch(Exception e) {

            model.addAttribute(
                    "loginError",
                    "Invalid email or password");

            model.addAttribute("showLogin", true);

            return "index";
        }
    }

    @GetMapping("/profile")
    public String profile(HttpSession session,
                          Model model) {

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }

        model.addAttribute(
                "email",
                session.getAttribute("email"));

        return "Auth/profile";
    }


    @GetMapping("/logout")
    public String logout(HttpSession session){

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }

        session.invalidate();

        return "redirect:/";
    }


//editing profile

    @GetMapping("/edit-profile")
    public String editProfilePage(HttpSession session, Model model){

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }


        String email = (String) session.getAttribute("email");

        Optional<Users> user = usersRepo.findByUsername(email);

        if(user.isPresent()){
            model.addAttribute("user", user.get());
        }

        return "Auth/editProfile";
    }

    @PostMapping("/edit-profile")
    public String updateProfile(@RequestParam String newEmail,
                                HttpSession session){

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }

        String email = (String) session.getAttribute("email");

        Optional<Users> userOpt = usersRepo.findByUsername(email);

        if(userOpt.isPresent()){

            Users user = userOpt.get();
            user.setUsername(newEmail);


            usersRepo.save(user);
            session.setAttribute("email",newEmail);
        }

        return "redirect:/auth/profile";
    }

//change password

    @GetMapping("/change-password")
    public String changePasswordPage(HttpSession session){

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }
        return "Auth/changePassword";
    }

    @PostMapping("/change-password")
    public String changePassword(
            @RequestParam String oldPassword,
            @RequestParam String newPassword,
            HttpSession session,
            Model model){

        Boolean loggedIn =
                (Boolean) session.getAttribute("loggedIn");

        if(loggedIn == null || !loggedIn){
            return "redirect:/";
        }

        String email = (String) session.getAttribute("email");

        Optional<Users> userOpt = usersRepo.findByUsername(email);

        if(userOpt.isPresent()){

            Users user = userOpt.get();

            if(!encoder.matches(oldPassword,user.getPassword())){

                model.addAttribute("error",
                        "Old password is incorrect");

                return "Auth/changePassword";
            }

            user.setPassword(
                    encoder.encode(newPassword)
            );

            usersRepo.save(user);

            model.addAttribute("success",
                    "Password updated successfully");
        }

        return "Auth/changePassword";
    }


}
