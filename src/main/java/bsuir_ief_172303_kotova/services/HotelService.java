package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Hotel;
import bsuir_ief_172303_kotova.repositories.HotelRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class HotelService {
    private final HotelRepository hotelRepository;
    public void saveHotel(Hotel hotel, String sea){
        hotelRepository.save(hotel);
    }

}