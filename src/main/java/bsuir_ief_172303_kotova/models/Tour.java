package bsuir_ief_172303_kotova.models;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Tour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "departure_time")
    private LocalDateTime departureTime;

    @Column(name = "arrival_time")
    private LocalDateTime arrivalTime;

    @OneToOne
    @JoinColumn(name = "image_id")
    private Image image;

    private float price;

    @Column(name = "duration_days")
    private int durationDays;

    private String name;
    private String description;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    // Геттеры, сеттеры и другие методы
}