<%@page import="test.food.dto.FoodDto"%>
<%@page import="test.food.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//수정할 데이터를 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//수정할 음식의 정보를 DB에서 읽어온다.
	FoodDao dao=new FoodDao();
	FoodDto dto=dao.getData(num);
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/food/updateform.jsp</title>
</head>
<body>
	<biv class="container">
	<h1>메뉴 정보 수정 품</h1>
	
	<p><%=true ? "selected":"" %></p> <%--삼항 연산자는 if else 문이 너무 더러울 때 사용 --%>
	<form action="${pageContext.request.contextPath}/food/update.jsp" method="post"> <%--method는 단순히 주소창에 보일지 말지의 결정으로 파라미터와 내용은 존재함--%>
	
		<div>
			<label for="type">타입</label>
			 
			<select name="type" id="type">
				<option value="">선택</option>
				<%--.equals()는 자바에서 참조 객체값의 실제값을 비교할 때 사용함 --%>
				<option <%=dto.getType().equals("kor") ? "selected":"" %>>한식</option>
				<option <%=dto.getType().equals("cha") ? "selected":"" %> >중식</option>
				<option <%=dto.getType().equals("jap") ? "selected":"" %> >일식</option>
				<option <%=dto.getType().equals("for") ? "selected":"" %>>양식</option>
				<%--<option <%if(dto.getType().equals("kor")){ %>selected<%}else{ %> <%}%>>한식</option> --%>
				<%--jsp문으로 if else 문 활용해서 값 얻어오기 
				<option <%if(dto.getType().equals("kor")){String a="selected";}else{String a="";}%>a>한식</option>
				--%>
								
			</select>
		</div>

		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" value="<%=dto.getName()%>"/> 
		</div>
		<div>
			<label for="price">가격</label>
			<input type="text" name="price" id="price" value="<%=dto.getPrice()%>"/>
		</div>
		<button type="submit">수정</button>
	</form>
	</biv>

</body>
</html>