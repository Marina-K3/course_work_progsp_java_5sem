package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Flight;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import bsuir_ief_172303_kotova.repositories.FlightRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;


@Service
@Slf4j
@RequiredArgsConstructor
public class FlightService {
    private final FlightRepository flightRepository;
    private final CountryRepository countryRepository;

    public List<Flight> listFlight(){
        return flightRepository.findAll();
    }

    public void saveFlight(Flight flight, Long id1, Long id2,LocalDateTime arrivalDateTime, LocalDateTime departureDateTime){
//        flight.setArrivalPlace(countryRepository.findCountryById(id1));
//        flight.setDeparturePlace(countryRepository.findCountryById(id2));
//        flight.setArrivalDateTime(arrivalDateTime);
//        flight.setDepartureDateTime(departureDateTime);
        flightRepository.save(flight);
    }
}

