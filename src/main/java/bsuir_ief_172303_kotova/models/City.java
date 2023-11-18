package bsuir_ief_172303_kotova.models;

import javax.persistence.*;
import java.util.List;

@Entity
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    private String name;


    @OneToMany(mappedBy = "departureCity")
    private List<Flight> departureFlights;

    @OneToMany(mappedBy = "arrivalCity")
    private List<Flight> arrivalFlights;

    @OneToMany(mappedBy = "city")
    private List<Hotel> hotels;

    // Геттеры, сеттеры и другие методы
}
