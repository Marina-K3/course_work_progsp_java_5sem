package bsuir_ief_172303_kotova.repositories;

import bsuir_ief_172303_kotova.models.Order;
import bsuir_ief_172303_kotova.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order,Long> {

    Order getOrderById(Long id);

}
