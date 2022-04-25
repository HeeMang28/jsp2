<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${board }<hr/> <!--  디버깅 소홀히 하지말기 무조건 해주기 -->
	<form action="/MyFirstWeb/boardUpdate" method="post">
	글제목 : <input type="text" name="title" value="${board.title }"/> <br/>
	글쓴이 : <input type="text" name="writer" value="${board.writer}" readonly/><br/>
	본문 : <textarea cols="50" rows="15" name="content"/>${board.content }</textarea> <br/>
	<hr/>
	<input type="submit" value="수정하기"/> 
	<input type="reset" value="초기화">
	<input type="hidden" name="board_num" value="${board.boardNum }"><br/>
	</form>
</body>
</html>