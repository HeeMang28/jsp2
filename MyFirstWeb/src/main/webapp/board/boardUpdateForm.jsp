<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/MyFirstWeb/boardInsert" method="post">
	글제목 : <input type="text" name="title"/> <br/>
	글쓴이 : <input type="text" name="writer" readonly/>
	본문 : <textarea cols="50" rows="15" name="content"/></textarea> <br/>
	<hr/>
	<input type="submit" value="글쓰기"/> 
	<input type="reset" value="초기화">
	<input type="hidden" name="board_num" value="${board.boardNum }"><br/>
	</form>
</body>
</html>