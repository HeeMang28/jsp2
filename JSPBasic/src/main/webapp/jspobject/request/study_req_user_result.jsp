<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");	
	String uname = request.getParameter("uname");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	
	String[] hobby = request.getParameterValues("hobby");
	String blood = request.getParameter("blood");
%>
	이름 : <%= uname %><br/>
	아이디 : <%= uid %><br/>
	비밀번호 : <%= upw %><br/>
	취미 : <%= Arrays.toString(hobby) %><br/>
	혈액형 : <%= blood %><br/>
</body>
</html>