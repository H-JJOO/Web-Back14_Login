<%@ page import="com.koreait.board6.model.UserVO" %>
<%@ page import="com.koreait.board6.model.BoardVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserVO loginUser = (UserVO)session.getAttribute("loginUser");
    BoardVO vo = (BoardVO)request.getAttribute("data");
    int prevBoard = (int)request.getAttribute("prevBoard");
    int nextBoard = (int)request.getAttribute("nextBoard");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${requestScope.data.title}</title>
</head>
<body>
    <h1>디테일</h1>
    <%if (loginUser != null && loginUser.getIuser() == vo.getWriter()) { %>
    <div>
        <a href="/board/del?iboard=<%=vo.getIboard()%>"><input type="button" value="삭제"></a>
        <a href="/board/mod?iboard=<%=vo.getIboard()%>"><input type="button" value="수정"></a>
    </div>
    <% } %>
    <div>번호 : ${requestScope.data.iboard} </div>
    <div>제목 : ${requestScope.data.title}</div>
    <div>작성자 : ${requestScope.data.writerNm}</div>
    <div>작성일자 : ${requestScope.data.rdt}</div>
    <div>내용 : ${requestScope.data.ctnt}</div>
    <div>
    <%if (prevBoard != 0) { %>
        <a href="/board/detail?iboard=<%=prevBoard%>"><input type="button" value="이전글"></a>
    <% } %>

    <%if (nextBoard != 0) { %>
    <a href="/board/detail?iboard=<%=nextBoard%>"><input type="button" value="다음글"></a>
    <% } %>
    <a href="/board/list"><input type="button" value="리스트로 이동"></a>
    </div>



</body>
</html>
