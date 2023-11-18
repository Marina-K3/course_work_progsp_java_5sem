package bsuir_ief_172303_kotova.models;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "tour_id")
    private Tour tour;


    @Column(name = "order_date")
    private LocalDate orderDate;

    @Column(name = "cancelled")
    private boolean cancelled;


}