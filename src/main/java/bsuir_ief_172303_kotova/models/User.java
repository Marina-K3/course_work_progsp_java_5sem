package bsuir_ief_172303_kotova.models;

import javax.persistence.*;
import java.util.List;


@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "passport_number")
    private String passportNumber;

    private String phone;

    private String email;

    @Column(name = "is_active")
    private boolean isActive;

    private String password;

    private String role;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    // Геттеры, сеттеры и другие методы
}
