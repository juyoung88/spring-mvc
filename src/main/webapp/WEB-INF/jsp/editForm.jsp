<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MEET PLAY SHARE, 메가박스</title>
    <link href="<c:url value="/resources/css/join.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/mystyle.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div id="navbar"></div>
<script>
    $(function() {
        $("#navbar").load("<c:url value="/resources/navbar.html"/>");
    });
</script>
<div class="join-container">
    <div class="join-block">
        <div class="text">회원정보 수정</div>
        <form action="edituser" method="post">
            <div class="logo">
                <img src="https://img.megabox.co.kr/static/pc/images/common/ci/logo_new2.png">
            </div>
            <input type="hidden" name="id" value="${command.id}">
            <div class="data">
                <input type="text" name="name" placeholder="이름" value="${command.name}"><br>
            </div>
            <div class="data">
                <input type="text" name="phone_num" placeholder="휴대폰 번호" value="${command.phone_num}">
            </div>
            <div class="data">
                <input type="text" name="username" placeholder="ID" value="${command.username}">
            </div>
            <div class="data">
                <input type="password" name="password" placeholder="비밀번호" value="${command.password}">
            </div>
            <div class="data">
                <input type="password" name="password_check" placeholder="비밀번호 확인">
            </div>
            <div class="data">
                <input type="text" name="email" placeholder="이메일" value="${command.email}">
            </div>
            <div class="btn">
                <input type="submit" class="submit-btn" value="회원수정">
            </div>
        </form>
    </div>
</div>
</body>
</html>