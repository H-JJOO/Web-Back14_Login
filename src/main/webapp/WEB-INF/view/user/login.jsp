<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        html { height: 100%;}
        .position {
            height: 100%;
            display: flex; flex-direction: column; justify-content: center; align-items: center;
        }
    </style>
</head>
<body class="position">
    <h1>로그인</h1>
    <form action="/user/login" method="post">
        <div>
            <input type="text" name="uid" placeholder="User Id">
        </div>
        <div>
            <input type="password" name="upw" placeholder="User Password">
        </div>
        <div>
            <input type="submit" value="로그인">
            <a href="/user/join"><input type="button" value="회원가입"></a>
        </div>
        <div><a href="/board/list"><input type="button" value="리스트로 이동"></a></div>
    </form>

</body>
</html>
