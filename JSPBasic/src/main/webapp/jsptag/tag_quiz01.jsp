<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	// int randomNumber() 메서드를 선언해주세요.
	// 정수 1~10까지의 난수를 발생시켜 리턴해줍니다.
	int randomNumber() { 
	int rn = (int)(Math.random() * 10) + 1;
	return rn;
}
	String randomColor(){
		// 난수를 발생시켜서 약 33% 확률로 "빨강"
		// 약 33% 확률로 "노랑"
		// 약 33% "파랑" 을 리턴하는 메서드를 선언해주세요.
		double color = (double)(Math.random());
		if(color > 0.66){
			return "빨강";
		} else if(color > 0.33){
			return "파랑";
		} else {
			return "노랑";
		}
	}

	// 선언부(Declaration)에 선언한 변수는 접속 직후 딱 한 번만 실행되는 static 속성을 가지게 됩니다.
	int total = 0; 
	// 여기서부터는 더이상 실행이 안됨. 홈페이지 접속 후 한번만 실행이 되기때문에 새로고침을 해도
	// 38번 코드 부터 실행을 시켜준다.
%>
<% 
	// 스크립트릿에 선언한 변수는 새로고침 할 때 마다 새롭게 선언됩니다.
	int each = 0;
	total++;
	each++;
%>
<h1> 오늘의 행운의 숫자와 행운의 색깔</h1>
	행운의 숫자 : <b><%= randomNumber() %></b> <br>
	행운의 색깔 : <b><%= randomColor() %></br>
	누적 요청수 : <%= total %><br/>
	개별 요청수 : <%= each %><br/>
</body>
</html>