<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!--  포워딩으로 먼저 넘어온 다음 리다이렉트를 이어서 실행하도록 해야
포워딩/리다이렉트 호출이 겹쳐서 에러가 나는걸 막을 수 있으므로
이 경우만 예외적으로 스크립트릿을 이용한 리다이렉트를 사용합니다. -->
세션값 : ${sessionScope.s_id }<br/>
<c:if test="${sessionScope.s_id eq null }">
<!--  <script> location.href="http://localhost:8181/MyFirstWeb/"</script> 이렇게 쓸경우 디버거 자바스크립트를 사용하면 뚫리기 때문에 비추천한다. -->
<% //response.sendRedirect("http://localhost:8181/MyFirstWeb/"); %>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>/boardList 임시 페이지 을 적어주세요.</h1>
	<table class="table">
		<thead>
			<tr>
				<td>글번호</td>
				<td>글제목</td>
				<td>내용</td>
				<td>글쓴이</td>	
				<td>쓴날짜</td>
				<td>수정날짜</td>
				<td>조회수</td>
				<td></td>
			</tr>
		</thead>
		<!--  JSTL c:forEach와 ${boardList}를 활용하면 됩니다.
		전체 글 정보를 테이블 형식으로 보여주세요. -->
		<tbody>
			<c:forEach var="board" items="${boardList }">
			<tr>
				<td>${board.boardNum }</td>
				<td><a href="http://localhost:8181/MyFirstWeb/boardDetail.do?board_num=${board.boardNum}">${board.title }</td>
				<td>${board.content }</td>
				<td>${board.writer }</td>
				<td>${board.bDate }</td>
				<td>${board.mDate }</td>
				<td>${board.hit }</td>
			</tr>
			</c:forEach>
		</tbody>	
	</table>
	${buttons } <br/>
	<!--  이전 10개 페이지 조회버튼을 출력합니다.
	현재 조회중인 페이지가 1~10페이지가 아닐때만, 첫페이지 -1 을 목표주소로 해서 prev버튼을 만들면 됩니다. -->
	<nav aria-label="Page navigation">
	<ul class="pagination justify-content-center">
	<c:if test="${buttons.startPage ne 1 }">
		<li class="page-item"><a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${buttons.startPage - 1 }" >Previous </a></li>
	 </c:if>
	<!--  foreach문의 begin, end속성을 이용해 숫자를 알맞게 깔아주세요. -->
	<c:forEach var="pageNum" begin="${buttons.startPage }" end="${buttons.endPage }">
		 <c:if test="${pageNum eq buttons.currentPage }" >
		 <li class="page-item active" ><a class="page-link" href="#" >${buttons.currentPage }</a></li>
		 </c:if>
		<li class="page-item"><a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${pageNum }" >${pageNum } </a></li>
	</c:forEach>
	
	<c:if test="${buttons.totalPages ne buttons.endPage  }">
		<li class="page-item"><a class="page-link" href="http://localhost:8181/MyFirstWeb/boardList.do?pageNum=${buttons.endPage + 1 }" >Next</a></li>
	</c:if>
	
	<c:if test="${sessionScope.s_id ne null}"><!-- !=, ne(negative) 똑같이 쓰임. -->
		<li class="page-item"><a class="page-link" href="http://localhost:8181/MyFirstWeb/boardInsertForm.do">글쓰기</a></li>
	</c:if>
	</ul>
	</nav>
</body>
</html>