<%--
  Created by IntelliJ IDEA.
  User: thick
  Date: 2022-07-20
  Time: 오후 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원목록</title>
</head>
<body>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/resources/css/list.css"/>" type="text/css"/>
<h1>회원목록</h1>
<div class="table-container">
    <table class="table">
        <tr class="col-names">
            <th>Photo</th>
            <th>Id</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td><img src="<c:url value="/resources/image/${u.getPhoto()}"/>" width="30px" height="30px"/>
                <td>${u.getId()}</td>
                <td>${u.getName()}</td>
                <td>${u.getPhone_num()}</td>
                <td>${u.getUsername()}</td>
                <td>${u.getPassword()}</td>
                <td>${u.getEmail()}</td>
                <td><a class="del-btn" href="deleteuser/${u.getId()}">삭제</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
