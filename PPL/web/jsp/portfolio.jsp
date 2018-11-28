<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-26
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=2" type="text/css" rel="stylesheet" />
    <link href="../css/portfoliostyle.css" type="text/css" rel="stylesheet" />
    <title>portfolio</title>
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

    <div class="pfmenuphrase" id="pffp">당신을 멋지게<br>표현하고 싶으세요?</div>
    <div class="pfmenuphrase" id="pfsp">우리 서비스 PPL을 통해 당신을 PPL 해보세요.</div>

    <div class="portfolioview">
        <div class="portfolio1">
            <img class="portfolioimg" src="../icon/portfoliopage_portfolio1.png" alt="portfolio1">
        </div>

        <div class="portfolio2">
            <!--<img class="portfolioimg" src="../icon/portfoliopage_portfolio2.png" alt="portfolio2">-->
        </div>

        <div class="portfolio3">
            <!--<img class="portfolioimg" src="../icon/portfoliopage_portfolio3.png" alt="portfolio3">-->
        </div>

        <div class="portfolio4">
            <!-- <img class="portfolioimg" src="../icon/portfoliopage_portfolio4.png" alt="portfolio4">-->
         </div>
     </div>

    <img id="startbtn" src="../icon/portfoliopage_startbutton_off.png" onmouseover="this.src='../icon/portfoliopage_startbutton_on.png';"
         onmouseout="this.src='../icon/portfoliopage_startbutton_off.png';" alt="start" title="start" /></a>

 </body>
 </html>
