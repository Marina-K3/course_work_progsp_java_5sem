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
@Table(name = "countries")
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;


    @OneToMany(mappedBy = "country", fetch = FetchType.EAGER, orphanRemoval = true)
    private List<City> cities;

    // Геттеры, сеттеры и другие методы
}
