package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.City;
import bsuir_ief_172303_kotova.repositories.CityRepository;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
@RequiredArgsConstructor
public class CityService {

    private final CityRepository cityRepository;
    private  final CountryRepository countryRepository;

    public List<City> listCity(){
        return cityRepository.findAll();
    }

    public void saveCity(Long countryId, String cityName) {
        if(cityRepository.findCityByName(cityName)==null || cityRepository.findCityByCountry_Id(countryId)==null){
            City city = new City();
            city.setCountry(countryRepository.findCountryById(countryId));
            city.setName(cityName);
            cityRepository.save(city);
        }

    }


    public void deleteCity(Long id) {
        cityRepository.deleteById(id);
    }

    public City getCityById(Long cityId) {
        return cityRepository.getById(cityId);
    }

    public String getNameById(long id) {
        return cityRepository.getById(id).getName();
    }

    public String getCountryNameById(Long id) {
        return cityRepository.getById(id).getCountry().getName();
    }
}
