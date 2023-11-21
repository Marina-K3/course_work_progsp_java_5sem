<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07.11.2023
  Time: 19:33
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
                <h4 class="w-full text-center uppercase text-white tracking-widest [word-spacing:8px] mb-4" style="font-size: 25px">Ляцi птушкай !</h4>
                <h1 class="w-full text-center text-white text-5xl md:text-7xl font-secondary uppercase tracking-widest">Посети весь мир вместе с <span class="travol">MyFlight</span></h1>
            </div>
        </section>
        <section class="w-full justify-center mt-[80px] hidden lg:flex relative">
            <div class=" bg-white bg-opacity-40 container absolute w-[1000px] xl:w-[1200px] h-[100px] flex justify-center items-center backdrop-blur-lg">
                <div class="w-[950px] xl:w-[1100px]  container h-auto absolute m-[10px]  ">
                    <form action="/login" method="post" class="flex font-primary">
                        <p class="py-[15px] ps-5 w-[25%] outline-none focus:outline-none">у вас есть аккаунт?</p>
                        <input type = "email"   name="email" placeholder="Email" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px">

                        <input type="password"  name="password" placeholder="Пароль" class="w-[25%] py-[15px] bg-white  ps-" style="padding-left: 10px">


                        <button type="submit" class="bg-color1 w-[25%] text-white flex items-center justify-center text-[18px] hover:bg-color3 transition-all duration-500" ><i class="bi bi-person me-2"></i>Вход</button>
                    </form>
                </div>
            </div>
        </section>
    </section>
    <section class="w-full flex justify-center bg-color5 h-auto">
        <div class="w-full container flex justify-between flex-wrap px-0 2xl:px-36 h-auto py-16 ">
            <div class="w-full lg:w-[50%]  bg-color px-5 ">
                <p class="text-color4 uppercase">MyFlight - лучшее турагенство</p>
                <p class="text-color3 text-5xl font-bold uppercase font-secondary my-4" >Открывайте <span class="text-color1"> мир</span> с нами</p>
                <p class="text-color6">Выбирайте любую страну с прекрасным туризмом. Агентство MyFlight предлагает вам уникальные путешествия,
                    чтобы оживить ваши самые заветные мечты. Наша команда профессионалов поможет вам создать незабываемые впечатления и открыть
                    для себя новые горизонты. Мы заботимся о каждой детали вашего путешествия, чтобы вы могли наслаждаться
                    каждым моментом беззаботно. Выбирайте лучшее с агентством MyFlight - вашим надежным партнером в мире туризма.</p>
                <p class="text-color6 my-4">Отель, расположенный в прекрасном месте, предлагает вам незабываемый отдых. У нас вы найдете комфортабельные номера и великолепный сервис, чтобы ваше пребывание было по-настоящему особенным.
                    Наше внимательное обслуживание и разнообразие удобств позволят вам полностью расслабиться и насладиться каждой минутой вашего пребывания.
                     Резервируйте прямо сейчас и создайте незабываемые воспоминания вместе с нами.</p>
                <div class="flex items-center"> <i class="bi bi-check text-white bg-color4  rounded-[50%] px-2 py-1 me-3"></i> <p class="text-color6">Многолетний опыт</p></div>
                <div class="flex items-center my-4"> <i class="bi bi-check text-white bg-color4  rounded-[50%] px-2 py-1 me-3"></i> <p class="text-color6">Множество мест по всему миру</p></div>
                <div class="flex items-center"><i class="bi bi-telephone-forward text-color1 text-2xl me-3"></i><div><p class="text-color6 ">Для информирования</p><p class="text-color6 text-2xl">+375(29)-214-83-48 МТС</p></div></div>
            </div>
            <div class=" w-full lg:w-[50%]   flex flex-col justify-center items-center bg-color5 h-auto pb-8 lg:pb-0 mt-10 lg:mt-0 ">
                <figure class="w-[70%] h-[500px] relative">
                    <div class="w-[100%] h-[100%] bg-color4 absolute left-8 top-8"></div>
                    <img src="/static/img/about.jpeg" alt="" class="w-[100%] h-[100%] absolute z-10 object-cover hover:scale-[.95] transition-all duration-500">
                </figure>
            </div>
        </div>
    </section>
    <section class="w-full flex justify-center bg-color7 py-8 ">
        <div class="w-full container 2xl:px-36">
            <div>
                <p class="text-color4 uppercase px-5">Выбирайте лучшее</p>
                <p class="text-5xl font-secondary text-color3 px-5">Популярные <span class="text-color1">Туры</span></p>
                <div class="flex flex-wrap md:justify-between gap-10 px-6 xl:px-0 py-8 lg:px-3 ">
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000 ">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Мальдивы тур</p>
                            <p class="text-color1 mb-4">$2.500 / с человека</p>
                            <p class="text-color6">Обязательно побывайте на этих островах - поверьте, Мальдивы того стоят</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">12 Дней</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Mальдивы</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">12+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2">9.8 Звёзд</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/maldives1.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-1 top-12 rotate-[-90deg] ">Мальдивы</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Мальдивы тур</p>
                            <p class="text-right">$2.500 / с человека</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000 ">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Рим</p>
                            <p class="text-color1 mb-4">$1.300 / с человека</p>
                            <p class="text-color6">Загляните в сердце Италии - его суетливую и притягательную столицу Рим</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">6 Дней</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Италия</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">10+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2"> 9.5 Звезд</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/2.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-1 top-12 rotate-[-90deg] ">Италия</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Рим</p>
                            <p class="text-right">$1.300 / с человека</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Франция</p>
                            <p class="text-color1 mb-4">$1.400 / с человека</p>
                            <p class="text-color6">Ваши ожидания не будут обмануты, если вы выберите Францию, страну известную своей модой и кухней, которые точно вас покорят</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">4 Дня</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Франция</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">12+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2">9.8 Звезд</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/france1.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-1 top-12 rotate-[-90deg] ">Франция</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Франция</p>
                            <p class="text-right">$1.400 / с человека</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000 ">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Греция</p>
                            <p class="text-color1 mb-4">$1000 / с человека</p>
                            <p class="text-color6">Это путешествие оставит в вас незабываемые впечатления на всю жизнь -  погрузитесь в магию Греции с нашим захватывающим туром</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">10 Дней</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Греция</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">12+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2">9.3 Звезды</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/greece1.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-[-15px] top-12 rotate-[-90deg] ">Греция</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Греция тур</p>
                            <p class="text-right">$1000 / с человека</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000 ">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Канада тур</p>
                            <p class="text-color1 mb-4">$2000 / с человека</p>
                            <p class="text-color6">Приготовьтесь к невероятному путешествию в просторы Канады, где вас ждут захватывающие горные пейзажи, величественные национальные парки и дружелюбные горожане</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">7 Дней</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Канада</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">10+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2"> 9.3 Звезды</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/canada1.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-[-15px] top-12 rotate-[-90deg] ">Канада</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Канада тур</p>
                            <p class="text-right">$3000 / с человека</p>
                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative photo transition-all duration-1000 ">
                        <div class="w-[100%] h-[100%] bottom-photo absolute bg-white flex flex-col justify-center px-5">
                            <p class="text-3xl text-color3 capitalize font-secondary">Дубай</p>
                            <p class="text-color1 mb-4">$2000 / с человека</p>
                            <p class="text-color6">Приготовьтесь к невероятному путешествию в Дубай, где современные чудеса и традиции сочетаются в удивительном симбиозе</p>
                            <div class="flex flex-wrap my-4">
                                <div class="w-[50%] flex"><i class="bi bi-clock text-color4"></i><p class="text-color6 ms-2">5 Дней</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-geo-alt text-color4"></i><p class="text-color6 ms-2">Дубай</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-person text-color4"></i></i><p class="text-color6 ms-2">10+</p></div>
                                <div class="w-[50%] flex"><i class="bi bi-emoji-smile text-color4"></i></i><p class="text-color6 ms-2">9.8 Звезд</p></div>
                            </div>
                            <a href="" class="underline decoration-color1 text-color6 flex mb-2">Тур детали</a>
                        </div>
                        <img src="/static/img/44-1.jpg" alt="" class="w-[100%] h-[100%] object-cover brightness-75 absolute">
                        <p class="absolute uppercase text-white bg-color3 px-4 py-1 right-[-15px] top-12 rotate-[-90deg] ">Дубай</p>
                        <figcaption class="absolute text-white bottom-8 right-10 fig">
                            <p class="capitalize font-secondary text-3xl">Дубай</p>
                            <p class="text-right">$2000 / с человека</p>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>
    <section class="w-full bg-sea py-32 relative bg-cover bg-fixed flex justify-center after:content-[''] after:absolute after:w-[100%] after:h-[100%] after:bg-black after:bg-opacity-50 after:top-0">
        <div class="w-full container 2xl:px-36 flex flex-wrap relative z-10 justify-center md:justify-between">
            <div class="w-full md:w-[20%] my-5 ">
                <figure class="flex flex-col items-center  group">
                    <div class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  "><i class="bi bi-airplane text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i class="bi bi-airplane text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i></div>
                    <figcaption class="text-center text-white font-secondary mt-10"><p class="text-3xl">100+</p><p class="text-xl">Авиабилетов</p></figcaption>
                </figure>
            </div>
            <div class="w-full md:w-[20%] my-5">
                <figure class="flex flex-col items-center  group">
                    <div class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  "><i class="bi bi-house-heart text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i class="bi bi-house-heart text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i></div>
                    <figcaption class="text-center text-white font-secondary mt-10"><p class="text-3xl">130+</p><p class="text-xl">Локаций</p></figcaption>
                </figure>
            </div>
            <div class="w-full md:w-[20%] my-5">
                <figure class="flex flex-col items-center  group">
                    <div class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  "><i class="bi bi-rocket text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i class="bi bi-rocket text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i></div>
                    <figcaption class="text-center text-white font-secondary mt-10"><p class="text-3xl">200+</p><p class="text-xl">Туров</p></figcaption>
                </figure>
            </div>
            <div class="w-full md:w-[20%] my-5">
                <figure class="flex flex-col items-center  group">
                    <div class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  "><i class="bi bi-postage-heart text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i class="bi bi-postage-heart text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i></div>
                    <figcaption class="text-center text-white font-secondary mt-10"><p class="text-3xl">220+</p><p class="text-xl">Отелей</p></figcaption>
                </figure>
            </div>

        </div>
    </section>
    <section class="w-full flex justify-center bg-color7 lg:h-[800px]">
        <div class="w-full container 2xl:px-36 py-16 bg-color7 ">
            <p class="text-color4 uppercase px-5">TOP-1 Стран</p>
            <p class="text-3xl sm:text-5xl font-secondary text-color1 px-5">от <span class=" text-color3">MyFlight</span></p>
            <div class="w-full flex lg:relative py-10 flex-wrap lg:px-3 xl:px-0 px-6">
                <figure class="w-full lg:w-[70%] lg:absolute">
                    <img src="/static/img/2.jpg" alt="" class="w-[100%]">
                </figure>
                <div class="w-full lg:w-[50%] lg:absolute lg:h-[400px] bg-map bg-no-repeat bg-center z-10 lg:right-0 xl:top-[170%] md:top-20 px-10 py-16 bg-white" >
                    <p class="uppercase text-color1">Мы рекомендуем</p>
                    <p class="uppercase text-3xl font-secondary text-color3 pb-4">Италия, Европа</p>
                    <p class="text-color6">Отправляйтесь в магическое путешествие в Италию и погрузитесь в волшебство
                        этой удивительной страны. От Рима с его величественными руинами до Венеции с ее романтическими
                        каналами - Италия оставит в вас след непередаваемой красоты. Откройте для себя вкус итальянской кухни,
                        наслаждайтесь богатыми ароматами итальянского кофе и попробуйте настоящую пиццу Неаполя.
                        Путешествие в Италию - это воплощение страсти, искусства и бесконечного очарования.</p>
                    <div class=" flex flex-wrap py-4 ">
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Рим</p></div>
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Венеция</p></div>
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Милан</p></div>
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Неаполь</p></div>
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Флоренция</p></div>
                        <div class="flex w-[33%]"><i class="bi bi-geo-alt text-color1"></i><p class="text-color6">Парма</p></div>

                    </div>
                    <a href="" class="capitalize flex py-4 relative  text-color1 before:content-[''] before:h-[1px] before:absolute before:w-[100%] before:bg-color6 before:bg-opacity-50 before:top-0"><p>Увидеть все рекомендации</p><i class="bi bi-arrow-right"></i></a>

                </div>
            </div>
        </div>
    </section>
    <section class="w-full bg-boat bg-cover bg-bottom bg-no-repeat h-[50vh] flex justify-center bg-color2 bg-blend-multiply bg-opacity-50">
        <div class="w-full container flex justify-center items-center flex-col">
            <p class="text-white font-secondary text-3xl 2xl:text-6xl">Отель "Kuramathi Maldives"</p>
            <div class="flex mt-5 gap-5">
                <div class="flex items-center"><i class="bi bi-geo-alt text-white text-2xl me-2"></i><p class="text-white">Мальдивы</p></div>
                <div class="flex items-center"><i class="bi bi-clock text-white text-2xl me-2"></i><p class="text-white"> 4 Дня + 3 Ночи   </p></div>
            </div>
        </div>
    </section>
    <section class="w-full flex justify-center bg-color7 py-8 ">
        <div class="w-full container 2xl:px-36">
            <div>
                <p class="text-color4 uppercase px-5">Выгодные предложения</p>
                <p class="text-5xl font-secondary text-color3 px-5">Горящие <span class="text-color1">Туры</span></p>
                <div class="flex flex-wrap justify-center xl:justify-between gap-10 px-6 xl:px-0 py-8 lg:px-3 ">
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000 overflow-hidden group ">
                        <img src="/static/img/canada1-1.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000">
                        <p class="absolute uppercase text-white bg-color1 px-4 py-1 right-1 top-12 rotate-[-90deg] ">2 Тура</p>
                        <figcaption class="absolute text-white bottom-[20px] left-5  group-hover:bottom-[50px]  transition-all duration-700 w-full  ">
                            <div class="flex after:contetn-[''] after:h-[1px] after:bg-op-50 after:w-[20%] after:bg-white after:absolute after:bottom-[-8px] group-hover:after:w-[90%]  after:transition-all after:duration-1000" ><i class="bi bi-geo-alt text-2xl text-white me-2"></i> <p class="capitalize font-secondary text-3xl">Canada</p></div>
                            <div class="flex justify-between absolute  mt-5 w-full  ">
                                <p>2 тура (выгодно)</p>
                                <a href="" class="flex  me-9 " >-><i class="bi bi-arrow-right"></i></a>
                            </div>

                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000 overflow-hidden group ">
                        <img src="/static/img/maldives1-1.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000">
                        <p class="absolute uppercase text-white bg-color1 px-4 py-1 right-1 top-12 rotate-[-90deg] ">3 Тура</p>
                        <figcaption class="absolute text-white bottom-[20px] left-5  group-hover:bottom-[50px]  transition-all duration-700 w-full  ">
                            <div class="flex after:contetn-[''] after:h-[1px] after:bg-op-50 after:w-[20%] after:bg-white after:absolute after:bottom-[-8px] group-hover:after:w-[90%]  after:transition-all after:duration-1000" ><i class="bi bi-geo-alt text-2xl text-white me-2"></i> <p class="capitalize font-secondary text-3xl">Maldives</p></div>
                            <div class="flex justify-between absolute  mt-5 w-full  ">
                                <p>3 тура (акция)</p>
                                <a href="" class="flex  me-9  " >-><i class="bi bi-arrow-right"></i></a>
                            </div>

                        </figcaption>
                    </figure>
                    <figure class="w-full md:w-[45%] xl:w-[30%] h-[450px] relative  transition-all duration-1000 overflow-hidden group ">
                        <img src="/static/img/italy1.jpeg" alt="" class="w-[100%] h-[100%] object-cover group-hover:brightness-75 group-hover:scale-[1.2] absolute transition-all duration-1000">
                        <p class="absolute uppercase text-white bg-color1 px-4 py-1 right-1 top-12 rotate-[-90deg] ">2 Тура</p>
                        <figcaption class="absolute text-white bottom-[20px] left-5  group-hover:bottom-[50px]  transition-all duration-700 w-full  ">
                            <div class="flex after:contetn-[''] after:h-[1px] after:bg-op-50 after:w-[20%] after:bg-white after:absolute after:bottom-[-8px] group-hover:after:w-[90%]  after:transition-all after:duration-1000" ><i class="bi bi-geo-alt text-2xl text-white me-2"></i> <p class="capitalize font-secondary text-3xl">Italy</p></div>
                            <div class="flex justify-between absolute  mt-5 w-full  ">
                                <p>2 тура (даром)</p>
                                <a href="" class="flex me-9 " >-><i class="bi bi-arrow-right"></i></a>
                            </div>

                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
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
