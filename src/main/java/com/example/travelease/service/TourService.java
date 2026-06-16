package com.example.travelease.service;



import com.example.travelease.Repo.TourRepository;
import com.example.travelease.model.Tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TourService {


    @Autowired
    private TourRepository repo;



    // ---------------------------
    //  DUMMY DATA (NORTH EAST INDIA)
    // ---------------------------
    public List<Tour> getDummyTours() {

        List<Tour> list = new ArrayList<>();

// MEGHALAYA
        list.add(new Tour("Cherrapunji Adventure - 3 Days", "Explore caves, waterfalls, and lush valleys.", "Meghalaya"));
        list.add(new Tour("Umiam Lake Retreat - 2 Days", "Relax near the serene Umiam Lake.", "Meghalaya"));
        list.add(new Tour("Dawki & Shnongpdeng - 3 Days", "Crystal-clear river boating & adventure sports.", "Meghalaya"));
        list.add(new Tour("Mawlynnong - Asia's Cleanest Village - 2 Days", "Visit the cleanest village in Asia.", "Meghalaya"));

// NAGALAND
        list.add(new Tour("Kohima & War Cemetery - 2 Days", "Historic WWII memorial and hill views.", "Nagaland"));
        list.add(new Tour("Hornbill Festival - 3 Days", "Experience Nagaland’s largest cultural festival.", "Nagaland"));
        list.add(new Tour("Dzukou Valley Trek - 2 Days", "Trek across the Valley of Flowers of the NE.", "Nagaland"));
        list.add(new Tour("Mokokchung & Ao Naga Heritage - 3 Days", "Learn about Ao Naga culture.", "Nagaland"));

// ARUNACHAL
        list.add(new Tour("Tawang Monastery - 4 Days", "Visit India’s largest monastery.", "Arunachal Pradesh"));
        list.add(new Tour("Sela Pass & Lake - 2 Days", "Snowy landscapes & lakes.", "Arunachal Pradesh"));
        list.add(new Tour("Ziro Valley Eco-Tour - 3 Days", "Explore the scenic Ziro Valley.", "Arunachal Pradesh"));
        list.add(new Tour("Bomdila & Dirang - 3 Days", "Monasteries & mountain towns.", "Arunachal Pradesh"));

// ASSAM
        list.add(new Tour("Kaziranga Safari - 2 Days", "Jeep safari to see one-horned rhinos.", "Assam"));
        list.add(new Tour("Majuli Island Getaway - 3 Days", "Explore the world’s largest river island.", "Assam"));
        list.add(new Tour("Guwahati & Kamakhya Temple - 2 Days", "Famous pilgrimage & city tour.", "Assam"));
        list.add(new Tour("Tea Garden Experience - 2 Days", "Walk through Assam's tea estates.", "Assam"));

// MANIPUR
        list.add(new Tour("Loktak Lake & Phumdis - 2 Days", "Floating islands & boat rides.", "Manipur"));
        list.add(new Tour("Imphal & Kangla Fort - 2 Days", "Historic fort & city landmarks.", "Manipur"));
        list.add(new Tour("Ukhrul Valley Trek - 3 Days", "Adventure trek through scenic Ukhrul.", "Manipur"));
        list.add(new Tour("Keibul Lamjao Safari - 1 Day", "World’s only floating national park.", "Manipur"));

// MIZORAM
        list.add(new Tour("Aizawl City Tour - 2 Days", "Explore Aizawl’s culture & food.", "Mizoram"));
        list.add(new Tour("Vantawng Falls & Serchhip - 2 Days", "Tall waterfalls & scenic drives.", "Mizoram"));
        list.add(new Tour("Reiek Tlang Trekking - 1 Day", "Short but beautiful trek.", "Mizoram"));
        list.add(new Tour("Phawngpui Blue Mountain - 3 Days", "Mizoram's highest peak.", "Mizoram"));

// SIKKIM
        list.add(new Tour("Tsomgo Lake & Nathula Pass - 2 Days", "High-altitude lake & Indo-China border.", "Sikkim"));
        list.add(new Tour("Gangtok & Rumtek Monastery - 3 Days", "Capital city tour & monasteries.", "Sikkim"));
        list.add(new Tour("Yuksom & Kanchenjunga Trek - 5 Days", "Trek to the Himalayas.", "Sikkim"));
        list.add(new Tour("Lachung & Yumthang Valley - 3 Days", "Snow valley & hot springs.", "Sikkim"));

// TRIPURA
        list.add(new Tour("Agartala & Ujjayanta Palace - 2 Days", "City palace, temples & history.", "Tripura"));
        list.add(new Tour("Neermahal & Rudrasagar Lake - 1 Day", "Lake palace in the middle of a lake.", "Tripura"));
        list.add(new Tour("Unakoti Rock Carvings - 2 Days", "Ancient rock carvings.", "Tripura"));
        list.add(new Tour("Jampui Hills & Orange Festival - 3 Days", "Hill views & cultural fairs.", "Tripura"));

        return list;
    }

    // ---------------------------
    // SEARCH LOGIC
    // ---------------------------

    public List<Tour> search(String keyword) {

        if (keyword == null || keyword.trim().isEmpty()) {
            return new ArrayList<>();
        }

        keyword = keyword.toLowerCase();

        // 1️⃣ Use DB first
        List<Tour> dbResults = repo.findByNameContainingIgnoreCase(keyword);
        if (!dbResults.isEmpty()) {
            return dbResults;
        }

        // 2️⃣ If DB empty → fallback to dummy data
        List<Tour> dummy = getDummyTours();
        List<Tour> filtered = new ArrayList<>();

        for (Tour t : dummy) {
            if (t.getName().toLowerCase().contains(keyword) ||
                    t.getDescription().toLowerCase().contains(keyword) ||
                    t.getState().toLowerCase().contains(keyword) )  {
                filtered.add(t);
            }
        }

        // 3️⃣ STATE SEARCH (returns all state’s packages)
        if (filtered.isEmpty()) {
            if (keyword.contains("meghalaya")) return filterByState(dummy, "meghalaya");
            if (keyword.contains("nagaland")) return filterByState(dummy, "nagaland");
            if (keyword.contains("arunachal")) return filterByState(dummy, "arunachal");
            if (keyword.contains("assam")) return filterByState(dummy, "assam");
            if (keyword.contains("manipur")) return filterByState(dummy, "manipur");
            if (keyword.contains("mizoram")) return filterByState(dummy, "mizoram");
            if (keyword.contains("sikkim")) return filterByState(dummy, "sikkim");
            if (keyword.contains("tripura")) return filterByState(dummy, "tripura");
        }

        return filtered;
    }

    private List<Tour> filterByState(List<Tour> all, String stateKeyword) {
        List<Tour> result = new ArrayList<>();
        for (Tour t : all) {
            if (t.getName().toLowerCase().contains(stateKeyword.toLowerCase())) {
                result.add(t);
            }
        }
        return result;
    }
}

