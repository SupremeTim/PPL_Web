<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2018-11-30
  Time: 오후 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function add_div(){

            var div = document.createElement('div');



            div.innerHTML = document.getElementById('room_type').innerHTML;

            document.getElementById('field').appendChild(div);

        }



        function remove_div(obj){

            document.getElementById('field').removeChild(obj.parentNode);

        }

    </script>
    <title>Title</title>
</head>
<body>
<input type="button" value="추가" onclick="add_div()"><br/>

<div id="room_type">

    <div class="form-group">

        <label for="image">제목</label>

        <input type="text" id="title" name="title" class="form-control" ></input>

    </div>

    <input type="button" value="삭제" onclick="remove_div(this)">

</div>

<div id="field"></div>

</body>
</html>
