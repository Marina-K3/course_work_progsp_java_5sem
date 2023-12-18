package bsuir_ief_172303_kotova.controllers;

import bsuir_ief_172303_kotova.services.TourService;
import bsuir_ief_172303_kotova.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class HomeController {


    private final TourService tourService;


    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }


    @GetMapping("/contacts")
    public String contacts() {
        return "contacts";
    }

    @GetMapping("/logout")
    public String logout() {
        return "home";
    }

    @GetMapping("/tours")
    public String tours(Model model) {

        model.addAttribute("tours", tourService.listTour());
        return "tours";
    }

}