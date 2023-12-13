package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {

    List<Comment> findAll();

    List<Comment> findByUserAgentContains(String substring);

}