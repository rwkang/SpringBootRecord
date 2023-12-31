<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-04
  Time: 오전 1:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/style.css">

</head>


<body class="d-flex align-items-center justify-content-md-center py-4 bg-body-tertiary">
<!--<body class="d-flex align-items-center py-4 bg-body-tertiary"> -->
<!--justify-content-md-center: 이게 없으면, 디폴트로 "왼쪽 정렬 상태"-->

<div class="b-example-divider"></div>

<!--<header class="p-3 text-bg-dark">-->
<!--    <div class="container">-->
<!--        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">-->
<!--            &lt;!&ndash;        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">&ndash;&gt;-->
<!--            &lt;!&ndash;          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>&ndash;&gt;-->
<!--            &lt;!&ndash;        </a>&ndash;&gt;-->

<!--            &lt;!&ndash;        logo 추가&ndash;&gt;-->
<!--            <img id="logo_img" class="logo_img" src="/images/logo-removebg.png">-->


<!--            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">-->
<!--                <li><a href="#" class="nav-link px-2 text-white">Home</a></li>-->
<!--&lt;!&ndash;                <li><a href="/base/home.html.notuse" class="nav-link px-2 text-secondary">Home</a></li>&ndash;&gt;-->
<!--                <li><a href="/base/studied.html 사용불가" class="nav-link px-2 text-white">공부 일지</a></li>-->
<!--                <li><a href="/base/member_list.html" class="nav-link px-2 text-white">회원 목록</a></li>-->
<!--                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>-->
<!--                <li><a href="#" class="nav-link px-2 text-white">About</a></li>-->
<!--            </ul>-->

<!--            &lt;!&ndash;        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">&ndash;&gt;-->
<!--            &lt;!&ndash;          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">&ndash;&gt;-->
<!--            &lt;!&ndash;        </form>&ndash;&gt;-->

<!--            <div class="text-end">-->
<!--                <button type="button" class="btn btn-outline-light me-2">Login</button>-->
<!--                <button type="button" class="btn btn-warning">Sign-up</button>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</header>-->

<div class="b-example-divider"></div>

<div class="container">
  <!--<div class="sm">-->
  <main class="form-signin w-100 m-auto">
    <form>
      <img class="logo_img mb-4" src="/images/logo-removebg.png" alt="" width="72" height="57">
      <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

      <div class="form-floating">
        <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
        <label for="floatingInput">Email address</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
        <label for="floatingPassword">Password</label>
      </div>

      <div class="form-check text-start my-3">
        <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
          Remember me
        </label>
      </div>
      <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>

    </form>

  </main>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>