package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Comment;
import bsuir_ief_172303_kotova.models.Country;
import bsuir_ief_172303_kotova.repositories.CommentRepository;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    public List<Comment> listComment(){
        return commentRepository.findAll();
    }

    public void save(String review, HttpServletRequest request) {

        Comment comment = new Comment();

        System.out.println(comment);

        // заполнить поля:
        comment.setReview(review);
        comment.setDate(new Date());
        comment.setUserAgent(request.getHeader("User-Agent"));
        comment.setIp(request.getRemoteAddr());

        commentRepository.save(comment);
    }
}
