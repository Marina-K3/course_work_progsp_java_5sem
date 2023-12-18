package bsuir_ief_172303_kotova.controllers;

import bsuir_ief_172303_kotova.models.Comment;
import bsuir_ief_172303_kotova.repositories.CommentRepository;
import bsuir_ief_172303_kotova.services.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Date;


@Controller
@RequiredArgsConstructor
public class CommentsController {

    private final CommentService commentService;

    @PostMapping("/reviews")
    public String sendReview(@RequestParam("review") String review,
                             HttpServletRequest request) {

        // сохранить комментарий в БД
        commentService.save(review, request);

        String referer = request.getHeader("Referer");
        if (referer != null) {
            return "redirect:" + referer;
        } else {
            return "thanks";
        }
    }
}
