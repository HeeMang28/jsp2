<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	
	</script>
	
	<form action="http://localhost:8181/BaCode/userDelete" method="post">
	<input type="hidden" name="uId" value="${user.uId }"><br/>
	
	<input type="submit" value="삭제하기" />
	</form>

</body>
</html>