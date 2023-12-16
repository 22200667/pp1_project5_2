<%--
  Created by IntelliJ IDEA.
  User: ime
  Date: 2023/12/01
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<h1>영화 추천 사이트</h1>
<%--<p><a href="board/boardlist">게시판으로 이동</a></p>--%>

<div class="login-wrapper">
    <h2>Login</h2>
<%--    <form method="post" action="서버의url" id="login-form">--%>
        <input type="text" id='id' name="userName" placeholder="ID">
        <input type="password" id='password' name="userPassword" placeholder="Password">

        <input type="submit" id="login" value="Login">
<%--    </form>--%>
</div>

</body>
<script>
    const id = document.getElementById('id')
    const password = document.getElementById('password')
    const login = document.getElementById('login')
    let errStack = 0;

    login.addEventListener('click', () => {
        if (id.value == 'admin') {
            if (password.value == '1234') {
                alert('로그인 되었습니다!')
                window.location.href="board/boardlist";
            }
            else {
                alert('아이디와 비밀번호를 다시 한 번 확인해주세요!')
                errStack ++;
            }
        }
        else {
            alert('존재하지 않는 계정입니다.')
        }

        if (errStack >= 5) {
            alert('비밀번호를 5회 이상 틀리셨습니다. 비밀번호 찾기를 권장드립니다.')
        }
    })
</script>
</html>

