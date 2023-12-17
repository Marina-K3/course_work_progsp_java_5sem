package bsuir_ief_172303_kotova.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "tours")
public class Tour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //это время копируется из выбранных рейсов
    @Column(name = "departure_time")
    private LocalDateTime departureTime;

    @Column(name = "arrival_time")
    private LocalDateTime arrivalTime;

    @OneToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "image_id")
    private Image image;

    private float price;

    //не заполняется а вычисляется
    @Column(name = "duration_days")
    private int durationDays;

    private String name;

    private String description;

    //страну узнаем по городу вместо этого создадим просто поле
//    @ManyToOne(cascade = CascadeType.REFRESH)
//    @JoinColumn(name = "country_id")
//    private Country country;


    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "city_id")
    private City city;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "flight_id")
    private Flight flight;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "return_flight_id")
    private Flight returnFlight;

    // Геттеры, сеттеры и другие методы
}
