package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<Hotel,Long> {
    Hotel getHotelById(Long id);
    Hotel getHotelByName(String name);
}

