package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Country;
import bsuir_ief_172303_kotova.repositories.CountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
@RequiredArgsConstructor
public class CountryService {
    private final CountryRepository countryRepository;

    public List<Country> listCountry(){
        return countryRepository.findAll();
    }

    public void saveCountry(Country country, String visa){
        countryRepository.save(country);
    }

}

