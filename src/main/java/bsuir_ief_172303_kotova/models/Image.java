package bsuir_ief_172303_kotova.models;

import javax.persistence.*;

@Entity
@Table(name = "images")
public class Image{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Lob
    private byte[] imageData;

    // Геттеры и сеттеры
}