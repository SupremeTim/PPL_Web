<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-04
  Time: 오후 5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=1" type="text/css" rel="stylesheet" />
    <link href="../css/loginstyle.css" type="text/css" rel="stylesheet" />
    <title>loginpage</title>
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

    <div class="loginbox">
        <h1 class="logintitle">로그인</h1>
        <hr id="topline">

        <!----form tag---->
        <form action ="authentication.jsp" method="post">
            <div class="idbox">
                <img id="idicon" src="../icon/loginpage_idicon.png" alt="idicon">
                <input id="idinput"name="id" type="text" placeholder="  아이디">
            </div>

            <div class="pwbox">
                <img id="pwicon" src="../icon/loginpage_pwicon.png" alt="pwicon">
                <input id="pwinput"name="pw" type="text" placeholder="  비밀번호">
            </div>

            <input id="loginstate" type="checkbox">
            <label for="loginstate"><span>로그인 상태 유지</span></label>

            <input class="loginbtn" type="button">
        </form>
        <!----------------->

        <hr id="bottomline">

        <a class="findid" href="findidpage.jsp">아이디/비밀번호 찾기</a> |
        <a class="join" href="joinpage.jsp">회원가입</a>
    </div>


</body>
</html>
