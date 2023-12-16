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
@Table(name = "flights")
public class Flight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "departure_city_id")
    private City departureCity;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "arrival_city_id")
    private City arrivalCity;

    @Column(name = "departure_time")
    private LocalDateTime departureTime;

    @Column(name = "arrival_time")
    private LocalDateTime arrivalTime;

    @Column(name = "total_seats")
    private int totalSeats;

    @Column(name = "occupied_seats")
    private int occupiedSeats;

    // Геттеры, сеттеры и другие методы
}

