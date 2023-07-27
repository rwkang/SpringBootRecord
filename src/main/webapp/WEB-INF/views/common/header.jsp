<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-04
  Time: 오전 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%--여기를 실행하지 않으면, 한글이 깨지는 현상 발생 --%>

<header class="p-3 text-bg-dark">
  <div class="container">
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <!--        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">-->
      <!--          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>-->
      <!--        </a>-->

      <!--        logo 추가-->
      <img id="logo_img" class="logo_img" src="/images/logo-removebg.png">


      <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
        <li><a href="/" class="nav-link px-2 text-white">Home</a></li>
        <!--                <li><a href="/base/home.html.notuse" class="nav-link px-2 text-secondary">Home</a></li>-->
        <li><a href="/home/menu_list" class="nav-link px-2 text-white">메뉴</a></li>
        <li><a href="/home/study_list" class="nav-link px-2 text-white">공부 일지</a></li>
        <li><a href="/home/member_list" class="nav-link px-2 text-white">회원 목록</a></li>
        <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 text-white">About</a></li>
      </ul>

      <!--        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">-->
      <!--          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">-->
      <!--        </form>-->

      <div class="text-end">
        <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/member/member_login'">Login</button>
        <button type="button" class="btn btn-warning" onclick="location.href='/member/member_signup'">Sign-up</button>
      </div>
    </div>
  </div>
</header>
