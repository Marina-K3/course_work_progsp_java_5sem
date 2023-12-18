package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.*;
import bsuir_ief_172303_kotova.repositories.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.time.Period;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class TourService {
    private final TourRepository tourRepository;
    private final FlightRepository flightRepository;
    private final CountryRepository countryRepository;
    private final OrderService orderService;

    private final ImageRepository imageRepository;


    private final UserRepository userRepository;

    public List<Tour> listTour(){
        return tourRepository.findAll();
    }



    public User getUserByPrincipal(Principal principal) {
        if(principal==null) return new User();
        return userRepository.findByEmail(principal.getName());
    }


    public void deleteTour(Long id){
//        Tour tour = tourRepository.findById(id).orElse(null);
//        if(tour!=null) {
//            documentService.deleteByTour(tour);
//            tourRepository.delete(tour);
//            log.info("Tour with id = {} was deleted", id);
//        }
//        else{
//            log.error("Tour with id = {} is not found", id);
//        }
    }

    public Tour getTourById(Long id) {
        return tourRepository.findById(id).orElse(null);
    }

    public void editTour(Long id,String name, int id1, int id2, String title, double price) {
       Tour tour = tourRepository.findById(id).orElse(null);
//        Country country = countryRepository.findCountryByName(name);
//        Flight flight = flightRepository.findById(id1);
//        Flight returnFlight = flightRepository.findById(id2);
//        tour.setCountry(country);
//        tour.setFlight(flight);
//        tour.setReturnFlight(returnFlight);
//        tour.setTitle(title);
//        tour.setPrice(price);
//        tourRepository.save(tour);
        log.info("Tour with title: {} was edit",tour.getDescription());
    }

    public void saveTour(String name, String description, float price, MultipartFile image, Flight flight, Flight returnFlight, String city, String country, String hotel, int stars)throws IOException {

        Tour tour = new Tour();
        tour.setName(name);
        tour.setDescription(description);
        tour.setCity(city);
        tour.setCountry(city);
        tour.setFlight(flight);
        tour.setReturnFlight(returnFlight);
        Period period = Period.between(flight.getDepartureTime().toLocalDate(), returnFlight.getDepartureTime().toLocalDate());
        int days = period.getDays();
        tour.setDurationDays(days);
        tour.setDepartureTime(flight.getDepartureTime());
        tour.setArrivalTime(returnFlight.getArrivalTime());
        tour.setHotelName(hotel);
        tour.setHotelStars(stars);
        tour.setPrice(price);
        Image img = new Image();
        img.setImageData(image.getBytes());
        img.setName(tour.getName());
        imageRepository.save(img);
        tour.setImage(img);
        tourRepository.save(tour);
    }


}

