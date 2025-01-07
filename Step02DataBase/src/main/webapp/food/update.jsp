<%@page import="test.food.dto.FoodDto"%>
<%@page import="test.food.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 수정할 음식의 번호, 타입, 이름, 가격 추출하기
	int num=Integer.parseInt(request.getParameter("num"));
	String type=request.getParameter("type");
	String name=request.getParameter("name");
	int price=Integer.parseInt(request.getParameter("price"));
	//2. DB에 반영하기
	FoodDao dao=new FoodDao();
	FoodDto dto=new FoodDto(num,type,name,price);
	
	boolean isSuccess=dao.update(dto);
	//3. 응답
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/food/update.jsp</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			alert("수정했습니다.!")
			location.href="list.jsp";
		<%}else {%>
			alert("수정 실패");
			location.href="updateform.jsp?num=<%=num%>";
		
		<%}%>
	</script>

</body>
</html>