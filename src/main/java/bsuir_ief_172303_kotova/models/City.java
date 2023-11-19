package bsuir_ief_172303_kotova.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "cities")
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @OneToMany(mappedBy = "departureCity", cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private List<Flight> departureFlights;

    @OneToMany(mappedBy = "arrivalCity", cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private List<Flight> arrivalFlights;

    @OneToMany(mappedBy = "city", cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
    private List<Hotel> hotels;

    // Геттеры, сеттеры и другие методы
}
