<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${board} <br/>
	<h1>${board.boardNum }번 글 조회중입니다. </h1><br/> 
	제목 : <input type="text" value="${board.title }">  조회수 : ${board.hit }<br/>
	본문 : <textarea cols="40" rows="10">${board.content } </textarea> <!--  텍스트는 괄호 밖에다가 el로 처리 -->
	글쓴이 : <input type="text" value="${board.writer }"><br/>
	쓴날짜 : ${board.bDate } <br/>
	마지막 수정날짜 : ${board.mDate }<br/>
</body>
</html>