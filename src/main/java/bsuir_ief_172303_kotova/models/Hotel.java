package bsuir_ief_172303_kotova.models;

import javax.persistence.*;

@Entity
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;

    private String name;

    @Column(name = "star_rating")
    private int starRating;


}
