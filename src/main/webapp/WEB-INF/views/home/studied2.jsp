<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-04
  Time: 오전 12:21
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
<%@include file="/WEB-INF/views/common/header.jsp"%>

<div class="b-example-divider"></div>

<div class="container text-center py-3 my-4 border-top border-bottom">
  <div class="row row-cols-4 text-center py-3 border-top border-bottom">
    <!--    <div class="row row-cols-4 mb-2 text-center py-3 border-top border-bottom">-->
    <div class="col">Column2</div>
    <div class="col">Column2</div>
    <div class="col">Column2</div>
    <div class="col">Column2</div>
  </div>
  <div class="row row-cols-4 py-2 border-bottom">
    <div class="col">No.</div>
    <div class="col">일자</div>
    <div class="col">내용</div>
    <div class="col">등록일</div>
  </div>
  <div class="row row-cols-4 py-2 border-bottom">
    <div class="col">No.</div>
    <div class="col">일자</div>
    <div class="col">내용</div>
    <div class="col">등록일</div>
  </div>
  <div class="row row-cols-4 py-2 border-bottom">
    <div class="col">No.</div>
    <div class="col">일자</div>
    <div class="col">내용</div>
    <div class="col">등록일</div>
  </div>
</div>

<div class="b-example-divider"></div>

<!-- footer 부분 -->
<%@include file="/WEB-INF/views/common/footer.jsp"%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>