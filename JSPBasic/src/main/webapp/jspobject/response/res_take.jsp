<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
	String strAge = request.getParameter("age");
	int age = Integer.parseInt(strAge);	// 숫자로 이루어진 문자를 정수로 변환
	
	
%>
	age : <%= age %> <br/>
	<% if (age >= 20){ 
	response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/response/res_adult.jsp"); //네이버로 강제이동 %>
	<h1>성인입니다.</h1><br/>
	<%} else {  %>
	<h1>미성년자입니다.</h1><br/>
	<%response.sendRedirect("http://localhost:8181/JSPBasic/jspobject/response/res_kds.jsp");} %>
</body>
</html>