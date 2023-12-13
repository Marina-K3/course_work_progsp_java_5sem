package bsuir_ief_172303_kotova.controllers;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.services.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
//для просто пользователя и админа
public class UserController {
    private final UserService userService;
    private final CountryService countryService;
    private final CityService cityService;

    private final HotelService hotelService;

    private final FlightService flightService;

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

    @GetMapping("/user/{user}")
    @PreAuthorize("hasRole('USER')")
    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("user", user);
        model.addAttribute("userByPrincipal", userService.getUserByPrincipal(principal));
        return "user-info";
    }

    @GetMapping("/user/edit/{user}")
    @PreAuthorize("hasRole('USER')")
    public String userEdit(@PathVariable("user") User user, Model model, Principal principal){
        model.addAttribute("user",user);
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "user-edit";
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
        return "flights";
    }
    @GetMapping("/admin/hotels")
    public  String hotels(Model model){
        model.addAttribute("hotels", hotelService.listHotel());
        return "hotels";
    }

    @GetMapping("/admin/tours")
    public  String tours(Model model){
        return "admin-tours";
    }




    @GetMapping("/admin/addAdmin")
    @PreAuthorize("hasRole('ADMIN')")
    public String addAdmin(Model model,Principal principal){
        model.addAttribute("users",userService.list());
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "add-admin";
    }

    @PostMapping("/admin/createAdmin")
    @PreAuthorize("hasRole('ADMIN')")
    public String createAdmin(User user, Model model){
        if (!userService.createAdmin(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "add-admin";
        }
        return "redirect:/profile";
    }

    @GetMapping("/tour/add")
    @PreAuthorize("hasRole('ADMIN')")
    public String addTour(Model model, Principal principal){
        model.addAttribute("users",userService.list());
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        //model.addAttribute("countries", countryService.listCountry());
        //model.addAttribute("flights",flightService.listFlight());
        return "tour-add";
    }

    @GetMapping("/tour/addCountry")
    @PreAuthorize("hasRole('ADMIN')")
    public String addCountry(Model model, Principal principal){
        model.addAttribute("users",userService.list());
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "tour-addCountry";
    }

    @GetMapping("/tour/addFlight")
    @PreAuthorize("hasRole('ADMIN')")
    public String addFlight(Model model, Principal principal){
        model.addAttribute("users",userService.list());
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        //model.addAttribute("countries",countryService.listCountry());
        return "tour-addFlight";
    }

    @GetMapping("/tour/addHotel")
    @PreAuthorize("hasRole('ADMIN')")
    public String createHotel(Model model, Principal principal){
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        //model.addAttribute("countries",countryService.listCountry());
        return "tour-addHotel";
    }

}
