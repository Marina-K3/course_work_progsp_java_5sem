package bsuir_ief_172303_kotova.controllers;

import bsuir_ief_172303_kotova.models.Comment;
import bsuir_ief_172303_kotova.repositories.CommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Date;


@Component
@RequiredArgsConstructor
public class CommentsController {

    private final CommentRepository commentRepository;

    @GetMapping("/sendReview")
    public String registration(Principal principal, Model model) {
        //model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "registration";
    }
    @PostMapping("/sendReview")
    public String sendReview(@RequestParam String review,
                             HttpServletRequest request) {

        // создать объект Comment
        Comment comment = new Comment();

        System.out.println(comment);

        // заполнить поля:
        comment.setReview(review);
        comment.setDate(new Date());
        comment.setUserAgent(request.getHeader("User-Agent"));
        comment.setIp(request.getRemoteAddr());

        // сохранить комментарий в БД
        commentRepository.save(comment);
        //return "registration";

        //return "OK";

        return "redirect:/";
    }
}
