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
    <link rel="stylesheet" href="../css/mainstyle.css?ver=1"/>
  </head>
  <body>


    <!--ppl logo-->
    <a href = "index.jsp">
      <img id="ppl_home" src="../icon/ppl_logo.png" width="40" alt="ppl"/>
    </a>

  <div class = "login">
    <a href="loginpage.jsp">로그인 / 회원가입</a>
  </div>

  <nav>
    <ul class="mainmenu">
      <li class ="menu" id="searchmenu"><a href="searchpage.jsp">SEARCH</a></li>
      <li class ="menu" id="portfoliiomenu"><a href = "portfolio.jsp">PORTFOLIO</a></li>
      <li class ="menu" id ="productmenu"><a href = "product.jsp">PRODUCT</a></li>
    </ul>
  </nav>
  <div class ="main">
    메인입니다.

    <input type="button" value="window.innerWidth" onclick="window.innerWidth()" />


  </div>
  </body>
</html>
