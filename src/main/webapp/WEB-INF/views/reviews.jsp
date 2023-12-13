<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<div class="w-full md:w-[28%] flex flex-col  py-2 my-5 px-6 md:px-0 ">
    <p class="font-secondary text-2xl text-white ">Отзовик</p>
    <p class="text-color6 mt-5">Мы интересуемся вашим мнением - даже без аккаунта вы можете оставить свой отзыв</p>
    <form id="reviewForm" action="/reviews" type="post" class="mt-5 flex w-full flex-wrap">
        <input type="text" placeholder="Отзыв" class="px-2 py-5">
        <button type="submit" class="text-white bg-color4 py-5 px-3 flex mt-0 md:mt-2 lg:mt-0">Отправить</button>
    </form>
</div>
<script src="${pageContext.request.contextPath}/static/js/comments.js"></script>