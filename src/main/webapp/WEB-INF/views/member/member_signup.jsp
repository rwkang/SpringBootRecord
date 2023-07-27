<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springboot.record.vo.VoStudy" %><%--
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-12
  Time: 오전 3:21
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

<!-- header 부분 -->
<%@include file="/WEB-INF/views/common/header.jsp" %>

<div class="b-example-divider"></div>

<main>

<%--    <div class="container">--%>
<%--        <!--<div class="sm">-->--%>
<%--        <div class="form-signin w-100 m-auto">--%>
<%--            <form class="pt-3 pb-5" name="frm_signin" action="/member/member_inserted" method="post">--%>
<%--                <h1 class="h3 mb-3 fw-normal">Please sign in</h1>--%>

<%--                <div class="form-floating">--%>
<%--                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="loginId">--%>
<%--                    <label for="floatingInput">Email address</label>--%>
<%--                </div>--%>
<%--                <div class="form-floating">--%>
<%--                    <input type="email" class="form-control" id="floatingId" placeholder="닉네임을 입력하시오!" name="nickName">--%>
<%--                    <label for="floatingId">닉네임</label>--%>
<%--                </div>--%>
<%--                <div class="form-floating">--%>
<%--                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">--%>
<%--                    <label for="floatingPassword">Password</label>--%>
<%--                </div>--%>
<%--                <div class="form-floating">--%>
<%--                    <input type="text" class="form-control" id="floatingRole" placeholder="권한을 선택하시오!" name="role">--%>
<%--&lt;%&ndash;                    <label for="floatingRole">권한</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="row mb-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div class="col-sm-9 btn-group" role="group" aria-label="Basic radio toggle button group">&ndash;%&gt;--%>
<%--                            <input type="radio" class="btn-check form-control" name="role" id="btnradio1" autocomplete="off">--%>
<%--&lt;%&ndash;                            <label class="btn btn-outline-primary" for="btnradio1">Member</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <input type="radio" class="btn-check" name="role" id="btnradio2" autocomplete="off">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <label class="btn btn-outline-primary" for="btnradio2">Read Only</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <input type="radio" class="btn-check" name="role" id="btnradio3" autocomplete="off">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <label class="btn btn-outline-primary" for="btnradio3">Admin</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--                </div>--%>

<%--&lt;%&ndash;                <div class="row mb-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <label class="col-sm-1 ms-5 col-form-label">권한</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="col-sm-9 btn-group" role="group" aria-label="Basic radio toggle button group">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <input type="radio" class="btn-check" name="role" id="btnradio1" autocomplete="off">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label class="btn btn-outline-primary" for="btnradio1">Member</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <input type="radio" class="btn-check" name="role" id="btnradio2" autocomplete="off">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label class="btn btn-outline-primary" for="btnradio2">Read Only</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <input type="radio" class="btn-check" name="role" id="btnradio3" autocomplete="off">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label class="btn btn-outline-primary" for="btnradio3">Admin</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>

<%--                <div class="form-check text-start my-3">--%>
<%--                    <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">--%>
<%--                    <label class="form-check-label" for="flexCheckDefault">--%>
<%--                        Remember me--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--                <div class="position-absolute start-50 translate-middle mt-3">--%>
<%--                    <input type="submit" class="btn btn-primary" value="등록하기">--%>
<%--                </div>--%>

<%--&lt;%&ndash;                <button class="btn btn-primary w-100 py-2" type="submit">등록하기</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>&ndash;%&gt;--%>

<%--            </form>--%>

<%--        </div>--%>
<%--    </div>--%>



<%--  <form class="row g-3"> 상단 Top Menu 부분을 침범하네 --%>
    <form class="pt-3 pb-5" name="frm_study_insert" action="/member/member_inserted" method="post">
        <%--    <div class="mb-3 row"> row: 없으면 lave과 input이 2줄로 나오고 1줄 전체(왼쪽 처음부터 오른쪽 끝까지)를 사용하겠다는 의미, mb: Margin Bottom --%>
        <div class="row mb-3">
            <label for="staticLoginId" class="col-sm-1 ms-5 col-form-label">ID</label>
            <div class="col-sm-9">
                <!-- ***** 2023.07.12 Conclusion. 여기 엄청 중요 주의 사항 : 아래 <input> 태그에 반드시 name 항목이 있어야 하고,
                                                  또한 그 값이 반드시 VoStudy.java 파일의 private 변수명과 동일해아 한다는 것이다 *****
                                                  그렇게 Mapping되었을 때, Study.java Controller 파일.doModified() 메서드에서
                                                  doModified(@ModelAttribute VoStudy voStudy) 이와 같이 사용했을 때,
                                                  현재 화면의 [수정하고자 하는 컬럼 값들]을,
                                                  [name]으로 받아 올 수 있는 것이다. -->
                <%--        <input type="text" readonly class="form-control" id="staticKeyId" name="keyId" value="자동 생성">--%>
                <input type="text" class="form-control" id="staticLoginId" placeholder="email@example.com" name="loginId">
            </div>
        </div>
        <div class="row mb-3">
            <label for="staticPassword" class="col-sm-1 ms-5 col-form-label">Password</label>
            <div class="col-sm-9">
                <input type="password" class="form-control" id="staticPassword" name="password" value="">
            </div>
        </div>
        <div class="row mb-3">
            <label for="staticName" class="col-sm-1 ms-5 col-form-label">Name</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="staticName" name="name" value="">
            </div>
        </div>
<%--        <div class="row mb-3">--%>
<%--            <label for="staticRole" class="col-sm-1 ms-5 col-form-label">권한</label>--%>
<%--            <div class="col-sm-9">--%>
<%--                <input type="text" class="form-control" id="staticRole" name="role" value="">--%>
<%--            </div>--%>
<%--        </div>--%>

        <div class="row mb-3">
            <leble class="col-sm-1 ms-5 col-form-label">권한</leble>
            <input type="radio" class="form-check-input" name="role" value="Member">Member
            <input type="radio" class="form-check-input" name="role" value="Admin">Admin
        </div>
<%--                <div class="row mb-3">--%>
<%--                    <label class="col-sm-1 ms-5 col-form-label">권한</label>--%>
<%--                    <div class="col-sm-9 btn-group" role="group" aria-label="Basic radio toggle button group">--%>
<%--                        <input type="radio" class="btn-check" name="role" id="btnradio1" autocomplete="off">--%>
<%--                        <label class="btn btn-outline-primary" for="btnradio1">Member</label>--%>
<%--                        <input type="radio" class="btn-check" name="role" id="btnradio2" autocomplete="off">--%>
<%--                        <label class="btn btn-outline-primary" for="btnradio2">Read Only</label>--%>
<%--                        <input type="radio" class="btn-check" name="role" id="btnradio3" autocomplete="off">--%>
<%--                        <label class="btn btn-outline-primary" for="btnradio3">Admin</label>--%>
<%--                    </div>--%>
<%--                </div>--%>

        <div class="position-absolute start-50 translate-middle mt-3">
            <input type="submit" class="btn btn-primary" value="Sign in">
        </div>
    </form>

</main>

<div class="b-example-divider"></div>

<!-- footer 부분 -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>