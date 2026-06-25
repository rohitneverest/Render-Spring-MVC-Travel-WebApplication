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
                    ),

                    Map.entry("hornbill",
                            new Itinerary(
                                    "Hornbill Festival Experience",
                                    "Experience the vibrant cultural festival of Nagaland.",
                                    "3 Days",
                                    "Kisama, Nagaland",
                                    "Culture + Festival",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival at Kisama",
                                                    "Visit festival grounds and witness traditional performances."
                                            ),
                                            new Day(
                                                    "Day 2 — Cultural Events",
                                                    "Enjoy tribal dances, local cuisine and handicraft exhibitions."
                                            ),
                                            new Day(
                                                    "Day 3 — Heritage Tour",
                                                    "Explore nearby villages and local markets."
                                            )
                                    )
                            )
                    ),

                    Map.entry("dzukou",
                            new Itinerary(
                                    "Dzukou Valley Trek",
                                    "Trek through the famous Valley of Flowers of Northeast India.",
                                    "2 Days",
                                    "Nagaland",
                                    "Adventure Trek",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Valley Trek",
                                                    "Trek through forests and reach Dzukou Valley."
                                            ),
                                            new Day(
                                                    "Day 2 — Sunrise & Return",
                                                    "Enjoy sunrise views and descend back."
                                            )
                                    )
                            )
                    ),

                    Map.entry("mokokchung",
                            new Itinerary(
                                    "Mokokchung Heritage Tour",
                                    "Discover Ao Naga traditions and hill landscapes.",
                                    "3 Days",
                                    "Mokokchung, Nagaland",
                                    "Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival",
                                                    "Visit local markets and town viewpoints."
                                            ),
                                            new Day(
                                                    "Day 2 — Village Exploration",
                                                    "Explore traditional Ao villages."
                                            ),
                                            new Day(
                                                    "Day 3 — Cultural Experience",
                                                    "Experience local food and customs."
                                            )
                                    )
                            )
                    ),

                    Map.entry("ziro",
                            new Itinerary(
                                    "Ziro Valley Eco Tour",
                                    "Explore rice fields, tribal villages and beautiful valleys.",
                                    "3 Days",
                                    "Ziro, Arunachal Pradesh",
                                    "Nature + Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Valley Arrival",
                                                    "Visit scenic viewpoints and local markets."
                                            ),
                                            new Day(
                                                    "Day 2 — Apatani Villages",
                                                    "Explore tribal villages and paddy fields."
                                            ),
                                            new Day(
                                                    "Day 3 — Nature Walk",
                                                    "Enjoy eco trails and photography."
                                            )
                                    )
                            )
                    ),

                    Map.entry("bomdila",
                            new Itinerary(
                                    "Bomdila & Dirang Tour",
                                    "Discover monasteries and Himalayan landscapes.",
                                    "3 Days",
                                    "Arunachal Pradesh",
                                    "Mountain + Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Bomdila",
                                                    "Visit Bomdila Monastery and viewpoints."
                                            ),
                                            new Day(
                                                    "Day 2 — Dirang Valley",
                                                    "Explore Dirang Monastery and hot springs."
                                            ),
                                            new Day(
                                                    "Day 3 — Local Sightseeing",
                                                    "Visit villages and scenic locations."
                                            )
                                    )
                            )
                    ),

                    Map.entry("majuli",
                            new Itinerary(
                                    "Majuli Island Getaway",
                                    "Experience the world's largest river island.",
                                    "3 Days",
                                    "Majuli, Assam",
                                    "Culture + Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Ferry Journey",
                                                    "Travel to Majuli and explore nearby satras."
                                            ),
                                            new Day(
                                                    "Day 2 — Cultural Tour",
                                                    "Visit monasteries and local villages."
                                            ),
                                            new Day(
                                                    "Day 3 — Island Exploration",
                                                    "Enjoy cycling and river views."
                                            )
                                    )
                            )
                    ),

                    Map.entry("guwahati",
                            new Itinerary(
                                    "Guwahati & Kamakhya Temple",
                                    "Explore Assam's largest city and spiritual attractions.",
                                    "2 Days",
                                    "Guwahati, Assam",
                                    "Spiritual + City Tour",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Temple Visit",
                                                    "Visit Kamakhya Temple and Umananda Island."
                                            ),
                                            new Day(
                                                    "Day 2 — City Tour",
                                                    "Explore Assam State Museum and Brahmaputra riverfront."
                                            )
                                    )
                            )
                    ),

                    Map.entry("tea",
                            new Itinerary(
                                    "Tea Garden Experience",
                                    "Discover Assam's famous tea estates.",
                                    "2 Days",
                                    "Assam",
                                    "Nature + Plantation",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Tea Estate Visit",
                                                    "Walk through tea gardens and factories."
                                            ),
                                            new Day(
                                                    "Day 2 — Tea Tasting",
                                                    "Experience tea tasting sessions and local culture."
                                            )
                                    )
                            )
                    ),

                    Map.entry("imphal",
                            new Itinerary(
                                    "Imphal & Kangla Fort",
                                    "Discover the history and culture of Manipur.",
                                    "2 Days",
                                    "Imphal, Manipur",
                                    "History + Culture",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Kangla Fort",
                                                    "Visit the historic Kangla Fort and museums."
                                            ),
                                            new Day(
                                                    "Day 2 — City Attractions",
                                                    "Explore local markets and memorials."
                                            )
                                    )
                            )
                    ),

                    Map.entry("ukhrul",
                            new Itinerary(
                                    "Ukhrul Valley Trek",
                                    "Adventure through scenic hills and valleys.",
                                    "3 Days",
                                    "Ukhrul, Manipur",
                                    "Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival",
                                                    "Explore local villages and viewpoints."
                                            ),
                                            new Day(
                                                    "Day 2 — Trekking",
                                                    "Trek through scenic hills and forests."
                                            ),
                                            new Day(
                                                    "Day 3 — Departure",
                                                    "Enjoy sunrise views before returning."
                                            )
                                    )
                            )
                    ),

                    Map.entry("keibul",
                            new Itinerary(
                                    "Keibul Lamjao Safari",
                                    "Visit the world's only floating national park.",
                                    "1 Day",
                                    "Manipur",
                                    "Wildlife",
                                    List.of(
                                            new Day(
                                                    "Day 1 — National Park",
                                                    "Explore the floating park and spot Sangai deer."
                                            )
                                    )
                            )
                    ),

                    Map.entry("vantawng",
                            new Itinerary(
                                    "Vantawng Falls Tour",
                                    "Visit Mizoram's highest waterfall.",
                                    "2 Days",
                                    "Mizoram",
                                    "Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Waterfall Visit",
                                                    "Explore Vantawng Falls and viewpoints."
                                            ),
                                            new Day(
                                                    "Day 2 — Scenic Drive",
                                                    "Visit nearby villages and forests."
                                            )
                                    )
                            )
                    ),

                    Map.entry("reiek",
                            new Itinerary(
                                    "Reiek Tlang Trek",
                                    "A short scenic trek near Aizawl.",
                                    "1 Day",
                                    "Mizoram",
                                    "Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Trekking",
                                                    "Trek to Reiek peak and enjoy panoramic views."
                                            )
                                    )
                            )
                    ),

                    Map.entry("phawngpui",
                            new Itinerary(
                                    "Phawngpui Blue Mountain",
                                    "Explore Mizoram's highest peak.",
                                    "3 Days",
                                    "Mizoram",
                                    "Mountain Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival",
                                                    "Reach the base camp and explore surroundings."
                                            ),
                                            new Day(
                                                    "Day 2 — Summit Trek",
                                                    "Trek to the summit and enjoy mountain views."
                                            ),
                                            new Day(
                                                    "Day 3 — Return",
                                                    "Descend and visit nearby villages."
                                            )
                                    )
                            )
                    ),

                    Map.entry("gangtok",
                            new Itinerary(
                                    "Gangtok & Rumtek Monastery",
                                    "Discover Sikkim's capital and monasteries.",
                                    "3 Days",
                                    "Gangtok, Sikkim",
                                    "Culture + Nature",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Gangtok Tour",
                                                    "Visit MG Road and local attractions."
                                            ),
                                            new Day(
                                                    "Day 2 — Rumtek Monastery",
                                                    "Explore the monastery and viewpoints."
                                            ),
                                            new Day(
                                                    "Day 3 — Sightseeing",
                                                    "Visit nearby waterfalls and gardens."
                                            )
                                    )
                            )
                    ),

                    Map.entry("yuksom",
                            new Itinerary(
                                    "Yuksom & Kanchenjunga Trek",
                                    "Experience Himalayan trekking adventures.",
                                    "5 Days",
                                    "Sikkim",
                                    "Trekking",
                                    List.of(
                                            new Day("Day 1 — Arrival", "Reach Yuksom and prepare for trekking."),
                                            new Day("Day 2 — Trek Start", "Begin the trekking route."),
                                            new Day("Day 3 — Mountain Camps", "Enjoy Himalayan scenery."),
                                            new Day("Day 4 — Trekking", "Continue through forests and valleys."),
                                            new Day("Day 5 — Return", "Return to Yuksom.")
                                    )
                            )
                    ),

                    Map.entry("lachung",
                            new Itinerary(
                                    "Lachung & Yumthang Valley",
                                    "Snow valleys and beautiful mountain landscapes.",
                                    "3 Days",
                                    "North Sikkim",
                                    "Nature + Adventure",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Lachung",
                                                    "Reach Lachung and explore the village."
                                            ),
                                            new Day(
                                                    "Day 2 — Yumthang Valley",
                                                    "Visit Yumthang Valley and hot springs."
                                            ),
                                            new Day(
                                                    "Day 3 — Return",
                                                    "Enjoy mountain views during the return journey."
                                            )
                                    )
                            )
                    ),

                    Map.entry("neermahal",
                            new Itinerary(
                                    "Neermahal & Rudrasagar Lake",
                                    "Visit Tripura's famous lake palace.",
                                    "1 Day",
                                    "Tripura",
                                    "Heritage",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Palace Tour",
                                                    "Enjoy boat rides and explore Neermahal Palace."
                                            )
                                    )
                            )
                    ),

                    Map.entry("unakoti",
                            new Itinerary(
                                    "Unakoti Rock Carvings",
                                    "Explore ancient rock sculptures and temples.",
                                    "2 Days",
                                    "Tripura",
                                    "History",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Rock Sculptures",
                                                    "Visit the ancient carvings and temples."
                                            ),
                                            new Day(
                                                    "Day 2 — Local Sightseeing",
                                                    "Explore nearby attractions and markets."
                                            )
                                    )
                            )
                    ),

                    Map.entry("jampui",
                            new Itinerary(
                                    "Jampui Hills & Orange Festival",
                                    "Enjoy hills, orange orchards and festivals.",
                                    "3 Days",
                                    "Tripura",
                                    "Nature + Festival",
                                    List.of(
                                            new Day(
                                                    "Day 1 — Arrival",
                                                    "Explore hill viewpoints and villages."
                                            ),
                                            new Day(
                                                    "Day 2 — Orange Festival",
                                                    "Experience local culture and festivities."
                                            ),
                                            new Day(
                                                    "Day 3 — Departure",
                                                    "Enjoy sunrise views before returning."
                                            )
                                    )
                            )
                    )




            );

    public Itinerary getItinerary(String slug) {
        return itineraries.get(slug);
    }
}