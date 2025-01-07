<%@page import="java.util.List"%>
<%@page import="test.food.dao.FoodDao"%>
<%@page import="test.food.dto.FoodDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//맛집 데이터 리스트 얻어오기
	FoodDao dao=new FoodDao();
	//리스트 생성후 dto을 담아서 list 반환
	List<FoodDto>list=dao.getList();
	
	//불러올 객체가 List<FoodDto>의 리스트며 dao를 이용해서 fooddto 리스트를 불러오기

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/food/list.jsp</title>
</head>
<body>
	<div class="container">
		<a href="${pageContext.request.contextPath}/food/insertform.jsp">맛집추가</a> 
		<%--이동할 인서트를 할 폼페이지로 이동 , 소문자 & _ 정도만 작성--%>

		<h1>맛집 목록입니다</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>타입</th>
					<th>이름</th>
					<th>가격</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(FoodDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td> <%--DB에 있는 데이터를 불러옴/ 동적인 내용 --%>
					<td><%=tmp.getType()%></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getPrice() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td> <%--나의 정보가 있는 페이지에 들어감 --%>
					<td><a href="javascript: deleteConfirm(<%=tmp.getNum() %>)">삭제</a></td>
					<%--자바스크립트의 영역으로 작성된 코딩이 실행 
					
					--%>				
				</tr>
				<%}%>

			</tbody>
		</table>
	</div>
	<script>
		function deleteConfirm(num){ //매개변수를 하나 받아서 
			const isDelete= confirm("삭제할까요?");
			//확인을 눌었을 때만 delete.jsp 페이지로 이동하도록 한다.
			if(isDelete){
				//javascript 를 이용해서 페이지 이동
				//내가 원하는 페이지로 이동하기 
				location.href = "delete.jsp?num="+num;
			}
			
		}
	</script>

</body>
</html>