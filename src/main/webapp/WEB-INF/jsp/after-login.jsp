<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<c:url value="/resources/css/mystyle.css"/>" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <title>MEET PLAY SHARE, 메가박스</title>
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
      <a href="edit/${loginUser.id}">${loginUser.name}님 환영합니다</a>
      <a href="logout" title="로그아웃">로그아웃</a>
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
<div class="main-container">
  <div class="main-container-img">
    <div class="main-container-img-pattern"></div>
    <img src="https://img.megabox.co.kr/SharedImg/2022/06/27/b18H36GvS1nfowYiCLw9ZfFKNTEAZTsi_380.jpg">
  </div>
  <div class="main-block">
    <div class="movie-list-container">
      <h1 class="movie-list-title">박스오피스</h1>
      <div class="movie-list-wrapper">
        <div class="movie-list">
          <div class="movie-list-item">
            <img class="movie-list-item-img" src="https://biz.chosun.com/resizer/5CS_Z0HFAS1E3-xecyyXpmk3vrY=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosunbiz/C3DY2LQD5QWIXBFOGBNRXEEAEA.jpg" alt="">
            <br>
            <br>
            <button onclick="location.href='/afterLogin/ticket'" class="btn">예매하기</button>
          </div>
          <div class="movie-list-item">
            <img class="movie-list-item-img" src="https://upload.wikimedia.org/wikipedia/ko/a/a4/%ED%83%91%EA%B1%B4_%EB%A7%A4%EB%B2%84%EB%A6%AD_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg" alt="">
            <br>
            <br>
            <button onclick="location.href='/afterLogin/ticket'" class="btn">예매하기</button>
          </div>
          <div class="movie-list-item">
            <img class="movie-list-item-img" src="https://cdnimage.dailian.co.kr/news/202205/news_1653872170_1118447_m_1.jpeg" alt="">
            <br>
            <br>
            <button onclick="location.href='/afterLogin/ticket'" class="btn">예매하기</button>
          </div>
          <div class="movie-list-item">
            <img class="movie-list-item-img" src="https://biz.chosun.com/resizer/gvoPYpzgRRYqIYsRNBQXNpUDqjk=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosunbiz/VELAMSMLZ2FAUDHZWWJCALZ4XY.jpg" alt="">
            <br>
            <br>
            <button onclick="location.href='/afterLogin/ticket'" class="btn">예매하기</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
