package com.example.travelease.service;

import com.example.travelease.model.Day;
import com.example.travelease.model.Itinerary;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ItineraryService {

    private final Map<String, Itinerary> itineraries =
            Map.ofEntries(

                    Map.entry("agartala",
                            new Itinerary(
                                    "Agartala & Ujjayanta Palace",
                                    "2-day curated travel experience through royal heritage, temples, and lakes of Tripura.",
                                    "2 Days",
                                    "Agartala, Tripura",
                                    "Heritage + Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Royal Agartala",
                                                    "Explore Ujjayanta Palace and Neermahal floating palace."
                                            ),
                                            new Day(
                                                    "Day 2 — Temples & Culture",
                                                    "Visit Tripura Sundari Temple and local markets."
                                            )
                                    )
                            )
                    ),

                    Map.entry("aizawl",
                            new Itinerary(
                                    "Aizawl City Tour",
                                    "Explore the beautiful city of Aizawl and experience its rich culture and scenic beauty.",
                                    "2 Days",
                                    "Aizawl, Mizoram",
                                    "Culture + Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival & Local Sightseeing",
                                                    "Visit Mizoram State Museum, Solomon's Temple and Durtlang Hills."
                                            ),
                                            new Day(
                                                    "Day 2 — Reiek & Bara Bazar",
                                                    "Explore Reiek village and shop at Bara Bazar."
                                            )
                                    )
                            )
                    ),

                    Map.entry("cherrapunji",
                            new Itinerary(
                                    "Cherrapunji Adventure",
                                    "Explore waterfalls, caves and living root bridges in one of the wettest places on Earth.",
                                    "3 Days",
                                    "Cherrapunji, Meghalaya",
                                    "Adventure + Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival & Sightseeing",
                                                    "Visit Nohkalikai Falls, Mawsmai Caves and Thangkharang Park."
                                            ),
                                            new Day(
                                                    "Day 2 — Root Bridge Trek",
                                                    "Explore the Double Decker Living Root Bridge and Eco Park."
                                            ),
                                            new Day(
                                                    "Day 3 — Waterfalls & Departure",
                                                    "Visit Seven Sisters Falls and Arwah Caves."
                                            )
                                    )
                            )
                    ),

                    Map.entry("dawki",
                            new Itinerary(
                                    "Dawki & Shnongpdeng",
                                    "Crystal-clear river views and exciting adventure activities.",
                                    "3 Days",
                                    "Dawki, Meghalaya",
                                    "Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Boat Ride",
                                                    "Enjoy Umngot River and the India-Bangladesh border."
                                            ),
                                            new Day(
                                                    "Day 2 — Adventure Activities",
                                                    "Experience kayaking, snorkeling, cliff jumping and camping."
                                            ),
                                            new Day(
                                                    "Day 3 — Morning Trek",
                                                    "Enjoy sunrise views and peaceful riverside moments."
                                            )
                                    )
                            )
                    ),

                    Map.entry("kaziranga",
                            new Itinerary(
                                    "Kaziranga Safari",
                                    "Experience wildlife and the famous one-horned rhinoceros.",
                                    "2 Days",
                                    "Kaziranga, Assam",
                                    "Wildlife",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Jungle Safari",
                                                    "Enjoy an exciting jeep safari through Kaziranga."
                                            ),
                                            new Day(
                                                    "Day 2 — Elephant Safari",
                                                    "Visit Orchid Park and experience elephant safari."
                                            )
                                    )
                            )
                    ),

                    Map.entry("kohima",
                            new Itinerary(
                                    "Kohima & War Cemetery",
                                    "Discover the history and beauty of Nagaland.",
                                    "2 Days",
                                    "Kohima, Nagaland",
                                    "History + Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Kohima Sightseeing",
                                                    "Visit Kisama Heritage Village and State Museum."
                                            ),
                                            new Day(
                                                    "Day 2 — War Cemetery",
                                                    "Explore the cemetery and Kohima Cathedral."
                                            )
                                    )
                            )
                    ),

                    Map.entry("loktak",
                            new Itinerary(
                                    "Loktak Lake & Phumdis",
                                    "Discover floating islands and breathtaking lake views.",
                                    "2 Days",
                                    "Manipur",
                                    "Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Boating Experience",
                                                    "Explore Phumdis and fishing communities."
                                            ),
                                            new Day(
                                                    "Day 2 — National Park",
                                                    "Visit Keibul Lamjao National Park and Sendra Island."
                                            )
                                    )
                            )
                    ),

                    Map.entry("mawlynnong",
                            new Itinerary(
                                    "Mawlynnong - Asia's Cleanest Village",
                                    "Experience the beauty of Asia's cleanest village.",
                                    "2 Days",
                                    "Meghalaya",
                                    "Village Tourism",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Village Exploration",
                                                    "Visit Sky Walk and explore the clean village."
                                            ),
                                            new Day(
                                                    "Day 2 — Root Bridge",
                                                    "Visit the Living Root Bridge and enjoy nature."
                                            )
                                    )
                            )
                    ),

                    Map.entry("selapass",
                            new Itinerary(
                                    "Sela Pass & Lake",
                                    "Snow-covered Himalayan beauty and high-altitude lakes.",
                                    "2 Days",
                                    "Arunachal Pradesh",
                                    "Mountain Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Sela Pass",
                                                    "Visit Sela Lake and enjoy mountain views."
                                            ),
                                            new Day(
                                                    "Day 2 — Attractions",
                                                    "Explore Jaswant Garh and Nuranang Falls."
                                            )
                                    )
                            )
                    ),

                    Map.entry("tawang",
                            new Itinerary(
                                    "Tawang Monastery",
                                    "Explore spiritual and scenic beauty in Arunachal Pradesh.",
                                    "4 Days",
                                    "Tawang, Arunachal Pradesh",
                                    "Spiritual + Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival",
                                                    "Visit War Memorial and local market."
                                            ),
                                            new Day(
                                                    "Day 2 — Monastery",
                                                    "Explore Tawang Monastery and nunneries."
                                            ),
                                            new Day(
                                                    "Day 3 — Lakes & Border",
                                                    "Visit Madhuri Lake and Bum La Pass."
                                            ),
                                            new Day(
                                                    "Day 4 — Departure",
                                                    "Explore Urgelling Monastery and local villages."
                                            )
                                    )
                            )
                    ),

                    Map.entry("tsomgo",
                            new Itinerary(
                                    "Tsomgo Lake & Nathula Pass",
                                    "High-altitude lakes and border experiences.",
                                    "2 Days",
                                    "Sikkim",
                                    "Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Tsomgo Lake",
                                                    "Enjoy yak rides and lake views."
                                            ),
                                            new Day(
                                                    "Day 2 — Nathula Pass",
                                                    "Visit Baba Mandir and the border pass."
                                            )
                                    )
                            )
                    ),

                    Map.entry("umiam",
                            new Itinerary(
                                    "Umiam Lake Retreat",
                                    "Relax and enjoy nature near Shillong.",
                                    "2 Days",
                                    "Shillong, Meghalaya",
                                    "Relaxation",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Lake Activities",
                                                    "Enjoy boating, kayaking and sunset views."
                                            ),
                                            new Day(
                                                    "Day 2 — Nature Walk",
                                                    "Morning walk and scenic viewpoints."
                                            )
                                    )
                            )
                    )
            );

    public Itinerary getItinerary(String slug) {
        return itineraries.get(slug);
    }
}