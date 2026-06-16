package com.example.travelease.controller;

import com.example.travelease.Repo.TourRepository;
import com.example.travelease.model.Tour;
import com.example.travelease.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SearchController {

    @Autowired
    private TourService tourService;

    @GetMapping("/search")
    public String search(@RequestParam("keyword") String keyword, Model model) {


        List<Tour> results = tourService.search(keyword);

        model.addAttribute("keyword", keyword);
        model.addAttribute("results", results);

        return "SearchResults";  // search.jsp

    }
}


