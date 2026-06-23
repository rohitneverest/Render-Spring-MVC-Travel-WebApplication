package com.example.travelease.controller;

import com.example.travelease.model.Itinerary;
import com.example.travelease.model.Tour;
import com.example.travelease.service.ItineraryService;
import com.example.travelease.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/itinerary")
public class ItineraryController {

    @Autowired
    private ItineraryService itineraryService;

    @Autowired
    private TourService tourService;

    @GetMapping("/{slug}")
    public String itinerary(@PathVariable String slug,
                            Model model) {

        Itinerary itinerary =
                itineraryService.getItinerary(slug);

        if (itinerary == null) {
            return "redirect:/packages";
        }

        model.addAttribute("title",
                itinerary.getTitle());

        model.addAttribute("description",
                itinerary.getDescription());

        model.addAttribute("duration",
                itinerary.getDuration());

        model.addAttribute("location",
                itinerary.getLocation());

        model.addAttribute("type",
                itinerary.getType());

        model.addAttribute("days",
                itinerary.getDays());


        Tour tour=tourService.getTourBySlug(slug);
        model.addAttribute("tour",tour);

        return "itinerary/itinerary";
    }
}