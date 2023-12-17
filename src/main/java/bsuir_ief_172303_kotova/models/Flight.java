package bsuir_ief_172303_kotova.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "flights")
public class Flight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

//    @ManyToOne(fetch = FetchType.EAGER)
//    @JoinColumn(name = "departure_city_id", nullable = true, updatable = false)
//    private City departureCity;
//
//    @ManyToOne(fetch = FetchType.EAGER)
//    @JoinColumn(name = "arrival_city_id", nullable = true, updatable = false)
//    private City arrivalCity;


    private String departureCity;

    private String arrivalCity;

    @Column(name = "departure_time")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime departureTime;

    @Column(name = "arrival_time")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private LocalDateTime arrivalTime;

    @Column(name = "total_seats")
    private int totalSeats;

    @Column(name = "occupied_seats")
    private int occupiedSeats;

    // Геттеры, сеттеры и другие методы
}

