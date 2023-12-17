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
    public void saveDocument(Order order, Tour tour, Long hotelId, Long userId){
//        order.setTour(tour);
//        Hotel hotel = hotelRepository.getHotelById(hotelId);
//        User user = userRepository.getUserById(userId);
//        order.setUser(user);
//        order.setHotel(hotel);
        orderRepository.save(order);
    }

    public void deleteDocument(Long id){
        Order order = orderRepository.findById(id).orElse(null);
        //System.out.println(document.getTour().getCountry().getName());
        if(order!=null){
            orderRepository.delete(order);
            log.info("Document with id = {} was deleted", id);
        }
        else{
            log.error("Document with id = {} is not found", id);
        }
    }

    public Order getDocumentById(Long id){
        return orderRepository.findById(id).orElse(null);
    }

    public void setPayment(Order order, User user, Tour tour, Hotel hotel, Country country, Flight flight,
                           Flight returnFlight, MultipartFile file) throws IOException {
        Image image;
        if(file.getSize()!=0){
            image=checkToDoc(file);
            //document.addCheckToDoc(image);
        }
        String filename="C:\\Users\\Anna Soroka\\OneDrive\\Рабочий стол\\Курсач\\agency\\src\\main\\resources\\static\\docs\\ticket"+user.getId()+".txt";
        try {
            FileWriter writer = new FileWriter(filename);
            writer.write("Билет на рейс:" +flight.getId()+"\n");
            writer.write("ФИО пассажира: " +user.getFirstName()+ " "+ user.getLastName()+"\n");
//            writer.write("Дата и время отправления: " + flight.getArrivalDateTime()+"\n");
//            writer.write("Страна отправления: "+flight.getArrivalPlace().getName()+"\n");
//            writer.write("Дата и время прибытия: " + flight.getDepartureDateTime()+ "\n");
//            writer.write("Страна прибытия: "  +flight.getDeparturePlace().getName()+ "\n");
//            writer.write("Место в самолете: 23A\n");
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        filename="C:\\Users\\Anna Soroka\\OneDrive\\Рабочий стол\\Курсач\\agency\\src\\main\\resources\\static\\docs\\returnTicket"+user.getId()+".txt";
        try {
            FileWriter writer = new FileWriter(filename);
            writer.write("Билет на рейс №:"+returnFlight.getId()+"\n");
            writer.write("ФИО пассажира: " +user.getFirstName()+" "+user.getLastName()+"\n");
//            writer.write("Дата и время отправления: " +returnFlight.getArrivalDateTime()+"\n");
//            writer.write("Страна отправления: " +returnFlight.getArrivalPlace().getName()+"\n");
//            writer.write("Дата и время прибытия: " +returnFlight.getDepartureDateTime()+"\n");
//            writer.write("Страна прибытия: " +returnFlight.getDeparturePlace().getName()+"\n");
//            writer.write("Место в самолете: 12B\n");
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        filename="C:\\Users\\Anna Soroka\\OneDrive\\Рабочий стол\\Курсач\\agency\\src\\main\\resources\\static\\docs\\voucher"+user.getId()+".txt";
        try {
            FileWriter writer = new FileWriter(filename);
            writer.write("Путевка:\n");
//            writer.write("Дата оформления: "+document.getDateOfCreated()+"\n");
//            writer.write("ФИО клиента: " +user.getName()+"\n");
//            writer.write("Название тура: " +tour.getTitle()+"\n");
//            writer.write("Цена тура: " +tour.getPrice()+"\n");
//            writer.write("Страна: " +country.getName()+"\n");
//            writer.write("Информация об отеле: " +hotel.getName()+" Звезды: "+hotel.getStars()+
//                    " Адрес: "+hotel.getLocation()+"\n");
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //order.setPayment(true);
        orderRepository.save(order);
    }

    private Image checkToDoc(MultipartFile file) throws IOException {
        Image image=new Image();
        image.setName(file.getName());
//        image.setOriginalFileName(file.getOriginalFilename());
//        image.setContentType(file.getContentType());
//        image.setSize(file.getSize());
//        image.setBytes(file.getBytes());
        return image;
    }

    public List<Order> listDocument(){
        return orderRepository.findAll();
    }
//
//    public List<ChartsData> findFavoriteCountry(){
//        List<Order> orders = listDocument();
//        List<Country> countries=countryService.listCountry();
//        List<ChartsData> chartsDataList = new ArrayList<>();
//        int count =0;
//        for(Country country: countries){
//            for(Order order: orders){
//                if(order.getTour().getCountry().getId()==country.getId()){
//                    count++;
//                }
//            }
//            ChartsData chartsData= new ChartsData();
//            chartsData.setCount(count);
//            chartsData.setName(country.getName());
//            chartsDataList.add(chartsData);
//            count=0;
//        }
//        return chartsDataList;
//    }

    public List<ChartsData> statistics() {
        List<ChartsData> chartsDataList = new ArrayList<>();
        List<Order> orders = listDocument();
        List<String> months= Arrays.asList("JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE","JULY","AUGUST",
                "SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER");
        int count =0;
        for(String month:months){
            for(Order order:orders){
                if(month.equals(order.getOrderDate().getMonth().name())){
                    count++;
                }
            }
            ChartsData chartsData= new ChartsData();
            chartsData.setCount(count);
            chartsData.setName(month);
            chartsDataList.add(chartsData);
            count=0;
        }

        return chartsDataList;
    }

    public List<ChartsData> userStatistic() {
        List<User> users = userService.list();
        List<Order> orders = listDocument();
        List<ChartsData> chartsDataList = new ArrayList<>();
        int count =0;
        for(User user: users){
            if(user.getRole().equals("ADMIN"))
                continue;
            else {
                for(Order order: orders){
                    if(order.getUser().getId()==user.getId()){
                        count++;
                    }
                }
                ChartsData chartsData= new ChartsData();
                chartsData.setCount(count);
                chartsData.setName(user.getLastName());
                chartsDataList.add(chartsData);
                count=0;
            }
        }
        return chartsDataList;
    }
}
