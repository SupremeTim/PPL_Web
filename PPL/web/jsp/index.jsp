<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-04
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>PPL</title>

     <script src="../WOW-master/dist/wow.min.js"></script>
      <script>
          new WOW().init();
      </script>
        <link href="../css/mainstyle.css" type="text/css" rel="stylesheet" />
        <link href="../css/bounce.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="../WOW-master/css/libs/animate.css"/>

  </head>

  <body>

    <div class="top">
      <!--ppl logo-->
      <a href = "index.jsp">
        <img id="ppl_home" src="../icon/ppl_logo.png"  alt="ppl" />
      </a>

      <!--로그인-->
     <div class = "login">
       <a href="loginpage.jsp">로그인 / 회원가입</a>
     </div>
    </div>

    <!--메뉴바-->
    <ul class="mainmenu">
      <li class ="menu" id="searchmenu"><a href="searchpage.jsp">SEARCH</a></li>
      <li class ="menu" id="portfoliiomenu"><a href = "portfolio.jsp">PORTFOLIO</a></li>
      <li class ="menu" id ="productmenu"><a href = "product.jsp">PRODUCT</a></li>
    </ul>

    <!--main-->
  <div class ="main">
    <div class="mainphrase" id="fp">당신을 <font color="466bff">PPL</font>하세요.</div>
    <div class="mainphrase" id="sp">당신이 어떤사람인지, 우리가 대신 소개할게요.</div>
    <div id="imgDiv">
      <img src="../icon/mainpage_startbutton_off.png" onmouseover="this.src='../icon/mainpage_startbutton_on.png';"
           onmouseout="this.src='../icon/mainpage_startbutton_off.png';" alt="start" title="start" /></a>
    </div>

    <img class="animated bounce infinite" src="../icon/mainpage_downarrow.png" alt="downarrow"/>
  </div>

  <!--main info-->
  <div class = "main_info">
      <img class="infopicture" src="../icon/mainpage_info_picture.png" alt="info picture">
      <div class="infoposts">
      <h1 id = "fi">당신만의 스토리를 담은<br>포트폴리오를 제작하세요.</h1>
      <h3 id = "p1">PPL은 광고의 뜻을 가진 단어이제 Personal Portfolio Url의 약자로써,<br>
      개발자들에게 최적화된 웹 포트폴리오 제작 서비스 입니다.</h3>
      <h3 id="p2">사용자 각각의 스토리 및 프로젝트 경험에 적합한 웹 포트폴리오 템플릿을<br>
      추천해주고 프로젝트들의 링크들을 하이퍼링크를 통해 연결시켜줍니다. <br>
        그 후 자동으로 포트폴리오와 그 URL을 생성하여 사용자에게 제공합니다.</h3>
      <h3 id="p3">웹 포트폴리오를 쉽게 만들고 싶으신가요? PPL을 사용해보세요!</h3>
    </div>
  </div>

  <!--main about-->
  <div class="main_about">
      <h1 class="aboutphrase">나만의 스토리를 담은 포트폴리오를 URL을 이용해 쉽게 전달하고 자신을 홍보하세요.</h1>
  </div>

  <div class="wow fadeInLeft">
      <h1 id="title1">스토리에 맞는 템플릿 자동 추천</h1>
      <h3 id="content1">업로드한 스토리의 개발 분야에 맞는 포트폴리오 템플릿을<br>
      자동으로 추천해드립니다. 템플릿 선택의 고민을 덜어보세요.</h3>
      <img class="photo1" src="../icon/mainpage_photo1.png" alt="photo1">
  </div>

    <div class="wow fadeInRight">
        <img class="photo2" src="../icon/mainpage_photo2.png" alt="photo2">
        <h1 id="title2">포트폴리오 자동 구성</h1>
        <h3 id="content2">사용자의 기본정보와 스토리, 프로젝트 경험만 입력하면<br>
        자동으로 포트폴리오를 구성해드립니다.<br>
        완성도 높은 포트폴리오를 짧은 시간만에 만들어보세요.</h3>
    </div>

    <div class="wow fadeInLeft" id="fadeInLeft2">
        <h1 id="title3">채용자를 위한 검색 엔진</h1>
        <h3 id="content3">PPL로 만들어진 포트폴리오를 한눈에 볼 수 있습니다.<br>
        개발자들의 포트폴리오를 카테고리 별 검색을 통해 검색하고<br>
        기업에 적합한 인재를 찾으세요.</h3>
        <img class="photo3" src="../icon/mainpage_photo3.png" alt="photo3">
    </div>

    <div class="lastment">
        <h2 class="myportfolio">나만의 포트폴리오,</h2>
        <div id="imgDiv2">
            <img src="../icon/mainpage_startbutton2_off.png" onmouseover="this.src='../icon/mainpage_startbutton2_on.png';"
                 onmouseout="this.src='../icon/mainpage_startbutton2_off.png';" alt="start2" title="start2" /></a>
        </div>
    </div>
  </body>
</html>
