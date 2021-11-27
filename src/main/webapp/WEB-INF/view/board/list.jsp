<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리스트</title>
    <style>
        .position {
            display: flex; flex-direction: column; justify-content: center;
        }
    </style>
</head>
<body class="position">
    <h1>리스트</h1>
    <div><a href="/board/write"><input type="button" value="글쓰기"></a></div>
    <table border="1">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일자</th>
        </tr>
    </table>
</body>
</html>
