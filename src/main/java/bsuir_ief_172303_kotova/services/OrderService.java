package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.*;
import bsuir_ief_172303_kotova.repositories.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileWriter;
import java.io.IOException;
import java.security.Principal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class OrderService {
    private final FlightService flightService;

    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final HotelRepository hotelRepository;

    private final UserService userService;

    private final CountryService countryService;


    private final TourRepository tourRepository;


    public List<Order> listOrder(){
        return orderRepository.findAll();
    }

    public List<Order>getOrderByUser(User user){
        return orderRepository.findByUser(user);
    }

    public void saveOrder(Long id, Principal principal) {
        Order order = new Order();
        Flight flight = tourRepository.getById(id).getFlight();
        Flight returnFlight = tourRepository.getById(id).getReturnFlight();
        if(returnFlight.getOccupiedSeats()<returnFlight.getTotalSeats() && flight.getOccupiedSeats()<flight.getTotalSeats()) {
            order.setUser(userService.getUserByPrincipal(principal));
            order.setTour(tourRepository.getById(id));
            order.setOrderDate(LocalDate.now());
            order.setCancelled(false);
            order.setSeat(flight.getOccupiedSeats() + 1);
            flight.setOccupiedSeats(flight.getOccupiedSeats() + 1);
            flightService.setOccupiedSeatsInFlights(flight);
            order.setDeparture_seat((returnFlight.getOccupiedSeats() + 1));
            returnFlight.setOccupiedSeats(returnFlight.getOccupiedSeats() + 1);
            flightService.setOccupiedSeatsInFlights(returnFlight);
            orderRepository.save(order);
        }
    }

    public void cancelOrder(Long id) {
        Order order = orderRepository.getOrderById(id);
        order.setCancelled(true);
        orderRepository.save(order);
    }

    public void deleteByTourId(Long tour_id) {

    }
}
