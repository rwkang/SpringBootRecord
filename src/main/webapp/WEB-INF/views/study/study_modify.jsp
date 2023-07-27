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

<%
    // 1. request, 2. model 방식
    //List<Map<String, String>> list = (List<Map<String, String>>) request.getAttribute("list");
    // 3. VO 방식
    VoStudy dbData = (VoStudy) request.getAttribute("voStudyOne");
%>

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
    <form class="pt-3 pb-5" name="frm_study_modify" action="/study/study_modified" method="post">
        <%--    <div class="mb-3 row"> row: 없으면 lave과 input이 2줄로 나오고 1줄 전체(왼쪽 처음부터 오른쪽 끝까지)를 사용하겠다는 의미, mb: Margin Bottom --%>
        <div class="row mb-3">
            <label for="staticKeyId" class="col-sm-1 ms-5 col-form-label">Key ID </label>
            <div class="col-sm-9">
                <!-- ***** 2023.07.12 Conclusion. 여기 엄청 중요 주의 사항 : 아래 <input> 태그에 반드시 name 항목이 있어야 하고,
                                                  또한 그 값이 반드시 VoStudy.java 파일의 private 변수명과 동일해아 한다는 것이다 *****
                                                  그렇게 Mapping되었을 때, Study.java Controller 파일.doModified() 메서드에서
                                                  doModified(@ModelAttribute VoStudy voStudy) 이와 같이 사용했을 때,
                                                  현재 화면의 [수정하고자 하는 컬럼 값들]을,
                                                  [name]으로 받아 올 수 있는 것이다. -->
                <input type="text" readonly class="form-control" id="staticKeyId" name="keyId"
                       value="<%=dbData.getKeyId()%>">
            </div>
        </div>
        <div class="row mb-3">
            <label for="staticStudyDay" class="col-sm-1 ms-5 col-form-label">Study Day </label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="staticStudyDay" name="studyDay"
                       value="<%=dbData.getStudyDay()%>">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputContents" class="col-sm-1 ms-5 col-form-label">Contents </label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="inputContents" name="contents"
                       value="<%=dbData.getContents()%>">
            </div>
        </div>

        <%--    <div class="row mb-3">--%>
        <%--    <div class="d-grid gap-2 col-6 max-auto d-md-block">--%>
        <div class="position-absolute start-50 translate-middle mt-3">
            <%--      <a class="btn btn-primary" href="#" role="button">수정하기</a>--%>
            <input type="submit" class="btn btn-primary" value="수정하기">
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