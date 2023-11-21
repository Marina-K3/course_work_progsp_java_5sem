<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20.11.2023
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <section class="w-full flex justify-center h-auto  bg-color3" >
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
                        <li class="list-none"><a class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                                                 href="/about">О нас</a></li>
                        <li class="list-none "><a class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                                                  href="/tours">Туры</a></li>
                        <li class="list-none"><a class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                                                 href="/registration">Регистрация</a></li>
                        <li class="list-none"><a class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                                                 href="/contacts">Контакты</a></li>
                    </ul>
                </nav>
            </header>
        </section>
    </section>
    <section class="w-full flex justify-center bg-color3 py-8 h-auto">
        <div class="w-full container 2xl:px-36 h-auto">
            <div>
                <p class="text-color4 uppercase px-5">Спасибо за обратную связь</p>
                <p class="text-5xl font-secondary text-color4 px-5">Ваши<span class="text-white"> ОТЗЫВЫ</span></p>
                <div class="flex flex-wrap justify-center xl:justify-between gap-10 px-6 xl:px-0 py-8 lg:px-3 ">
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000  group mb-20   ">
                        <div class="w-[100%] h-[100%] overflow-hidden group transition-all duration-1000 relative">     <img src="/static/img/22.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000"></div>
                        <div class="absolute uppercase text-white bg-color1 px-2 left-3 top-12 flex flex-col items-center "><p>Авг</p><p class="font-bold">18</p></div>
                        <figcaption class=" absolute h-[150px] w-[85%]  bg-white bottom-[-80px]  left-[8%] flex flex-col justify-center px-8 group-hover:bottom-10 transition-all duration-1000 ">
                            <p class="uppercase text-color4">Ярослав</p>
                            <p class="capitalize text-color3 font-secondary text-2xl">Круиз на яхте запомнился на всю жизнь - спасибо :)</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000  group mb-20   ">
                        <div class="w-[100%] h-[100%] overflow-hidden group transition-all duration-1000 relative">     <img src="/static/img/11.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000"></div>
                        <div class="absolute uppercase text-white bg-color1 px-2 left-3 top-12 flex flex-col items-center "><p>Авг</p><p class="font-bold">28</p></div>
                        <figcaption class=" absolute h-[150px] w-[85%]  bg-white bottom-[-80px]  left-[8%] flex flex-col justify-center px-3 group-hover:bottom-10 transition-all duration-1000 ">
                            <p class="uppercase text-color4">Елена</p>
                            <p class="capitalize text-color3 font-secondary text-2xl">Посетила страну своей мечты с MyFlight!!!</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000  group mb-20   ">
                        <div class="w-[100%] h-[100%] overflow-hidden group transition-all duration-1000 relative">     <img src="/static/img/18-1.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000"></div>
                        <div class="absolute uppercase text-white bg-color1 px-2 left-3 top-12 flex flex-col items-center "><p>Окт</p><p class="font-bold">01</p></div>
                        <figcaption class=" absolute h-[150px] w-[85%]  bg-white bottom-[-80px]  left-[8%] flex flex-col justify-center px-5 group-hover:bottom-10 transition-all duration-1000 ">
                            <p class="uppercase text-color4">Дарина</p>
                            <p class="capitalize text-color3 font-secondary text-2xl">Я очень довольна,ни о чём не пожалела)</p>
                        </figcaption>
                    </figure>
                </div>
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
                        <li class="my-2 list-disc marker:text-color1"><a href="/login"  class="text-color6">Авторизация</a></li>
                    </ul>
                </div>
                <div class="w-full md:w-[28%] flex flex-col  py-2 my-5 px-6 md:px-0 " >
                    <p class="font-secondary text-2xl text-white ">Отзовик</p>
                    <p class="text-color6 mt-5">Мы интересуемся вашим мнением - даже без аккаунта вы можете оставить свой отзыв</p>
                    <form action="/reviews" type="post" class="mt-5 flex w-full flex-wrap"><input type="text" placeholder="Отзыв" class="px-2 py-5">
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

