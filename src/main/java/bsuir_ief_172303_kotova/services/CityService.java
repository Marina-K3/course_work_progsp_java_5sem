package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.City;
import bsuir_ief_172303_kotova.repositories.CityRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
@RequiredArgsConstructor
public class CityService {

    private final CityRepository cityRepository;

    public List<City> listCity(){
        return cityRepository.findAll();
    }

}
