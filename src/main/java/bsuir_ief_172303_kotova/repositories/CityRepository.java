package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.City;
import bsuir_ief_172303_kotova.models.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityRepository extends JpaRepository<City,Long>  {

    City findCityByName(String name);

    City findCityByCountry_Id(Long country_id);


}
