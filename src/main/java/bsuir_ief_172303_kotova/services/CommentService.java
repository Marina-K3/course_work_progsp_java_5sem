package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Comment;
import bsuir_ief_172303_kotova.models.Country;
import bsuir_ief_172303_kotova.repositories.CommentRepository;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    public List<Comment> listComment(){
        return commentRepository.findAll();
    }

}
