<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<form action="music_result.jsp" method="post">
	<table class="table">
		<thead>
			<tr>
				<th>가수</th>
				<th>노래제목</th>
				<th>check</th>
			</tr>
		</thead>
			<tr>
				<td>박재범</td>
				<td>GANADARA(Feat.아이유)</td>
				<td><input type="radio" name="music" value="1번노래"> &nbsp;</td>
			</tr>
			<tr>
				<td>김민석(멜로망스)</td>
				<td>취중고백</td>
				<td><input type="radio" name="music" value="2번노래"> &nbsp;</td>
			</tr>
			<tr>
				<td>Red Velvet(레드벨벳)</td>
				<td>Feel My Rhythm</td>
				<td><input type="radio" name="music" value="3번노래"> &nbsp;</td>
			</tr>
	</table>
	<input type="submit" value="확인" />
	</form>
</body>
</html>