<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--insertform.jsp를 통해서 올리고 싶은 데이터를 받은 폼을 생성 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webapp/food/insertform.jsp</title>
</head>
<body>
	<div class="container">
	<h1>맛집 추가 양식</h1>
	<form action="${pageContext.request.contextPath}/food/insert.jsp" method="post"> 
	<%--form의 action은 목적지, method는 전송되는 방법  --%>
		<div>
		<label for="type">타입</label>
		<select name="type" id="type">
			<option value="">선택</option> <%--option의 value은 DB에 실제로 저장되는 값, 옵션값은 화면에 보이는 값 --%>
			<option value="kor">한식</option> <%--옵션명과 DB에 저장하고 싶은 내용이 같으면 굳이 value를 작성하지 않아도 괜춘! --%>
			<option value="cha">중식</option> <%--input type =radio로 활용할 수 있--%>
			<option value="jap">일식</option>
			<option value="for">양식</option>
		</select>		
		</div>
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" placeholder="음식 이름 입력" /> 
			<%--id는 label과 짝을 짓기위해서 name 데이터의 이름표--%>
			<%--파라미터에 input의 name 요소의 값과 입력된 값이 날아감--%> 
		</div>
		<div>
			<label for="price">가격</label>
			<input type="number" name="price" id="price" max="100000" min="1000" step="100" />
			<%--입력하는 값이 숫자일 때 사용함 --%> 
		</div>
		<button type="submit">등록</button> <%--버튼은 form 안에 무조건 있어야 함 거의 자식임 --%>
	</form>
	</div>
	
</body>
</html>