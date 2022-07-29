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
    <link rel="stylesheet" href="<c:url value="/resources/css/join.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/mystyle.css"/>" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<header id = "header"  class = "main-header no-bg">
    <h1 class="ci">
        <a href="/" title = "MEGABOX 메인으로 가기">MEGABOX : Life Theater</a>
    </h1>
    <div class="util-area">
        <div class="left-link">
            <a href="/" title = "VIP LOUNGE">VIP LOUNGE</a>
            <a href="/" title = "멤버십">멤버십</a>
            <a href="/" title = "고객센터">고객센터</a>

        </div>
        <div class="right-link">
            <a href="#">${command.name}님 환영합니다</a>
            <a href="join" title="회원가입">회원가입</a>
            <a href="viewusers" title="빠른예메">회원목록 조회</a>
        </div>
    </div>
    <div class="link-area">
        <a href="/" class="header open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="/" class="header open-layer btn-layer-search" title="검색">검색</a>
        <a href="/" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="/" class="header open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>
    <nav id="gnb">
        <ul class="gnb-depth1">
            <li id="gnb-li"class>
                <a href="/" class="gnb-txt-movie" title="영화">영화</a>
                <div class="dropdown-content">
                    <ul class="gnb-detail">
                        <li>
                            <a href="/apitest.html" title="전체영화">전체영화</a>
                        </li>
                        <li>
                            <a href="/" title="큐레이션">큐레이션</a>
                        </li>
                        <li>
                            <a href="/" title="무비포스트">무비포스트</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class>
                <a href="/" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="dropdown-content">
                    <ul class="gnb-detail">
                        <li>
                            <a href="/" title="빠른영화">빠른영화</a>
                        </li>
                        <li>
                            <a href="/" title="상영시간표">상영시간표</a>
                        </li>
                        <li>
                            <a href="/" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class>
                <a href="/" class="gnb-txt-theater" title="극장">극장</a>
                <div class="dropdown-content">
                    <ul class="gnb-detail">
                        <li>
                            <a href="/" title="전체극장">전체극장</a>
                        </li>
                        <li>
                            <a href="/" title="특별관">특별관</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class>
                <a href="/" class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="dropdown-content">
                    <ul class="gnb-detail">
                        <li>
                            <a href="/" title="진행중 이벤트">진행중 이벤트</a>
                        </li>
                        <li>
                            <a href="/" title="지난 이벤트">지난 이벤트</a>
                        </li>
                        <li>
                            <a href="/" title="당첨자 발표">당첨자 발표</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class>
                <a href="/" class="gnb-txt-store" title="스토어">스토어</a>
            </li>
            <li class>
                <a href="/" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="dropdown-content">
                    <ul class="gnb-detail">
                        <li>
                            <a href="/" title="메가박스 멤버십">메가박스 멤버십</a>
                        </li>
                        <li>
                            <a href="/" title="제휴/할인">제휴/할인</a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
</header>
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