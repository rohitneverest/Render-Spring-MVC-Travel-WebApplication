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
        list.add(new Tour(
                "Cherrapunji Adventure - 3 Days",
                "Explore caves, waterfalls, and lush valleys.",
                "Meghalaya",
                "cherrapunji",
                "https://www.indiantempletour.com/blogs/wp-content/uploads/2023/05/Cherrapunji.jpg"));

        list.add(new Tour(
                "Umiam Lake Retreat - 2 Days",
                "Relax near the serene Umiam Lake.",
                "Meghalaya",
                "umiam",
                "https://i0.wp.com/travelwithabong.com/wp-content/uploads/2019/12/IMG_20190702_110456.jpg?fit=1024%2C768&ssl=1"));

        list.add(new Tour(
                "Dawki & Shnongpdeng - 3 Days",
                "Crystal-clear river boating & adventure sports.",
                "Meghalaya",
                "dawki",
                "https://travellingslacker.com/wp-content/uploads/2020/03/Shnopdeng-7.jpg"));

        list.add(new Tour(
                "Mawlynnong - Asia's Cleanest Village - 2 Days",
                "Visit the cleanest village in Asia.",
                "Meghalaya",
                "mawlynnong",
                "https://travelentice.com/wp-content/uploads/2020/07/Mawlynong-The-Cleanest-Village-in-Asia.jpg"));


// NAGALAND
        list.add(new Tour(
                "Kohima & War Cemetery - 2 Days",
                "Historic WWII memorial and hill views.",
                "Nagaland",
                "kohima",
                "https://archive.cloud.cwgc.org/images-cemetery-images-prod/2058100/kohima2003-2.jpg"));

        list.add(new Tour(
                "Hornbill Festival - 3 Days",
                "Experience Nagaland’s largest cultural festival.",
                "Nagaland",
                "hornbill",
                "https://thumbs.dreamstime.com/b/hornbill-festival-nagaland-india-9974248.jpg"));

        list.add(new Tour(
                "Dzukou Valley Trek - 2 Days",
                "Trek across the Valley of Flowers of the NE.",
                "Nagaland",
                "dzukou",
                "https://monksonwheels.com/wp-content/uploads/2023/03/Nagaland-Tour-Package-Event-Photo.jpg"));

        list.add(new Tour(
                "Mokokchung & Ao Naga Heritage - 3 Days",
                "Learn about Ao Naga culture.",
                "Nagaland",
                "mokokchung",
                "https://static2.tripoto.com/media/filter/tst/img/OgData/1516603698_1515401971_screen_shot_2018_01_08_at_1_27_46_pm_fotor.png"));


// ARUNACHAL
        list.add(new Tour(
                "Tawang Monastery - 4 Days",
                "Visit India’s largest monastery.",
                "Arunachal Pradesh",
                "tawang",
                "https://www.kipepeo.in/blog/wp-content/uploads/2019/07/tawang-monastery-1024x683.jpg"));

        list.add(new Tour(
                "Sela Pass & Lake - 2 Days",
                "Snowy landscapes & lakes.",
                "Arunachal Pradesh",
                "selapass",
                "https://as2.ftcdn.net/v2/jpg/04/27/14/43/1000_F_427144345_u9WSASQWJiVMehKW0TpSXCIePSTAsSLc.jpg"));

        list.add(new Tour(
                "Ziro Valley Eco-Tour - 3 Days",
                "Explore the scenic Ziro Valley.",
                "Arunachal Pradesh",
                "ziro",
                "https://www.ewsholidays.com/wp-content/uploads/2019/10/Ziro-Valley-Lower-Subansiri-Arunachal-Pradesh-North-East-India14.jpg"));

        list.add(new Tour(
                "Bomdila & Dirang - 3 Days",
                "Monasteries & mountain towns.",
                "Arunachal Pradesh",
                "bomdila",
                "https://tourmyodisha.com/wp-content/uploads/2023/02/Dirang-Valley-768x576.jpg"));


// ASSAM
        list.add(new Tour(
                "Kaziranga Safari - 2 Days",
                "Jeep safari to see one-horned rhinos.",
                "Assam",
                "kaziranga",
                "https://www.kaziranganationalpark-india.com/blog/wp-content/uploads/2022/08/kaziranga-tour.jpg"));

        list.add(new Tour(
                "Majuli Island Getaway - 3 Days",
                "Explore the world’s largest river island.",
                "Assam",
                "majuli",
                "https://img.traveltriangle.com/blog/wp-content/uploads/2019/10/shutterstock_1238318665.jpg"));

        list.add(new Tour(
                "Guwahati & Kamakhya Temple - 2 Days",
                "Famous pilgrimage & city tour.",
                "Assam",
                "guwahati",
                "https://res.cloudinary.com/kmadmin/image/upload/v1724234472/kiomoi/Kamakhya_Temple_7389.jpg"));

        list.add(new Tour(
                "Tea Garden Experience - 2 Days",
                "Walk through Assam's tea estates.",
                "Assam",
                "tea",
                "https://www.clubmahindra.com/blog/media/section_images/desktop-a162ee07d367c2a.jpg"));


// MANIPUR
        list.add(new Tour(
                "Loktak Lake & Phumdis - 2 Days",
                "Floating islands & boat rides.",
                "Manipur",
                "loktak",
                "https://img-cdn.thepublive.com/fit-in/1200x675/30-stades/media/media_files/Lh5ArB4uSLpPkcZwRX7O.jpg"));

        list.add(new Tour(
                "Imphal & Kangla Fort - 2 Days",
                "Historic fort & city landmarks.",
                "Manipur",
                "imphal",
                "https://www.gosahin.com/go/p/c/1519475334_Kangla-Fort1.jpg"));

        list.add(new Tour(
                "Ukhrul Valley Trek - 3 Days",
                "Adventure trek through scenic Ukhrul.",
                "Manipur",
                "ukhrul",
                "https://www.gosahin.com/go/p/c/1520524185_Shirui-Kashung-Peak3.jpg"));

        list.add(new Tour(
                "Keibul Lamjao Safari - 1 Day",
                "World’s only floating national park.",
                "Manipur",
                "keibul",
                "https://identyti.com/static/falcon/img/stock/page/saxenaria/356913_Keibul%20Lamjao%20National%20Park%20_1.jpg"));

        // MIZORAM
        list.add(new Tour(
                "Aizawl City Tour - 2 Days",
                "Explore Aizawl’s culture & food.",
                "Mizoram",
                "aizawl",
                "https://www.welcomenri.com/Top-News/image/aizawl_city_by_fekook.jpg"));

        list.add(new Tour(
                "Vantawng Falls & Serchhip - 2 Days",
                "Tall waterfalls & scenic drives.",
                "Mizoram",
                "vantawng",
                "http://image3.mouthshut.com/images/imagesp/l/Vantawng-Falls-Serchhip-925753000s.jpg"));

        list.add(new Tour(
                "Reiek Tlang Trekking - 1 Day",
                "Short but beautiful trek.",
                "Mizoram",
                "reiek",
                "https://curlytales.com/wp-content/uploads/2019/04/mizo.jpg"));

        list.add(new Tour(
                "Phawngpui Blue Mountain - 3 Days",
                "Mizoram's highest peak.",
                "Mizoram",
                "phawngpui",
                "https://www.nativeplanet.com/img/2021/09/phawngpuitlang-1630499363.jpg"));


// SIKKIM
        list.add(new Tour(
                "Tsomgo Lake & Nathula Pass - 2 Days",
                "High-altitude lake & Indo-China border.",
                "Sikkim",
                "tsomgo",
                "https://travelogyindia.b-cdn.net/storage/app/upload/tsomgo-lake-sikkim-lakes-in-northeast-india.png"));

        list.add(new Tour(
                "Gangtok & Rumtek Monastery - 3 Days",
                "Capital city tour & monasteries.",
                "Sikkim",
                "gangtok",
                "https://thumbs.dreamstime.com/b/line-tibetan-monks-front-rumtek-monastery-welcoming-high-level-monk-near-gangtok-sikkim-india-97546058.jpg"));

        list.add(new Tour(
                "Yuksom & Kanchenjunga Trek - 5 Days",
                "Trek to the Himalayas.",
                "Sikkim",
                "yuksom",
                "https://assets.telegraphindia.com/telegraph/4dda21de-923a-47d2-97a8-a2237f613a6f.jpg"));

        list.add(new Tour(
                "Lachung & Yumthang Valley - 3 Days",
                "Snow valley & hot springs.",
                "Sikkim",
                "lachung",
                "https://nomadicweekends.com/blog/wp-content/uploads/2019/02/1510389758_Beautiful_enchanting_Sikkim.jpg-1024x496.jpg"));


// TRIPURA
        list.add(new Tour(
                "Agartala & Ujjayanta Palace - 2 Days",
                "City palace, temples & history.",
                "Tripura",
                "agartala",
                "https://thumbs.dreamstime.com/b/maharaja-radha-kishore-manikya-debbarma-built-ujjayanta-palace-also-known-as-palace-kingdom-tripura-319790085.jpg"));

        list.add(new Tour(
                "Neermahal & Rudrasagar Lake - 1 Day",
                "Lake palace in the middle of a lake.",
                "Tripura",
                "neermahal",
                "https://img-cdn.thepublive.com/fit-in/1280x960/filters:format(webp)/30-stades/media/media_files/nE7cXHzVi1pInLvfqElG.jpg"));

        list.add(new Tour(
                "Unakoti Rock Carvings - 2 Days",
                "Ancient rock carvings.",
                "Tripura",
                "unakoti",
                "https://media-cdn.tripadvisor.com/media/photo-s/15/7a/f1/a0/rock-carvings-of-unakoti.jpg"));

        list.add(new Tour(
                "Jampui Hills & Orange Festival - 3 Days",
                "Hill views & cultural fairs.",
                "Tripura",
                "jampui",
                "https://images.assettype.com/freepressjournal%2Fimport%2F2015%2F07%2Forange-festival-jampui-hbapeyzajblogspotcom.jpg?auto=format%2Ccompress&w=1200"));



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

    public Tour getTourBySlug(String slug) {

        for (Tour tour : getDummyTours()) {
            if (tour.getSlug().equalsIgnoreCase(slug)) {
                return tour;
            }
        }

        return null;
    }
}

