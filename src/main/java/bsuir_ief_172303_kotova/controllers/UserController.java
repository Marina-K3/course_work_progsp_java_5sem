package bsuir_ief_172303_kotova.controllers;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.services.UserService;
import lombok.RequiredArgsConstructor;
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
public class UserController {
    private final UserService userService;

    @PostMapping("/login")
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password) {
        if (userService.authenticateUser(email, password)) {
            User user = userService.getUserByEmail(email);
            if (user.getRole().equals("ADMIN")) {
                return "redirect:/admin";
            } else {
                return "redirect:/dashboard";
            }
        } else {
            return "redirect:/?error";
        }
    }

    @GetMapping("/profile")
    public String profile(Principal principal,
                          Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        return "profile";
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

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("user", user);
        model.addAttribute("userByPrincipal", userService.getUserByPrincipal(principal));
        return "user-info";
    }

    @GetMapping("/user/edit/{user}")
    public String userEdit(@PathVariable("user") User user, Model model, Principal principal){
        model.addAttribute("user",user);
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "user-edit";
    }

    @PostMapping("/user/edit")
    public String userEdit(@RequestParam("userId") Long id,
                           @RequestParam("firstName") String firstName,
                           @RequestParam("lastName") String lastName,
                           @RequestParam("passNumber") String passNumber, @RequestParam("email") String email,
                           @RequestParam("numberPhone") String numberPhone){
        userService.editUser(id,firstName, lastName, passNumber,email,numberPhone);
        return "redirect:/profile";
    }
}
