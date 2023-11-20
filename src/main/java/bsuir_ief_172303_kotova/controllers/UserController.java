package bsuir_ief_172303_kotova.controllers;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
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
   // private final CountryService countryService;
   // private final FlightService flightService;

    // общие (авторизация и регистрация(пользователя))
    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "login";
    }


    @PostMapping("/login")
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password) {
        if (userService.authenticateUser(email, password)) {
            User user = userService.getUserByEmail(email);
            if (user.getRole().equals("ADMIN")) {
                return "redirect:/admin";
            } else {
                return "redirect:/profile";
            }
        } else {
            return "redirect:/?error";
        }
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) throws IOException {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "registration";
        }
        return "redirect:/";
    }

// контроллеры для пользователя

    @GetMapping("/profile")
    @PreAuthorize("hasRole('USER')")
    public String profile(Principal principal,
                          Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        return "profile";
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

    @PostMapping("/user/edit")
    @PreAuthorize("hasRole('USER')")
    public String userEdit(@RequestParam("userId") Long id,
                           @RequestParam("firstName") String firstName,
                           @RequestParam("lastName") String lastName,
                           @RequestParam("passNumber") String passNumber,
                           @RequestParam("email") String email,
                           @RequestParam("numberPhone") String numberPhone){
        userService.editUser(id,firstName, lastName, passNumber,email,numberPhone);
        return "redirect:/profile";
    }

// для администратора

    @GetMapping("/admin")
    @PreAuthorize("hasRole('ADMIN')")
    public String admin(Model model, Principal principal){
        model.addAttribute("users",userService.list());
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "admin";
    }

    @PostMapping("/admin/user/ban/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public  String userBan(@PathVariable("id") Long id){
        userService.banUser(id);
        return "redirect:/admin";
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
