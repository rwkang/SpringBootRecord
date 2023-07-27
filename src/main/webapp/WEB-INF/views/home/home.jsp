<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-04
  Time: 오전 12:14
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
<body>
<div class="b-example-divider"></div>

<%-- 헤더 부분--%>
<%@include file="/WEB-INF/views/common/header.jsp" %>

<div class="b-example-divider"></div>

<main>
    <div class="px-3 py-1 my-1 text-center">
        <%--    <div class="py-1 text-center">--%>
        <img class="logo_img d-block mx-auto mb-4" src="/images/logo-removebg.png" alt="" width="300" height="600">

        <div class="container text-center py-1 my-1 border-top border-bottom">
            <div class="row row-cols-10 text-center py-3 border-top border-bottom">
                <div class="col-sm-4">
<%--                    <img class="rounded mx-auto d-block" src="/images/home-left.png" alt="">--%>
<%--                    <img class="img-fluid img-thumbnail rounded mx-auto d-block" src="/images/home-left.png" alt="">--%>
                    <img class="img-fluid rounded mx-auto d-block" src="/images/home-left.jpg" alt="">
                </div>
                <div class="col-sm-6">
                    <h1 class="display-5 fw-bold text-body-emphasis">스프링 부트 스터디</h1>
                    <div class="col-lg-10 mx-auto">
                        <p class="lead mb-4">자바 웹 개발을 위해 스프링 부트를 공부하고 있습니다.<br>
                            이 영상은 내 스스로가 공부한 내용을 까먹지 않기 위해 만들고 있습니다. <br>
                            아주 초보적인 내용이지만 저와 같은 분들에게 도움이 되면 그 또한 즐거운 일일 것입니다.
                        </p>
                        Java 버전 : 1.11<br>
                        개발툴 : IntelliJ<br>
                        DBMS : Oracle 19c<br>
                        View : jsp<br>
                        Mapper : Mybatis<br>
                        <!--        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">-->
                        <!--            <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Primary button</button>-->
                        <!--            <button type="button" class="btn btn-outline-secondary btn-lg px-4">Secondary</button>-->
                        <!--        </div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- footer 부분 -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>