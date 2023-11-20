package bsuir_ief_172303_kotova.models;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@Data
@NoArgsConstructor
@Table(name = "cities")
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "country_id")
    private Country country;

    @OneToMany(mappedBy = "departureCity", cascade = CascadeType.REFRESH)
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Flight> departureFlights;

    @OneToMany(mappedBy = "arrivalCity", cascade = CascadeType.REFRESH)
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Flight> arrivalFlights;

    @OneToMany(mappedBy = "city", cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
    private List<Hotel> hotels;

    // Геттеры, сеттеры и другие методы
}
