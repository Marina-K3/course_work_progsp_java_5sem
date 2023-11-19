package bsuir_ief_172303_kotova.repositories;
import bsuir_ief_172303_kotova.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User getUserById(Long id);
    boolean existsByEmail(String email);
}