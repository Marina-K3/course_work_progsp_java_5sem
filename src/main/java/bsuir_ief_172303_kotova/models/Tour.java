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
    private LocalDateTime departureTime;//flight.arrivalTime

    @Column(name = "arrival_time")
    private LocalDateTime arrivalTime;//returnFlight.departureTime

    @OneToOne(cascade = CascadeType.REFRESH, orphanRemoval = true)
    @JoinColumn(name = "image_id")
    private Image image;

    private float price;

    //не заполняется а вычисляется
    @Column(name = "duration_days")
    private int durationDays;

    private String name;

    private String description;

    //для заполнения нужен город
    private String City;
    private String Country;

    //для заполнения нужен отель
    private String hotelName;
    private int hotelStars;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "flight_id")
    private Flight flight;

    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "return_flight_id")
    private Flight returnFlight;

    // Геттеры, сеттеры и другие методы
}
