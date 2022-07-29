<%--
  Created by IntelliJ IDEA.
  User: thick
  Date: 2022-07-28
  Time: 오후 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>메가박스 로그인</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginform.css"/>"/>
</head>
<body>
<div class="container">
    <div class="text">로그인</div>
    <form action="login" method="post">
        <div class="data">
            <label>아이디</label>
            <input type="text" name="username">
        </div>
        <div class="data">
            <label>패스워드</label>
            <input type="password" name="password">
        </div>
        <div class="forgot-pass"><a href="#">비밀번호를 잊으셨나요?</a></div>
        <div class="btn">
            <div class="inner"></div>
            <button type="submit">로그인</button>
        </div>
        <div class="signup">메가박스는 처음이신가요? <a href="join">회원가입</a></div>
    </form>
</div>
</body>
