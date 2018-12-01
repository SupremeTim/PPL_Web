<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-30
  Time: 오후 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=2" type="text/css" rel="stylesheet" />
    <link href="../css/portfolio_recomendtempletestyle.css" type="text/css" rel="stylesheet" />
    <title>recomendTemplete</title>
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
    <div class = "side">
        <h1>3. 템플릿 추천</h1>
    </div>

    <div  class="contents">
        <p class="contents_header">양시연님! 이런 템플릿을 추천드려요.</p>
        <div id="templete1">
        </div>
        <div id="templete2">
        </div>

        <br>
        템플릿이 마음에 안드시나요?
        <a href=""><u>템플릿 더 보러가기></u></a>
    </div>

    <div class="bottomnav">
        <a href = "portfolio_basicinfo.jsp"><input type="button" class="backbtn" ></a>
        <a href = "portfolio_recomendtemplete.jsp"><input type="button" class="nextbtn"></a>
    </div>

</body>
</html>
