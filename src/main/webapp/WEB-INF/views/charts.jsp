<%-- Created by IntelliJ IDEA. User: Admin Date: 20.11.2023 Time: 9:52 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MyFlight</title>
  <link rel="stylesheet" href="/static/css/output.css" />
  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
</head>

<body class="font-primary">
<main class="w-full">
  <section
          class="w-full h-[100vh]  bg-header  bg-cover bg-no-repeat bg-center bg-color1 bg-blend-multiply bg-opacity-60 ">
    <section class="w-full flex flex-wrap justify-center ">
      <header
              class="w-[85%]  xl:w-[73%]  container hidden lg:flex justify-between h-[60px]  items-center py-[45px] border-b-[1px] border-white border-opacity-40">
        <figure class="w-[140px]">
          <img src="/static/img/logo-light.png" alt="" class="w-[100%]">
        </figure>
        <nav class="h-[100%] md:w-[70%]">
          <ul class="h-[100%] flex items-center gap-8 justify-end">
            <li class="list-none  "><a
                    class="decoration-none text-white hover:text-color3 transition-all duration-500"
                    href="/">Главная</a></li>
            <li class="list-none"><a
                    class="decoration-none text-white  hover:text-color3 transition-all duration-500"
                    href="/logout">Выйти</a></li>
          </ul>
        </nav>
      </header>


    </section>
    <section class="w-full flex justify-center mt-[180px]" style="margin-top: 5px">
      <div class="w-[700px] md:w-[900px] container h-auto  ">
        <h2 class="w-full text-center uppercase text-white tracking-widest [word-spacing:8px] mb-4"
            style="font-size: 25px">${admin.firstName}, здравствуйте!</h2>
        <h2
                class="w-full text-center text-white text-5xl md:text-7xl font-secondary uppercase tracking-widest">
          МЕНЮ <span class="travol">Администратора</span></h2>
      </div>
    </section>



    <section class="w-full flex justify-center mt-[180px]" style="margin-top: 230px">
      <div
              class="w-full container 2xl:px-36 flex flex-wrap relative z-10 justify-center md:justify-between">

        <div class="w-full md:w-[20%] my-5 ">
          <a href="/admin/users">
            <figure class="flex flex-col items-center  group">
              <div
                      class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  ">
                <i
                        class="bi bi-person-fill-gear text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i
                      class="bi bi-person-fill-gear text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i>
              </div>
              <figcaption class="text-center text-white font-secondary mt-10">
                <p class="text-3xl">Работа</p>
                <p class="text-xl">с пользователями</p>
              </figcaption>
            </figure>
          </a>
        </div>
        <div class="w-full md:w-[20%] my-5">
          <a href="/admin/data">
            <figure class="flex flex-col items-center  group">
              <div
                      class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  ">
                <i
                        class="bi bi-database-fill-gear text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i
                      class="bi bi-database-fill-gear text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i>
              </div>
              <figcaption class="text-center text-white font-secondary mt-10">
                <p class="text-3xl">Работа</p>
                <p class="text-xl">с данными</p>
              </figcaption>
            </figure>
          </a>
        </div>
        <div class="w-full md:w-[20%] my-5">
          <a href="/admin/orders">
            <figure class="flex flex-col items-center  group">
              <div
                      class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  ">
                <i
                        class="bi bi-cart4 text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i
                      class="bi bi-cart4 text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i>
              </div>
              <figcaption class="text-center text-white font-secondary mt-10">
                <p class="text-3xl">Корзина</p>
                <p class="text-xl">заказов</p>
              </figcaption>
            </figure>
          </a>
        </div>
        <div class="w-full md:w-[20%] my-5">
          <a href="/admin/comments">
            <figure class="flex flex-col items-center  group">
              <div
                      class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  ">
                <i
                        class="bi bi-chat-left-text text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i
                      class="bi bi-chat-left-text text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i>
              </div>
              <figcaption class="text-center text-white font-secondary mt-10">
                <p class="text-3xl">Отзывы</p>
                <p class="text-xl">пользователей</p>
              </figcaption>
            </figure>
          </a>
        </div>

        <div class="w-full md:w-[20%] my-5">
          <a href="/admin/statistics">
            <figure class="flex flex-col items-center  group">
              <div
                      class="bg-white bg-opacity-50  rounded-[50%] p-5 flex items-center relative overflow-hidden outline outline-8  outline-offset-8 out  ">
                <i
                        class="bi bi-clipboard-data text-5xl text-white absolute ms-[-100%] group-hover:ms-[0%] transition-all duration-300"></i><i
                      class="bi bi-clipboard-data text-5xl text-white  group-hover:ms-[200%] transition-all duration-300"></i>
              </div>
              <figcaption class="text-center text-white font-secondary mt-10">
                <p class="text-3xl">Просмотр</p>
                <p class="text-xl">статистики</p>
              </figcaption>
            </figure>
          </a>
        </div>
      </div>
    </section>

  </section>

  <section class="w-full justify-center mt-[80px] hidden lg:flex relative" style="margin-top: 30px">
    <div class=" bg-white bg-opacity-40 container absolute w-[1000px] xl:w-[1200px] h-[100px] flex justify-center items-center backdrop-blur-lg"
         style="height: 200px; margin: 10px">
      <div class="w-[950px] xl:w-[1100px]  container h-auto absolute m-[10px]"
           style="height: 200px; margin: 10px">

        <div class="container">
          <!-- <div class="row">
              <div class="col-sm">
                  <h3 style="text-align: center">Самые посещаемы страны</h3>
                  <canvas id="myChart1" width="300" height="300"></canvas>
              </div>
              <div class="col-sm">
                  <h3 style="text-align: center">График продажи туров</h3>
                  <canvas id="myChart2" width="350" height="350"></canvas>
              </div>
              <div class="col-sm">
                  <h3 style="text-align: center">Активность пользователей</h3>
                  <canvas id="myChart3" width="350" height="350"></canvas>
              </div>
          </div> -->


          <div class="row">

            <div class="col">
              <h3>Users count</h3>
              <canvas id="usersChart"></canvas>
            </div>

            <div class="col">
              <h3>Most visited countries</h3>
              <canvas id="countriesChart"></canvas>
            </div>

            <div class="col">
              <h3>Tours sales</h3>
              <canvas id="toursChart"></canvas>
            </div>

            <div class="col">
              <h3>Users activity</h3>
              <canvas id="peopleChart"></canvas>
            </div>

          </div>


        </div>

      </div>
    </div>
  </section>

  <section class="w-full flex justify-center h-auto  bg-color3">
    <footer class="w-full container h-auto flex flex-col 2xl:px-36 ">
      <div
              class="flex justify-center border items-center boder-1 border-color5 my-10 flex-wrap mx-6 ">
        <div
                class="w-full lg:w-[30%] flex  items-center py-2 lg:border-r-2 lg:border-r-color5 my-5 ps-8 lg:ps-0">
          <i class="bi bi-telephone-outbound text-4xl me-4 text-white bg-color1 p-3"></i>
          <div class="w-full text-white">
            <p class="font-secondary">Звоните</p>
            <p>+375(29)-214-83-48</p>
          </div>
        </div>
        <div
                class="w-full lg:w-[35%] flex items-center py-2 lg:border-r-2 lg:border-r-color5 my-5 ps-8">
          <i class="bi-envelope-paper text-4xl me-4 text-white bg-color1 p-3"></i>
          <div class="w-full text-white">
            <p class="font-secondary">Пишите</p>
            <p>marinakotova271003@gmail.com</p>
          </div>
        </div>
        <div class="w-full lg:w-[30%] flex items-center py-2 my-5 ps-8">
          <i class="bi bi-map text-4xl me-4 text-white bg-color1 p-3 "></i>
          <div class="w-full text-white">
            <p class="font-secondary">Приходите</p>
            <p>Беларусь, Минск</p>
          </div>
        </div>
      </div>
      <div class="flex  justify-between  my-10 flex-wrap  ">
        <div class="w-full md:w-[30%] flex flex-col py-2  my-5 px-6 ">
          <figure class="w-[80%]">
            <img src="/static/img/logo-light.png" alt="" class="w-[100%]">
          </figure>
          <p class="text-color6 my-5">"Раскройте крылья своих мечтаний с MyFlight - вашим
            путеводителем в мир приключений и незабываемых полетов."</p>
          <ul class="flex  ">
            <li class="me-5"><a href=""><i
                    class="bi bi-instagram text-white bg-color1 p-3 rounded-[50%]"></i></a>
            </li>
            <li class="me-5"><a href=""><i
                    class="bi bi-github text-white  bg-color1 p-3 rounded-[50%]"></i></a>
            </li>
            <li class="me-5"><a href=""><i
                    class="bi bi-linkedin text-white  bg-color1 p-3 rounded-[50%]"></i></a>
            </li>
          </ul>
        </div>
        <div class="w-full md:w-[30%] flex flex-col py-2  my-5 md:ps-20 px-6 ">
          <p class="font-secondary text-white text-xl xl:text-2xl">Быстрые ссылки</p>
          <ul class="mt-7 px-6">
            <li class="my-2 list-disc marker:text-color1"><a href="/tours"
                                                             class="text-color6">Туры</a></li>
            <li class="list-disc marker:text-color1"><a href="/registration"
                                                        class="text-color6">Регистрация</a></li>
            <li class="my-2 list-disc marker:text-color1"><a href="/log"
                                                             class="text-color6">Авторизация</a></li>
          </ul>
        </div>
        <div class="w-full md:w-[28%] flex flex-col  py-2 my-5 px-6 md:px-0 ">
          <p class="font-secondary text-2xl text-white ">Отзовик</p>
          <p class="text-color6 mt-5">Мы интересуемся вашим мнением - даже без аккаунта вы
            можете оставить свой отзыв</p>
          <form action="/reviews" type="post" class="mt-5 flex w-full flex-wrap"><input
                  type="text" placeholder="Отзыв" class="px-2 py-5">
            <button type="submit"
                    class="text-white bg-color4 py-5 px-3 flex mt-0 md:mt-2 lg:mt-0">Отправить</button>
          </form>
        </div>
      </div>
      <p
              class="text-stone-300 text-left py-5  text-[14px] relative before:content-[''] before:h-[3px] before:w-[100%] before:bg-stone-400 before:absolute before:top-0 before:bg-opacity-50">
        ©2023 Марина Котова. ПрогСП - 3 курс 1 сем, курсовой проект, WebApp Java Spring MVC
        Hibernate JSP MySQL.</p>
    </footer>
  </section>

</main>
</body>
<script src="${pageContext.request.contextPath}/static/js/master.js"></script>
<script src="${pageContext.request.contextPath}/static/js/chart.js"></script>
<script src="${pageContext.request.contextPath}/static/js/chartsScript.js"></script>


<script>

  let usersData = ${ users };
  let usersChartData = {
    labels: usersData.map(obj => Object.keys(obj)[0]),
    datasets: [{
      label: 'Number of users',
      data: usersData.map(obj => Object.values(obj)[0]),
      backgroundColor: 'rgb(255, 99, 132)'
    }]
  };
  let usersChartConfig = {
    type: 'bar',

  };
  let usersChart = new Chart(document.getElementById('usersChart'), usersChartConfig);
  usersChart.data = usersChartData;
  usersChart.update()



  let countriesData = ${ countries };
  let countriesChartData = {
    labels: countriesData.map(obj => Object.keys(obj)[0]),
    datasets: [{
      label: 'Number of visitors',
      data: countriesData.map(obj => Object.values(obj)[0]),
      backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)']
    }]
  };
  let countriesChartConfig = {
    type: 'pie',
    options: {
      responsive: true
    }
  };
  let countriesChart = new Chart(document.getElementById('countriesChart'), countriesChartConfig);
  countriesChart.data = countriesChartData;
  countriesChart.update();



  let toursData = ${ tours };
  let toursChartData = {
    labels: toursData.map(obj => Object.keys(obj)[0]),
    datasets: [{
      label: 'Number of tours sold',
      data: toursData.map(obj => Object.values(obj)[0]),
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',
      borderWidth: 1
    }]
  };
  let toursChartConfig = {
    type: 'line'
  };
  let toursChart = new Chart(document.getElementById('toursChart'), toursChartConfig);
  toursChart.data = toursChartData;
  toursChart.update();



  let peopleData = ${ people };
  let peopleChartData = {
    labels: peopleData.map(obj => Object.keys(obj)[0]),
    datasets: [{
      label: 'Users activity',
      data: peopleData.map(obj => Object.values(obj)[0]),
      backgroundColor: 'rgb(153, 102, 255)'
    }]
  };
  let peopleChartConfig = {
    type: 'bar'
  };
  let peopleChart = new Chart(document.getElementById('peopleChart'), peopleChartConfig);
  peopleChart.data = peopleChartData;
  peopleChart.update()


</script>



</html>