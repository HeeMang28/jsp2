<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<form action="http://localhost:8181/JSPBasic/jspobject/request/study_req_user_result.jsp" method="post"/>
 	user_name : <input type="text" name="uname" /><br/>
 	user_id : <input type="text" name="uid" /><br/>
 	user_password : <input type="password" name="upw" /><br/>
 	<hr/>
 	취미 : 
 	 <input type="checkbox" name="hobby" value="요리">요리 &nbsp;
 	<input type="checkbox" name="hobby" value="노래">노래 &nbsp;
 	<input type="checkbox" name="hobby" value="운동">운동 &nbsp;
 	<input type="checkbox" name="hobby" value="게임">게임 &nbsp;
 	<input type="checkbox" name="hobby" value="영화">영화 &nbsp;
 	<hr/>
 	혈액형 : 
 	<input type="radio" name="blood" value="A"> A형 &nbsp;
 	<input type="radio" name="blood" value="B"> B형 &nbsp;
 	<input type="radio" name="blood" value="O"> O형 &nbsp;
 	<input type="radio" name="blood" value="AB"> AB형 &nbsp;
 	<hr/>
 	<input type="submit" value="확인">
 	</form>
</body>
</html>