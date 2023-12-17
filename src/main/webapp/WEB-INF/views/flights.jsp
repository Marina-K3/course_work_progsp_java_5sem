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




    <%--таблица--%>
    <section class="w-full flex justify-center bg-color3 py-8 h-auto" >
        <div style="display: flex; justify-content: center; align-items: flex-start; width: 73%;">
            <div style="width: 100%">
                <table style="width: 100%; border: 0.5px solid white; color: white; text-align: center; font-size: 20px; padding-left: 0px">
                    <tr>
                        <td colspan="6" style="padding: 10px;">Рейсы</td>
                    </tr>
                    <tr style="padding: 10px;">
                        <th style="padding: 10px;">Город(Страна) вылета</th>
                        <th style="padding: 10px;">Время вылета</th>
                        <th style="padding: 10px;">Город(Страна) отлёта</th>
                        <th style="padding: 10px;">Время отлёта</th>
                        <th style="padding: 10px;">Кол-во мест</th>
                        <th style="padding: 10px;">Удалить?</th>

                    </tr>

                    <c:forEach var="flight" items="${flights}">
                        <tr>
                            <td style="padding: 10px;">${flight.arrivalCity}</td>
                            <td style="padding: 10px;">${flight.arrivalTime}</td>
                            <td style="padding: 10px;">${flight.departureCity}</td>
                            <td style="padding: 10px;">${flight.departureTime}</td>
                            <td style="padding: 10px;">${flight.totalSeats}</td>
                            <td style="padding: 10px;">
                                <a href="/admin/deleteFlight/${flight.id}"><i class="bi bi-trash3"></i></a>
                            </td>
                        </tr>


                        <c:set var="lastArrivalFlight" value="true"/>
                        <c:forEach items="${cities}" var="city">
                            <c:if test="${city.name eq flight.arrivalCity}">
                                <c:set var="lastArrivalFlight" value="false"/>
                            </c:if>
                        </c:forEach>
                        <c:if test="${lastArrivalFlight}">
                    <tr>
                        <td colspan="6" style="padding: 10px;">Последний рейс в ${flight.arrivalCity} - больше мы с ними не сотрудничаем</td>
                    </tr>
                        </c:if>

                        <c:set var="lastDepartureFlight" value="true"/>
                        <c:forEach items="${cities}" var="city">
                            <c:if test="${city.name eq flight.departureCity}">
                                <c:set var="lastDepartureFlight" value="false"/>
                            </c:if>
                        </c:forEach>
                        <c:if test="${lastDepartureFlight}">
                            <tr>
                                <td colspan="6" style="padding: 10px;">Последний рейс в ${flight.departureCity} - больше мы с ними не сотрудничаем</td>
                            </tr>
                        </c:if>


                    </c:forEach>



                    <c:if test="${empty flights}">
                        <tr>
                            <td colspan="6" style="padding: 10px;">Рейсов нет - добавьте</td>
                        </tr>
                    </c:if>
                </table>

                <form action="/admin/addFlight" method="post" class="flex font-primary" style="margin-top: 45px">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

                    <select name="arrivalCity"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 16.66%"  required>
                        <c:forEach items="${cities}" var="city">
                            <option value="${city.name}">${city.name}(${city.country.name})</option>
                        </c:forEach>
                    </select>
                    <input type="datetime-local" name="arrivalTime" placeholder="Время вылета" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; width: 16.66%" required>

                    <select name="departureCity"  class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 16.66%"  required>
                        <c:forEach items="${cities}" var="city">
                            <option value="${city.name}">${city.name}(${city.country.name})</option>
                        </c:forEach>
                    </select>

                    <input type="datetime-local" name="departureTime" placeholder="Время отлёта" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; width: 16.66%" required>

                    <select class="w-[25%] py-[15px] bg-white ps-" style="padding-left: 10px; width: 16.66%"  required name="totalSeats">
                        <option value="50">50 мест</option>
                        <option value="100">100 мест</option>
                        <option value="150">150 мест</option>
                        <option value="200">200 мест</option>
                    </select>

                    <button type="submit" class="bg-color1 w-[25%] text-white flex items-center justify-center text-[18px] hover:bg-color3 transition-all duration-500" style="padding-left: 10px; flex-grow: 1; width: 16.66%;" ><i class="bi bi-plus"></i>Добавить</button>

                </form>

            </div>
        </div>
    </section>


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
