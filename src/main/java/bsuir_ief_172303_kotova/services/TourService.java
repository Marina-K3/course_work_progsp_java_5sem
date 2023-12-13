package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Image;
import bsuir_ief_172303_kotova.models.Tour;
import bsuir_ief_172303_kotova.models.User;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import bsuir_ief_172303_kotova.repositories.FlightRepository;
import bsuir_ief_172303_kotova.repositories.TourRepository;
import bsuir_ief_172303_kotova.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class TourService {
    private final TourRepository tourRepository;
    private final FlightRepository flightRepository;
    private final CountryRepository countryRepository;
    private final OrderService orderService;

    private final UserRepository userRepository;

    public List<Tour> listTours(){
        return tourRepository.findAll();
    }

    public void saveTour(Tour tour, String name, int id1, int id2,
                         MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
//        Image image1,image2,image3;
//        if(file1.getSize() !=0){
//            image1=toImageEntity(file1);
//            image1.setPreviewImage(true);
//            tour.addImageToTour(image1);
//        }
//        if(file2.getSize() !=0){
//            image2=toImageEntity(file2);
//            tour.addImageToTour(image2);
//        }
//        if(file3.getSize() !=0){
//            image3=toImageEntity(file3);
//            tour.addImageToTour(image3);
//        }
//        Country country = countryRepository.findCountryByName(name);
//        Flight flight = flightRepository.findById(id1);
//        Flight returnFlight = flightRepository.findById(id2);
//        tour.setCountry(country);
//        tour.setFlight(flight);
//        tour.setReturnFlight(returnFlight);
//        log.info("Saving new Tour. Title: {}; Price: {}",tour.getTitle(),tour.getPrice());
//        Tour tourFromDb = tourRepository.save(tour);
//        tourFromDb.setPreviewImageId(tour.getImages().get(0).getId());
        tourRepository.save(tour);
    }

    public User getUserByPrincipal(Principal principal) {
        if(principal==null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
         Image image = new Image();
//        image.setName(file.getName());
//        image.setOriginalFileName(file.getOriginalFilename());
//        image.setContentType(file.getContentType());
//        image.setSize(file.getSize());
//        image.setBytes(file.getBytes());
        return image;
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

}

