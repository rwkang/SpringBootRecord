<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springboot.record.vo.VoStudy" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023-07-04
  Time: 오전 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 1. request, 2. model 방식
    //List<Map<String, String>> list = (List<Map<String, String>>) request.getAttribute("list");
    // 3. VO 방식
    List<VoStudy> dbData = (List<VoStudy>) request.getAttribute("listVoStudy");
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

    <div class="container text-center py-1 my-1 border-top">
        <div class="row row-col-10 text-center">
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="insert" type="button"
                        onclick="location.href='/study/study_insert'">신규
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#2" type="button" onclick="location.href='/study/study_insert'">
                    메뉴2
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#3" type="button" onclick="location.href='/study/study_insert'">
                    메뉴3
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#4" type="button" onclick="location.href='/study/study_insert'">
                    메뉴4
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#5" type="button" onclick="location.href='/study/study_insert'">
                    메뉴5
                </button>
            </div>
        </div>
    </div>

    <div class="container text-center py-1 my-1 border-top border-bottom">

        <div class="row row-cols-6 text-center py-3 border-top border-bottom">
            <!--    <div class="row row-cols-4 mb-2 text-center py-3 border-top border-bottom">-->
            <%--        <div class="col w-10">No.</div>--%>
            <div class="col-sm-1">No.</div>
            <div class="col-sm-2">공부 일자</div>
            <div class="col-sm-5">공부 내역</div>
            <div class="col-sm-2">등록 일자</div>
            <div class="col-sm-1">수정</div>
            <div class="col-sm-1">삭제</div>
        </div>

        <!--1. request, 2. model 방식-->
        <%--  <% for(Map<String, String> map : list) { %>--%>
        <%--    <div class="row row-cols-4 py-2 border-bottom">--%>
        <%--      <div class="col"><%=map.get("KEY_ID")%></div>--%>
        <%--      <div class="col"><%=map.get("STUDY_DAY")%></div>--%>
        <%--      <div class="col"><%=map.get("CONTENTS")%></div>--%>
        <%--      <div class="col"><%=map.get("REG_DAY")%></div>--%>
        <%--    </div>--%>
        <%--  <% } %>--%>

        <!--3. VO 방식-->
        <%--  <% for(VoStudy map : list) { %>--%>
        <% for (VoStudy voStudy : dbData) { %>
        <div class="row row-cols-6 py-2 border-bottom">
            <%--    <div class="col"><%=map.getKEY_ID()%></div>--%>
            <%--    <div class="col"><%=map.getSTUDY_DAY()%></div>--%>
            <%--    <div class="col"><%=map.getCONTENTS()%></div>--%>
            <%--    <div class="col"><%=map.getREG_DAY()%></div>--%>

            <!--2023.07.11 Conclusion. VO를 사용하면, "소문자"를 사용해도, .jsp 파일에서 에러가 발생하지 않는다.-->
            <%--    <div class="col"><%=map.getKey_id()%></div>--%>
            <%--    <div class="col"><%=map.getStudy_day()%></div>--%>
            <%--    <div class="col"><%=map.getContents()%></div>--%>
            <%--    <div class="col"><%=map.getReg_day()%></div>--%>

            <!-- 2023.07.11 Conclusion. MyBatis Camel Case 지원: ORACLE DB 테이블 컬럼명이 "_"(언더바)로 되어 있는 것을,-->
            <!--    "자바 스타일.카멜 케이스" 형식으로 자동 변경해 준다. => sql.xml 파일 참조.-->
            <div class="col-sm-1"><%=voStudy.getKeyId()%>
            </div>
            <div class="col-sm-2"><%=voStudy.getStudyDay()%>
            </div>
            <div class="col-sm-5 d-flex justify-content-start"><%=voStudy.getContents()%>
            </div>
            <%--  <div class="col"><%=voStudy.getRegDay()%></div>--%>
            <div class="col-sm-2"><%=voStudy.getRegDay()%>
            </div>
            <div class="col-sm-1"><a class="btn btn-outline-info btn-sm"
                                     href="/study/study_modify?key_id=<%=voStudy.getKeyId()%>">수정</a></div>
            <div class="col-sm-1"><a class="btn btn-outline-dark btn-sm"
                                     href="/study/study_delete?key_id=<%=voStudy.getKeyId()%>">삭제</a></div>

        </div>
        <% } %>
    </div>
</main>

<div class="b-example-divider"></div>

<!-- footer 부분 -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>