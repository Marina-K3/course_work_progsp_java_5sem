package bsuir_ief_172303_kotova.controllers;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.services.*;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
//для просто пользователя и админа
public class UserController {
    private final UserService userService;
    private final CountryService countryService;
    private final CityService cityService;

    private final HotelService hotelService;

    private final FlightService flightService;

    private final TourService tourService;

    private final CommentService commentService;

    // общие (авторизация и регистрация(пользователя))
    @GetMapping("/log")
    public String login() {
        return "login";
    }



    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) throws IOException {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с этим email " + user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/";
    }


    @PostMapping("/admin/createUser")
    public String AdminCreateUser(User user, Model model) throws IOException {
        if (userService.createUser(user)) {
            return "redirect:/admin/users";
        }
        return "redirect:/";
    }

    @GetMapping("/profile")
    public String showProfile(Authentication authentication) {
        if (authentication != null && authentication.isAuthenticated()) {
            if (authentication.getAuthorities().stream()
                    .anyMatch(auth -> auth.getAuthority().equals("ROLE_ADMIN"))) {
                return "redirect:/admin/profile";
            } else if (authentication.getAuthorities().stream()
                    .anyMatch(auth -> auth.getAuthority().equals("ROLE_USER"))) {
                return "redirect:/user/profile";
            }
        }
        return "redirect:/login";
    }

    @GetMapping("/admin/profile")
    public String showAdminProfile(Model model, Principal principal) {

        User user = userService.getUserByPrincipal(principal);
        if(user.isActive()){
        model.addAttribute("admin", user);

        return "admin";
        }
        else{
            return "redirect:/";
        }
    }


    @GetMapping("/user/profile")
    public String showUserProfile(Model model, Principal principal) {

        User user = userService.getUserByPrincipal(principal);
        if(user.isActive()){
            model.addAttribute("user", user);

            return "user";
        }
        else{
            return "redirect:/";
        }

    }

    @PostMapping("/editProfile")
    public String profileEdit( Principal principal,
                               @RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("passportNumber") String passNumber,
                               @RequestParam("password") String password,
                               @RequestParam("email") String email,
                               @RequestParam("phone") String numberPhone){
        userService.editUser(principal,firstName, lastName, passNumber, password,email,numberPhone);
        return "redirect:/profile";
    }


// для администратора

    @GetMapping("/admin/users")
    public  String users(Model model){
        model.addAttribute("users", userService.list());
        return "users";
    }

    @GetMapping("/admin/users/ban/{id}")
    public  String userBan(@PathVariable("id") Long id, Model model){
        userService.banUser(id);
        model.addAttribute("users", userService.list());
        return "users";
    }


    @GetMapping("/admin/users/setRole/{id}")
    public  String userSetRole(@PathVariable("id") Long id, Model model){
        userService.setRole(id);
        model.addAttribute("users", userService.list());
        return "users";
    }


    @GetMapping("/admin/users/info/{id}")
    public  String userInfo(@PathVariable("id") Long id, Model model){
        model.addAttribute("user", userService.getUserByID(id));
        return "user-info";
    }


    @GetMapping("/admin/data")
    public  String data(Model model){
        return "data";
    }

    @GetMapping("/admin/locations")
    public  String locations(Model model){
        model.addAttribute("cities", cityService.listCity());
        model.addAttribute("countries", countryService.listCountry());
        return "locations";
    }
    @GetMapping("/admin/flights")
    public  String flights(Model model){
        model.addAttribute("flights", flightService.listFlight());
        model.addAttribute("cities", cityService.listCity());
        return "flights";
    }
    @GetMapping("/admin/hotels")
    public  String hotels(Model model){
        model.addAttribute("hotels", hotelService.listHotel());
        model.addAttribute("cities", cityService.listCity());
        return "hotels";
    }

    @GetMapping("/admin/tours")
    public  String tours(Model model){
        model.addAttribute("tours", tourService.listTour());
        model.addAttribute("flights", flightService.listFlight());
        model.addAttribute("cities", cityService.listCity());
        model.addAttribute("hotels", hotelService.listHotel());

        return "admin-tours";
    }



    @GetMapping("/admin/comments")
    public  String adminComments(Model model){
        model.addAttribute("comments", commentService.listComment());
        return "comments";
    }


    @GetMapping("/user/comments")
    public  String userComments(Model model){
        model.addAttribute("tours", tourService.listTour());
        return "user-comments";
    }



    @GetMapping("/admin/deleteCountry/{id}")
    public String deleteCountry(@PathVariable("id") Long id)
    {
        countryService.deleteCountry(id);
        return "redirect:/admin/locations";
    }
    @GetMapping("/admin/deleteCity/{id}")
    public String deleteCity(@PathVariable("id") Long id)
    {
        cityService.deleteCity(id);
        return "redirect:/admin/locations";
    }

    @PostMapping("/admin/addCountry")
    public String addCountry(@RequestParam("country") String country)
    {
        countryService.saveCountry(country);
        return "redirect:/admin/locations";
    }

    @PostMapping("/admin/addCity")
    public String addCity(
                               @RequestParam("country_in_city") Long country_id,
                               @RequestParam("city") String city
                               ){
        cityService.saveCity(country_id, city);
        return "redirect:/admin/locations";
    }



    @GetMapping("/admin/deleteHotel/{id}")
    public String deleteHotel(@PathVariable("id") Long id)
    {
        hotelService.deleteHotelById(id);
        return "redirect:/admin/hotels";
    }

    @PostMapping("/admin/addHotel")
    public String addHotel(@RequestParam("name") String name,
                           @RequestParam("stars") int starRating,
                           @RequestParam("city") Long city_id)
    {
        hotelService.saveHotel(name, starRating, city_id);
        return "redirect:/admin/hotels";
    }

    @PostMapping("/admin/addFlight")
    public String addFlight(@RequestParam("arrivalCity") String arrivalCity,
                            @RequestParam("arrivalTime") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime arrivalTime,
                            @RequestParam("departureCity")  String departureCity,
                            @RequestParam("departureTime") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime departureTime,
                            @RequestParam("totalSeats") int totalSeats) {

        flightService.saveFlight(arrivalCity, departureCity, arrivalTime, departureTime, totalSeats);
        return "redirect:/admin/flights";
    }


    @GetMapping("/admin/deleteFlight/{id}")
    public String deleteFlight(@PathVariable("id") Long id)
    {
        flightService.deleteFlightById(id);
        return "redirect:/admin/flights";
    }


    @GetMapping("/admin/statistics")
    private String chartCountry(Model model, Principal principal) throws JsonProcessingException {
        List<HashMap<String, Integer>> users = new ArrayList<>();

        HashMap<String, Integer> user1 = new HashMap<>();
        user1.put("User 1", 10);
        users.add(user1);

        HashMap<String, Integer> user2 = new HashMap<>();
        user2.put("User 2", 15);
        users.add(user2);

        HashMap<String, Integer> user3 = new HashMap<>();
        user3.put("User 3", 20);
        users.add(user3);

        HashMap<String, Integer> user4 = new HashMap<>();
        user4.put("User 4", 25);
        users.add(user4);


        List<HashMap<String, Integer>> countries = new ArrayList<>();

        HashMap<String, Integer> country1 = new HashMap<>();
        country1.put("Russia", 5);
        countries.add(country1);

        HashMap<String, Integer> country2 = new HashMap<>();
        country2.put("Germany", 11);
        countries.add(country2);

        HashMap<String, Integer> country3 = new HashMap<>();
        country3.put("Ukraine", 3);
        countries.add(country3);

        HashMap<String, Integer> country4 = new HashMap<>();
        country4.put("Spain", 18);
        countries.add(country4);

        HashMap<String, Integer> country5 = new HashMap<>();
        country5.put("Italy", 22);
        countries.add(country5);


        List<HashMap<String, Integer>> tours = new ArrayList<>();

        HashMap<String, Integer> tour1 = new HashMap<>();
        tour1.put("Moscow", 7);
        tours.add(tour1);

        HashMap<String, Integer> tour2 = new HashMap<>();
        tour2.put("Berlin", 13);
        tours.add(tour2);

        HashMap<String, Integer> tour3 = new HashMap<>();
        tour3.put("Kiev", 21);
        tours.add(tour3);

        HashMap<String, Integer> tour4 = new HashMap<>();
        tour4.put("Madrid", 9);
        tours.add(tour4);

        HashMap<String, Integer> tour5 = new HashMap<>();
        tour5.put("Rome", 17);
        tours.add(tour5);


        List<HashMap<String, Integer>> people = new ArrayList<>();

        HashMap<String, Integer> person1 = new HashMap<>();
        person1.put("Ivanov", 2);
        people.add(person1);

        HashMap<String, Integer> person2 = new HashMap<>();
        person2.put("Petrov", 8);
        people.add(person2);

        HashMap<String, Integer> person3 = new HashMap<>();
        person3.put("Sidorov", 12);
        people.add(person3);

        HashMap<String, Integer> person4 = new HashMap<>();
        person4.put("Smith", 4);
        people.add(person4);

        HashMap<String, Integer> person5 = new HashMap<>();
        person5.put("Jones", 16);
        people.add(person5);


        ObjectMapper mapper = new ObjectMapper();

        String usersJson = mapper.writeValueAsString(users);
        String countriesJson = mapper.writeValueAsString(countries);
        String toursJson = mapper.writeValueAsString(tours);
        String peopleJson = mapper.writeValueAsString(people);

        model.addAttribute("users", usersJson);
        model.addAttribute("countries", countriesJson);
        model.addAttribute("tours", toursJson);
        model.addAttribute("people", peopleJson);

        return "charts";
    }

}
