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
	String photoPick = request.getParameter("photo");
%>
선택한 그림 : <%= photoPick %><br/>

<% if(photoPick.equals("1번그림")){ %>
		1번 그림을 선택하셨네요.<br/>
		<img src="cat1.jpg" width="500px">
<% 	} else { %>
		2번 그림을 선택하셨네요.<br/>
		<img src="cat2.jpg" width="500px">
<% 	} %>

</body>
</html>