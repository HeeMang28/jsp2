<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 Cookie cookies = new Cookie("cookies_cookie", "쿠키");
	cookies.setMaxAge(20);
	
	response.addCookie(cookies);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>