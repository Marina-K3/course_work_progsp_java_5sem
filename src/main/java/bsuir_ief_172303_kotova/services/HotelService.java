package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.City;
import bsuir_ief_172303_kotova.models.Hotel;
import bsuir_ief_172303_kotova.repositories.CityRepository;
import bsuir_ief_172303_kotova.repositories.HotelRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class HotelService {
    private final HotelRepository hotelRepository;
    private final CityRepository cityRepository;
    public void saveHotel(Hotel hotel, String sea){
        hotelRepository.save(hotel);
    }

    public List<Hotel> listHotel(){
        return hotelRepository.findAll();
    }

    public void deleteHotelById(Long id) {
        hotelRepository.deleteById(id);
    }

    public void saveHotel(String name, int starRating, Long cityId) {
        if(hotelRepository.getHotelByName(name)==null) {
            Hotel hotel = new Hotel();
            hotel.setName(name);
            hotel.setStarRating(starRating);
            hotel.setCity(cityRepository.findCityById(cityId));
            hotelRepository.save(hotel);
        }
    }
}