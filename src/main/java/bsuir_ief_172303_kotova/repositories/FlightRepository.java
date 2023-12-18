package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Flight;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FlightRepository extends JpaRepository<Flight,Long> {
    Flight getFlightById(Long id);
}
