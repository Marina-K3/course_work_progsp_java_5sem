<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13.12.2023
  Time: 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyFlight</title>
    <link rel="stylesheet" href="/static/css/output.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
</head>
<body class="font-primary">
<main class="w-full">

    <%-- хедер с менюшкой--%>
    <section class="w-full flex justify-center bg-color3 py-8 h-auto">

        <section class="w-full flex flex-wrap justify-center ">
            <header
                    class="w-[85%]  xl:w-[73%]  container hidden lg:flex justify-between h-[60px]  items-center py-[45px] border-b-[1px] border-white border-opacity-40">
                <figure class="w-[140px]">
                    <img src="/static/img/logo-light.png" alt="" class="w-[100%]">
                </figure>
                <nav class="h-[100%] md:w-[70%]">
                    <ul class="h-[100%] flex items-center gap-8 justify-end">
                        <li class="list-none  "><a class="decoration-none text-white hover:text-color3 transition-all duration-500"
                                                   href="/">Главная</a></li>
                        <li class="list-none  "><a class="decoration-none text-white hover:text-color3 transition-all duration-500"
                                                   href="/admin/data">Назад</a></li>
                        <li class="list-none"><a class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                                                 href="/logout">Выйти</a></li>
                    </ul>
                </nav>
            </header>
        </section>

    </section>


    <%--туры--%>
    <section class="w-full flex justify-center bg-color3 py-8 h-auto">
            <div class="w-full container 2xl:px-36">
                <div>
                    <div class="flex flex-wrap md:justify-between gap-10 px-6 xl:px-0 py-8 lg:px-3 " style="justify-content: space-evenly;">

                        <c:forEach var="tour" items="${tours}">
                            <c:set var="deletable" value="true" />
                            <c:set var="editable" value="true" />

                            <c:forEach var="order" items="${orders}">
                                <c:if test="${order.tour.id eq tour.id}">
                                    <c:set var="deletable" value="false" />
                                    <c:set var="editable" value="false" />
                                </c:if>
                            </c:forEach>

                            <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000">
                                <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                                    <p class="text-3xl text-color3 capitalize font-secondary"></p>
                                    <p class="text-color1 mb-4">$${tour.price} / с человека</p>
                                    <p class="text-color6">${tour.description}</p>
                                    <div class="flex flex-wrap my-4">
                                        <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">${tour.durationDays} Дней</p></div>
                                        <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">${tour.city}(${tour.country})</p></div>
                                        <div class="w-[50%] flex"><i class="bi bi-building text-color4"></i></i><p class="text-color6 ms-2">${tour.hotelName}</p></div>
                                        <div class="w-[50%] flex"><i class="bi bi-star text-color4"></i></i><p class="text-color6 ms-2">${tour.hotelStars} Звёзд</p></div>
                                    </div>
                                    <c:choose>
                                        <c:when test="${deletable}">
                                            <a href="/admin/deleteTour/${tour.id}" class="underline decoration-color1 text-color6 flex mb-2">Удалить</a>
                                        </c:when>
                                        <c:otherwise>
                                            <p class="text-color6 flex mb-2">Удаление невозможно</p>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${editable}">
                                            <a href="/admin/editTour/${tour.id}" class="underline decoration-color1 text-color6 flex mb-2">Редактировать</a>
                                        </c:when>
                                        <c:otherwise>
                                            <p class="text-color6 flex mb-2">Редактирование невозможно</p>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <img src="/image/${tour.image.id}" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                                <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-1 top-12 rotate-[-90deg] ">${tour.city}</p>
                                <figcaption class="absolute text-white bottom-8 right-10 fig">
                                    <p class="capitalize font-secondary text-3xl">${tour.name}</p>
                                    <p class="text-right">$${tour.price} / с человека</p>
                                </figcaption>
                            </figure>
                        </c:forEach>
                    </div>
                </div>
            </div>
    </section>


        <section class="w-full flex justify-center bg-color3 py-8 h-auto">
        <div style="display: flex; justify-content: center; align-items: flex-start; width: 73%;">
            <div style="width: 100%">
                <form action="/admin/addTour" method="post" enctype="multipart/form-data" class="flex font-primary" style="margin-top: 45px">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <div style="display: flex; flex-direction: column; flex-grow: 1; ">


                        <div style="display: flex; flex-direction: row;">
                            <input type="text" name="name" placeholder="Имя" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; width: 25%" required>
                            <input type="text" maxlength="100" name="description" placeholder="Описание" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; width: 75%" required>
                        </div>
                        <div style="display: flex; flex-direction: row;">

                        <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 50%">Рейс туда</p>
                        <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 50%">Рейс обратно</p>

                        </div>
                        <div style="display: flex; flex-direction: row;">
                            <select name="flightId"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 50%"  required>
                                <c:forEach items="${flights}" var="flight">
                                    <option value="${flight.id}">из ${flight.departureCity} в ${flight.arrivalCity} время ${flight.departureTime}</option>
                                </c:forEach>
                            </select>
                            <select name="returnFlightId"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 50%"  required>
                                    <c:forEach items="${flights}" var="flight">
                                        <option value="${flight.id}">из ${flight.departureCity} в ${flight.arrivalCity} время ${flight.departureTime}</option>
                                    </c:forEach>
                            </select>
                        </div>

                        <div style="display: flex; flex-direction: row;">

                            <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 25%">Город (Страна)</p>
                            <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 25%">Отель (Страна)</p>
                            <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 25%">Цена</p>
                            <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px; font-size: 19px; color: white; width: 25%"></p>

                        </div>

                        <div style="display: flex; flex-direction: row;">
                            <select name="cityId"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 25%"  required>
                                <c:forEach items="${cities}" var="city">
                                    <option value="${city.id}">${city.name}(${city.country.name})</option>
                                </c:forEach>
                            </select>
                            <select name="hotelId"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 25%"  required>
                                <c:forEach items="${hotels}" var="hotel">
                                    <option value="${hotel.id}">${hotel.name}(${hotel.city.name})</option>
                                </c:forEach>
                            </select>
                            <input type="number" step="0.1" name="price" class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 25%" required>
                            <button type="submit" class="bg-color1 w-[25%] text-white flex items-center justify-center text-[18px] hover:bg-color3 transition-all duration-500" style="padding-left: 10px; flex-grow: 1; width: 16.66%;" ><i class="bi bi-plus"></i>Добавить</button>
                        </div>
                        <div style="display: flex; flex-direction: row;">

                           <input style="padding-top: 20px; width: 30%" required type="file" name="img" accept="image/jpeg">

                        </div>
                    </div>

                </form>

            </div>
        </div>

        </section>


    <%--бегущие картинки--%>
    <section class="w-full flex justify-center bg-color7 overflow-hidden  ">
        <div class="w-full container flex whitespace-nowrap overflow-hidden group  ">
            <div class="flex  logos-slide animate-anime w-full flex-wrap whitespace-nowrap group-hover:pause  ">
                <figure class="w-[25%] "><img src="/static/img/1.png" alt="" w-[100%]></figure>
                <figure class="w-[25%] "><img src="/static/img/2.png" alt="" w-[100%]></figure>
                <figure class="w-[25%]  "><img src="/static/img/3.png" alt="" w-[100%]></figure>
                <figure class="w-[25%]  "><img src="/static/img/4.png" alt="" w-[100%]></figure>
            </div>
            <div class="flex  logos-slide  w-full flex-wrap  whitespace-nowrap ms-[-200%] animate-anime group-hover:pause ">
                <figure class="w-[25%] "><img src="/static/img/1.png" alt="" w-[100%]></figure>
                <figure class="w-[25%] "><img src="/static/img/2.png" alt="" w-[100%]></figure>
                <figure class="w-[25%]  "><img src="/static/img/3.png" alt="" w-[100%]></figure>
                <figure class="w-[25%]  "><img src="/static/img/4.png" alt="" w-[100%]></figure>
            </div>
        </div>
    </section>

    <section class="w-full flex justify-center h-auto  bg-color3">
        <footer class="w-full container h-auto flex flex-col 2xl:px-36 ">
            <div class="flex justify-center border items-center boder-1 border-color5 my-10 flex-wrap mx-6 ">
                <div class="w-full lg:w-[30%] flex  items-center py-2 lg:border-r-2 lg:border-r-color5 my-5 ps-8 lg:ps-0" >
                    <i class="bi bi-telephone-outbound text-4xl me-4 text-white bg-color1 p-3"></i>
                    <div class="w-full text-white"><p class="font-secondary">Звоните</p><p>+375(29)-214-83-48</p></div>
                </div>
                <div class="w-full lg:w-[35%] flex items-center py-2 lg:border-r-2 lg:border-r-color5 my-5 ps-8" >
                    <i class="bi-envelope-paper text-4xl me-4 text-white bg-color1 p-3"></i>
                    <div class="w-full text-white"><p class="font-secondary">Пишите</p><p>marinakotova271003@gmail.com</p></div>
                </div>
                <div class="w-full lg:w-[30%] flex items-center py-2 my-5 ps-8" >
                    <i class="bi bi-map text-4xl me-4 text-white bg-color1 p-3 "></i>
                    <div class="w-full text-white"><p class="font-secondary">Приходите</p><p>Беларусь, Минск</p></div>
                </div>
            </div>
            <div class="flex  justify-between  my-10 flex-wrap  ">
                <div class="w-full md:w-[30%] flex flex-col py-2  my-5 px-6 " >
                    <figure class="w-[80%]">
                        <img src="/static/img/logo-light.png" alt="" class="w-[100%]">
                    </figure>
                    <p class="text-color6 my-5">"Раскройте крылья своих мечтаний с MyFlight - вашим путеводителем в мир приключений и незабываемых полетов."</p>
                    <ul class="flex  ">
                        <li class="me-5"><a href=""><i class="bi bi-instagram text-white bg-color1 p-3 rounded-[50%]"></i></a></li>
                        <li class="me-5"><a href=""><i class="bi bi-github text-white  bg-color1 p-3 rounded-[50%]"></i></a></li>
                        <li class="me-5"><a href=""><i class="bi bi-linkedin text-white  bg-color1 p-3 rounded-[50%]"></i></a></li>
                    </ul>
                </div>
                <div class="w-full md:w-[30%] flex flex-col py-2  my-5 md:ps-20 px-6 " >
                    <p class="font-secondary text-white text-xl xl:text-2xl">Быстрые ссылки</p>
                    <ul class="mt-7 px-6">
                        <li class="my-2 list-disc marker:text-color1"><a href="/tours" class="text-color6">Туры</a></li>
                        <li class="list-disc marker:text-color1"><a href="/registration"  class="text-color6">Регистрация</a></li>
                        <li class="my-2 list-disc marker:text-color1"><a href="/log"  class="text-color6">Авторизация</a></li>
                    </ul>
                </div>
                <div class="w-full md:w-[28%] flex flex-col  py-2 my-5 px-6 md:px-0 " >
                    <p class="font-secondary text-2xl text-white ">Отзовик</p>
                    <p class="text-color6 mt-5">Мы интересуемся вашим мнением - даже без аккаунта вы можете оставить свой отзыв</p>
                    <form action="/reviews" method="post" class="mt-5 flex w-full flex-wrap">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                        <input type="text" name = "review" placeholder="Отзыв" class="px-2 py-5">
                        <button type = "submit" class="text-white bg-color4 py-5 px-3 flex mt-0 md:mt-2 lg:mt-0">Отправить</button></form>
                </div>
            </div>
            <p class="text-stone-300 text-left py-5  text-[14px] relative before:content-[''] before:h-[3px] before:w-[100%] before:bg-stone-400 before:absolute before:top-0 before:bg-opacity-50">©2023 Марина Котова. ПрогСП - 3 курс 1 сем, курсовой проект, WebApp Java Spring MVC Hibernate JSP MySQL.</p>
        </footer>
    </section>
</main>
</body>
<script src="/static/js/master.js"></script>
</html>
