package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.*;
import bsuir_ief_172303_kotova.repositories.HotelRepository;
import bsuir_ief_172303_kotova.repositories.OrderRepository;
import bsuir_ief_172303_kotova.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final HotelRepository hotelRepository;

    private final UserService userService;

    private final CountryService countryService;



    public List<Order> listOrder(){
        return orderRepository.findAll();
    }



}
