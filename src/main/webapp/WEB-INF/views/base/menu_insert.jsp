<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springboot.record.vo.VoMenu" %><%--
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

    <%--  <form class="row g-3"> 상단 Top Menu 부분을 침범하네 --%>
    <form class="pt-3 pb-5" name="frm_study_insert" action="/base/menu_inserted" method="post">
        <%--    <div class="mb-3 row"> row: 없으면 lave과 input이 2줄로 나오고 1줄 전체(왼쪽 처음부터 오른쪽 끝까지)를 사용하겠다는 의미, mb: Margin Bottom --%>
        <div class="row mb-3">
            <label for="staticId" class="col-sm-1 ms-5 col-form-label">ID</label>
            <div class="col-sm-9">
                <!-- ***** 2023.07.12 Conclusion. 여기 엄청 중요 주의 사항 : 아래 <input> 태그에 반드시 name 항목이 있어야 하고,
                                                  또한 그 값이 반드시 VoStudy.java 파일의 private 변수명과 동일해아 한다는 것이다 *****
                                                  그렇게 Mapping되었을 때, Study.java Controller 파일.doModified() 메서드에서
                                                  doModified(@ModelAttribute VoStudy voStudy) 이와 같이 사용했을 때,
                                                  현재 화면의 [수정하고자 하는 컬럼 값들]을,
                                                  [name]으로 받아 올 수 있는 것이다. -->
                <input type="text" readonly class="form-control" id="staticId" name="id" value="자동 생성">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputCode" class="col-sm-1 ms-5 col-form-label">코드</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputCode" name="code" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputCode1" class="col-sm-1 ms-5 col-form-label">코드1</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputCode1" name="menu1" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputCode2" class="col-sm-1 ms-5 col-form-label">코드2</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputCode2" name="menu2" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputCode3" class="col-sm-1 ms-5 col-form-label">코드3</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputCode3" name="menu3" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputCode4" class="col-sm-1 ms-5 col-form-label">코드4</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputCode4" name="menu4" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputLanguage1" class="col-sm-1 ms-5 col-form-label">영어</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputLanguage1" name="language1" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputLanguage2" class="col-sm-1 ms-5 col-form-label">한국어</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputLanguage2" name="language2" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputLanguage3" class="col-sm-1 ms-5 col-form-label">언어3</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputLanguage3" name="language3" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputLanguage4" class="col-sm-1 ms-5 col-form-label">언어4</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputLanguage4" name="language4" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputUserId" class="col-sm-1 ms-5 col-form-label">사용자</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputUserId" name="userId" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputWintype" class="col-sm-1 ms-5 col-form-label">Win Type</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputWintype" name="winType" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputWinName" class="col-sm-1 ms-5 col-form-label">Win Name</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputWinName" name="winName" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputWinParam" class="col-sm-1 ms-5 col-form-label">Win Param</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputWinParam" name="winParam" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputIsAccess" class="col-sm-1 ms-5 col-form-label">형태</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputIsAccess" name="isAccess" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputAuthorityId" class="col-sm-1 ms-5 col-form-label">권한</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputAuthorityId" name="authorityId" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputModifiedUserId" class="col-sm-1 ms-5 col-form-label">수정자</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputModifiedUserId" name="modifiedUserId" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputModifiedDate" class="col-sm-1 ms-5 col-form-label">수정일</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputModifiedDate" name="modifiedDate" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputRegUserId" class="col-sm-1 ms-5 col-form-label">등록자</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputRegUserId" name="regUserId" value=""></div>
        </div>
        <div class="row mb-3">
            <label for="inputRegDate" class="col-sm-1 ms-5 col-form-label">등록일</label>
            <div class="col-sm-9"><input type="text" class="form-control" id="inputRegDate" name="regDate" value=""></div>
        </div>


<%--        <div class="row mb-3">--%>
<%--            <label for="inputIsAccess" class="col-sm-1 ms-5 col-form-label">형태</label>--%>
<%--            <div class="col-sm-9">--%>
<%--                <input type="text" class="form-control" id="inputIsAccess" name="is_access" value="">--%>
<%--            </div>--%>
<%--            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">--%>
<%--                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off">--%>
<%--                <label class="btn btn-outline-primary" for="btnradio1">사용</label>--%>
<%--                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">--%>
<%--                <label class="btn btn-outline-primary" for="btnradio2">미사용</label>--%>
<%--                <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">--%>
<%--                <label class="btn btn-outline-primary" for="btnradio3">즐겨찾기</label>--%>
<%--            </div>--%>
<%--        </div>--%>

        <%--    <div class="row mb-3">--%>
        <%--    <div class="d-grid gap-2 col-6 max-auto d-md-block">--%>
        <div class="position-absolute start-50 translate-middle mt-3">
            <%--      <a class="btn btn-primary" href="#" role="button">수정하기</a>--%>
            <input type="submit" class="btn btn-primary" value="추가하기">
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