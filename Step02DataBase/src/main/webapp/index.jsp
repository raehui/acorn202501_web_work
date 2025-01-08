<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<%--bottstrap css와 자바스크립트 소스 갖고오기 / 자바스크립트는 css 를 사용하기 위해서는 필요함--%>
<%--이 부분은 resource.jsp 페이지가 응답하도록 한다. / <jsp 입력 후 탭--%>
<jsp:include page="/include/resource.jsp"></jsp:include> <%--경로는 / 으로 webapp에서 시작해야 함 , emmet snippets에 추가 --%>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include> <%--emmet snippets에 추가 --%>
	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="connection/test.jsp">Connection 테스트</a></li>
			<li><a href="member/list.jsp">회원 목록보기</a></li>
			<li><a href="food/list.jsp">맛집 목록보기</a></li>
		</ul>
	</div>
</body>
</html>