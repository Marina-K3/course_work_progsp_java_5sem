<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20.11.2023
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
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
    <section class="w-full h-[100vh]  bg-header  bg-cover bg-no-repeat bg-center bg-color1 bg-blend-multiply bg-opacity-60 " >
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
        <section class="w-full flex justify-center mt-[180px]" style="margin-top: 130px">
            <div class="w-[700px] md:w-[900px] container h-auto  ">
                <h4 class="w-full text-center uppercase text-white tracking-widest [word-spacing:8px] mb-4" style="font-size: 25px">Регистрация нового пользователя</h4>
            </div>
        </section>
        <section class="w-full justify-center mt-[80px] hidden lg:flex relative">
            <div class=" bg-white bg-opacity-40 container absolute w-[1000px] xl:w-[1200px] h-[100px] flex justify-center items-center backdrop-blur-lg" style="height: 200px; margin: 10px">
                <div class="w-[950px] xl:w-[1100px]  container h-auto absolute m-[10px] " style="height: 200px; margin: 10px">
                    <form action="/login" method="post" class="flex font-primary" style="margin-top: 45px">
                        <div style="display: flex; flex-direction: column; flex-grow: 1; ">
                            <div style="display: flex; flex-direction: row;">
                                <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none" style="padding-left: 10px;">нет аккаунта? - тогда вам сюда</p>
                                <input type="text" name="last_name" placeholder="Фамилия" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px;" required>
                                <input type="text" name="first_name" placeholder="Имя" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; " required>
                                <input type="text" name="passport_number" placeholder="Номер паспорта" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; " required>
                            </div>
                            <div style="display: flex; flex-direction: row;">
                                <input type = "email"   name="email" placeholder="Email" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; ">
                                <input type="tel" name="phone" placeholder="Телефон" required class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; ">
                                <input type="password"  name="password" placeholder="Пароль" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px; ">
                                <button type="submit" class="bg-color1 w-[25%] text-white flex items-center justify-center text-[18px] hover:bg-color3 transition-all duration-500" style="padding-left: 10px; flex-grow: 1; width: 25%;" ><i class="bi bi-person me-2"></i>Регистрация</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
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