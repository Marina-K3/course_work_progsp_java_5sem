package bsuir_ief_172303_kotova.controllers;

import bsuir_ief_172303_kotova.models.Image;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import bsuir_ief_172303_kotova.services.ImageService;

@Controller
@RequiredArgsConstructor
public class ImageController {


    private final ImageService imageService;

    @GetMapping("/image/{id}")
    public void getImage(@PathVariable Long id, HttpServletResponse response) throws IOException {
        Image image = imageService.getImageById(id);
        if (image != null && image.getImageData() != null) {
            response.setContentType("image/jpeg"); // Установите правильный тип содержимого для вашего изображения
            response.getOutputStream().write(image.getImageData());
        }
    }
}