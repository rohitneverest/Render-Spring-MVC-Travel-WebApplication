package com.example.travelease.model;

import jakarta.persistence.Id;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Scope("prototype")
public class Itinerary {

    @Id
    private int id;


    private String title;
    private String description;
    private String duration;
    private String location;
    private String type;
    private List<Day> days;

    public Itinerary(String title,
                     String description,
                     String duration,
                     String location,
                     String type,
                     List<Day> days) {

        this.title = title;
        this.description = description;
        this.duration = duration;
        this.location = location;
        this.type = type;
        this.days = days;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getDuration() {
        return duration;
    }

    public String getLocation() {
        return location;
    }

    public String getType() {
        return type;
    }

    public List<Day> getDays() {
        return days;
    }
}