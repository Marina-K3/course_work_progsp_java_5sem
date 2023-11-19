package bsuir_ief_172303_kotova.controllers;

import bsuir_ief_172303_kotova.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;


    @GetMapping("/")
    public String login(Principal principal, Model model) {
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "home";
    }

}