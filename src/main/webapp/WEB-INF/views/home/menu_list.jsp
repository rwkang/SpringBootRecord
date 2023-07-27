<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springboot.record.vo.VoMenu" %><%--
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
    List<VoMenu> dbData = (List<VoMenu>) request.getAttribute("listVoMenu");
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

<!-- 헤더 부분 -->
<%@include file="/WEB-INF/views/common/header.jsp" %>

<div class="b-example-divider"></div>

<main>

    <div class="container text-center py-1 my-1 border-top">
        <div class="row row-col-10 text-center">
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="insert" type="button"
                        onclick="location.href='/base/menu_insert'">신규
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#2" type="button" onclick="location.href='/menu/menu_insert'">
                    메뉴2
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#3" type="button" onclick="location.href='/menu/menu_insert'">
                    메뉴3
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#4" type="button" onclick="location.href='/menu/menu_insert'">
                    메뉴4
                </button>
            </div>
            <div class="col-sm-2 d-flex justify-center-end">
                <button class="btn btn-primary btn-sm" id="#5" type="button" onclick="location.href='/menu/menu_insert'">
                    메뉴5
                </button>
            </div>
        </div>
    </div>

    <div class="container text-center py-1 my-1 border-top border-bottom">
        <div class="row row-cols-15 text-center py-3 border-top border-bottom">
            <!--    <div class="row row-cols-4 mb-2 text-center py-3 border-top border-bottom">-->
            <%--    <div class="col-sm-1">회원 번호</div>--%>
<%--            <div class="col-sm-1">ID</div>--%>
            <div class="col-sm-1">코드</div>
<%--            <div class="col-sm-1">메뉴1</div>--%>
<%--            <div class="col-sm-1">메뉴2</div>--%>
<%--            <div class="col-sm-1">메뉴3</div>--%>
<%--            <div class="col-sm-1">메뉴4</div>--%>
<%--            <div class="col-sm-1">영어</div>--%>
            <div class="col-sm-2">한국어</div>
<%--            <div class="col-sm-1">언어3</div>--%>
<%--            <div class="col-sm-1">언어4</div>--%>
            <div class="col-sm-2">사용자</div>
            <div class="col-sm-1">TYPE</div>
            <div class="col-sm-1">NAME</div>
            <div class="col-sm-1">PARAM</div>
            <div class="col-sm-1">권한</div>
<%--            <div class="col-sm-2">수정자</div>--%>
<%--            <div class="col-sm-1">수정일</div>--%>
<%--            <div class="col-sm-2">등록자</div>--%>
<%--            <div class="col-sm-1">등록일</div>--%>
            <div class="col-sm-1">수정</div>
            <div class="col-sm-1">삭제</div>
        </div>
        <% for (VoMenu VoMenu : dbData) { %>
        <div class="row row-cols-15 py-2 border-bottom">
<%--            <div class="col-sm-1"><%=VoMenu.getId()%></div>--%>
            <div class="col-sm-1"><%=VoMenu.getCode()%></div>
<%--            <div class="col-sm-1"><%=VoMenu.getMenu1()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getMenu2()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getMenu3()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getMenu4()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getLanguage1()%></div>--%>
            <div class="col-sm-2"><%=VoMenu.getLanguage2()%></div>
<%--            <div class="col-sm-1"><%=VoMenu.getLanguage3()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getLanguage4()%></div>--%>
            <div class="col-sm-2"><%=VoMenu.getUserId()%></div>
            <div class="col-sm-1"><%=VoMenu.getWinType()%></div>
            <div class="col-sm-1"><%=VoMenu.getWinName()%></div>
            <div class="col-sm-1"><%=VoMenu.getWinParam()%></div>
            <div class="col-sm-1"><%=VoMenu.getAuthorityId()%></div>
<%--            <div class="col-sm-2"><%=VoMenu.getModifiedUserId()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getModifiedDate()%></div>--%>
<%--            <div class="col-sm-2"><%=VoMenu.getRegUserId()%></div>--%>
<%--            <div class="col-sm-1"><%=VoMenu.getRegDate()%></div>--%>
            <div class="col-sm-1"><a class="btn btn-outline-info btn-sm"
                                     href="/base/menu_modify?id=<%=VoMenu.getId()%>">수정</a></div>
            <div class="col-sm-1"><a class="btn btn-outline-info btn-sm"
                                     href="/base/menu_delete?id=<%=VoMenu.getId()%>">삭제</a></div>
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