package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Flight;
import bsuir_ief_172303_kotova.repositories.CityRepository;
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
    private final CityRepository cityRepository;

    public List<Flight> listFlight(){
        return flightRepository.findAll();
    }

    public void saveFlight(Long arrivalCity, Long departureCity,LocalDateTime arrivalDateTime, LocalDateTime departureDateTime, int totalSeats) {
// Проверка, что город вылета и город прилета не совпадают
        if (!arrivalCity.equals(departureCity)) {
// Проверка, что время вылета и время прилета не совпадают и правильны в хронологии
            if (arrivalDateTime.isBefore(departureDateTime)) {

                Flight flight = new Flight();
                flight.setOccupiedSeats(0);
                flight.setTotalSeats(totalSeats);
                flight.setArrivalCity(cityRepository.getById(arrivalCity));
                flight.setDepartureCity(cityRepository.getById(departureCity));
                flight.setArrivalTime(arrivalDateTime);
                flight.setDepartureTime(departureDateTime);
                flightRepository.save(flight);
            }
        }
    }

    public void deleteFlightById(Long id) {
        flightRepository.deleteById(id);
    }
}

