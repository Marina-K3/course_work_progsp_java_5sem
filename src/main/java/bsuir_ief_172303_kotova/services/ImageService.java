package bsuir_ief_172303_kotova.services;

import bsuir_ief_172303_kotova.models.Image;
import bsuir_ief_172303_kotova.repositories.HotelRepository;
import bsuir_ief_172303_kotova.repositories.ImageRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class ImageService {
    private final ImageRepository imageRepository;

    public Image getImageById(Long id) {
       return imageRepository.getById(id);
    }
}
