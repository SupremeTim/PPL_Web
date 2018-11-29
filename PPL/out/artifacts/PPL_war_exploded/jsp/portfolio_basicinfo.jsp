<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-29
  Time: 오후 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/mainstyle.css?var=2" type="text/css" rel="stylesheet" />
    <link href="../css/portfolio_basicinfostyle.css?var=1" type="text/css" rel="stylesheet" />

    <script language="javascript">
        //자기소개 글자수 제한 체크
        function len_chk() {
            var frm = document.insertFrm.introduceself;

            if (frm.value.length > 100) {
                alert("자기소개의 글자수는 100자로 제한됩니다.");
                frm.value = frm.value.substring(0, 100);
                frm.focus();
            }
        }
    </script>


    <title>basicinfo</title>
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
        <h1>1. 기본 정보</h1>
    </div>

    <!-- 통신해야 하는 부분-->
    <div class="contentlabel1">
        이름<br><br>
        연락처<br><br>
        e-mail<br><br>
        프로필<br><br>
    </div>

    <div class="contents1">
        양시연<br><br>
        010-7160-4138<br><br>
        mn04098@naver.com<br><br>

        <!-- 파일 첨부-->
        <div id="status"> </div>
        <div id="holder"><img src="../icon/portfoliopage_profilebox.png" alt="profilebox" width="200px" height="200px"></div>
        <p><input type=file></p>
        <script>
            var upload = document.getElementsByTagName('input')[0],
                holder = document.getElementById('holder'),
                state = document.getElementById('status');

            if (typeof window.FileReader === 'undefined') {
                state.className = 'fail';
            } else {
                state.className = 'success';
                state.innerHTML = '';
            }

            upload.onchange = function (e) {
                e.preventDefault();

                var file = upload.files[0],
                    reader = new FileReader();
                    reader.onload = function (event) {
                    var img = new Image();
                    img.src = event.target.result;
                    // note: no onload required since we've got the dataurl...I think! :)
                    if (img.width > 560) { // holder width
                        img.width = 560;
                    }
                    holder.innerHTML = '';
                    holder.appendChild(img);
                };
                reader.readAsDataURL(file);

                return false;
            };
        </script>

    </div>

    <div class="contentlabel2">
        나이 공개 여부<br><br>
        간단한 소개<br><br>
    </div>

    <div class="contents2">
        <label><input type="radio" name="age_open" value="open">공개</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label><input type="radio" name="age_open" value="close">비공개</label>
        <br><br>
        <form name="insertFrm">
            <textarea name="introduceself" onkeyup="len_chk()" placeholder="간단한 자기소개를 작성해주세요.(100자 이내)"></textarea>
        </form>
       </div>
</body>
</html>
