<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	request.setCharacterEncoding("utf-8");
	String music = request.getParameter("music");
	
	if(music.equals("1번노래")){ 
	response.sendRedirect("https://www.youtube.com/watch?v=v224EdAkZr8");
 	} else if(music.equals("2번노래")) { 
	response.sendRedirect("https://www.youtube.com/watch?v=FCrMKhrFH7A");
 	} else if(music.equals("3번노래")) {
	response.sendRedirect("https://www.youtube.com/watch?v=kEx5paf_qcc");
 } %>
</body>
</html>