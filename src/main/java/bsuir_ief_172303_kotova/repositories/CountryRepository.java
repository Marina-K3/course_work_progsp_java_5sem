package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country,Long> {
    Country findCountryByName(String name);
    Country findCountryById(Long id);
}

