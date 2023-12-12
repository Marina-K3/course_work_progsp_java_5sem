package bsuir_ief_172303_kotova.services;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.lang.reflect.Array;
import java.security.Principal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;


@Slf4j
@RequiredArgsConstructor
@Service
public class UserService {
    private final UserRepository userRepository;

    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user){
        String userEmail = user.getEmail();
        if (userRepository.findByEmail(userEmail) != null) return false;
        user.setActive(true);
        user.setRole("USER");
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        log.info("Saving new User with email: {}", userEmail);
        userRepository.save(user);
        return true;
    }


    public List<User> list(){
        return userRepository.findAll();
    }

    public void banUser(Long id) {
        User user = userRepository.getUserById(id);
        if(user!=null){
            if(user.isActive()){
                user.setActive(false);
                log.info("Ban user with id = {}; email: {}",user.getId(),user.getEmail());
            } else{
                user.setActive(true);
                log.info("Unban user with id = {}; email: {}",user.getId(),user.getEmail());
            }
        }
        userRepository.save(user);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void editUser(Principal principal, String firstName,String lastName, String passNumber, String password, String email, String numberPhone){
        User user = userRepository.findByEmail(principal.getName());
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPassportNumber(passNumber);
        user.setEmail(email);
        user.setPhone(numberPhone);
        user.setPassword(password);
        userRepository.save(user);
    }

    public boolean createAdmin(User user) {
        String userEmail = user.getEmail();
        if (userRepository.findByEmail(userEmail) != null) return false;
        user.setActive(true);
        user.setRole("ADMIN");
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        log.info("Saving new User with email: {}", userEmail);
        userRepository.save(user);
        return true;
    }

    public boolean authenticateUser(String email, String password) {
        User user = userRepository.findByEmail(email);
        if (user != null && passwordEncoder.matches(password, user.getPassword())) {
            return true;
        }
        return false;
    }

    public User getUserByEmail(String email) {
        if(userRepository.findByEmail(email)!=null)
            return userRepository.findByEmail(email);
        else return new User();
    }
}