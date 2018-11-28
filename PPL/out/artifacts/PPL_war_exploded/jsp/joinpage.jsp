<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-20
  Time: 오후 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=1" type="text/css" rel="stylesheet" />
    <link href="../css/joinstyle.css?var=1" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
        function passwordCheck(){
            var password = document.getElementById("join_pw").value;
            var passwordCheck = document.getElementById("join_pwck").value;

            if(passwordCheck == ""){
                document.getElementById("passwordCheckText").innerHTML="알파벳, 숫자, 특수 문자 중 2가지 이상을 혼합한 비밀번호를 입력하세요."
            }
            else if(password!= passwordCheck){
                document.getElementById("passwordCheckText").innerHTML="<font color=red>비밀번호가 다릅니다.</font>"
            }
            else{
                document.getElementById("passwordCheckText").innerText="비밀번호 확인!"
            }
        }

        function appendYear(){
            var date = new Date();
            var year = date.getFullYear();
            var selectValue = document.getElementById("year");
            var optionIndex = 0;
            for(var i=year-100;i<=year;i++){
                selectValue.add(new Option(i+"년",i),optionIndex++);
            }
        }

        function appendMonth(){
            var selectValue = document.getElementById("month");
            var optionIndex = 0;
            for(var i=1;i<=12;i++){
                selectValue.add(new Option(i+"월",i),optionIndex++);
            }
        }

        function appendDay(){
            var selectValue = document.getElementById("day");
            var optionIndex = 0;
            for(var i=1;i<=31;i++){
                selectValue.add(new Option(i+"일",i),optionIndex++);
            }
        }
    </script>

    <title>joinpage</title>
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

    <div class="joinbox">
        <h1 class="jointitle">회원가입</h1>
        <hr id="topline">
        <div class="formbox">
            <form>
                <!-name->
                <div class="namebox">
                <label for="join_name">이름</label><br>
                <input type="text" id="join_name">
                </div>

                <!-id->
                <div class="idbox">
                    <label for="join_id">아이디</label><br>
                    <input type="text" id="join_id">
                    <input type="button" class="idcheckbtn" value="중복확인">
                </div>

                <!-password->
                <div class="pwbox1">
                    <label for="join_pw">비밀번호</label><br>
                    <input type="password" name="pw" id="join_pw" onchange="passwordCheck()"/>
                </div>
                <div class="pwbox2">
                    <label for="join_pwck">비밀번호 확인</label><br>
                    <input type="password" name="pw" id="join_pwck" onchange="passwordCheck()"/>
                </div>
                <p id="passwordCheckText">알파벳, 숫자, 특수 문자 중 2가지 이상을 혼합한 비밀번호를 입력하세요.</p>

                <!-email->
                <div class="emailbox">
                    <label for="join_email">e-mail</label><br>
                    <input type="text" id="join_email">
                </div>

                <!-phone->
                <div class="phonebox">
                    <label for="join_phone">휴대폰 번호</label><br>
                    <input type="text" id="join_phone">
                </div>

                <!-birth->
                <div class="birthbox">
                    생년월일<br>
                    <input type="hidden" name="memBirth">
                    <select id="year">
                        <option>- 선택하세요 -</option>
                    </select>
                    <select id="month">
                        <option>- 선택하세요 -</option>
                    </select>
                    <select id="day">
                        <option>- 선택하세요 -</option>
                    </select>
                </div>
            </form>
                <hr id="bottomline">

            <form>
                <input type="checkbox"> 이용약관, 개인정보취급방침 및 개인정보3자제공에 동의합니다.

            <input class="joinbtn" type ="button">
            </form>
        </div>

    </div>
</body>
</html>
