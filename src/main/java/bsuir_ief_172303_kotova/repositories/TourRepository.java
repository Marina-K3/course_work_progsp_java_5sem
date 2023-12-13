package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Tour;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TourRepository extends JpaRepository<Tour,Long> {
    Tour getTourByName(String name);
}

