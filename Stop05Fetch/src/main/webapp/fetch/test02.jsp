<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="msg" placeholder="문자열 입력..." />
	<button id="sendBtn">전송</button>
	<script>
	document.querySelector("#sendBtn").addEventListener("click",()=>{
		//입력한 문자열 읽어오기
		const msg=document.querySelector("#msg").value;
		//fetch 함수를 호출하면서 GET 방식 파라미터 send.jsp 페이지를 요청하면서 전달한다.
		fetch("send.jsp?msg="+msg) <%--send.jsp 페이지로부터 요청하고 받아옴--%>
		.then(res=>res.text()) <%--응답--%>
		.then(data=>{ <%--data 매개 변수로 받아와서 콘솔에 출력--%>
			console.log(data);
		});
		
	});
	<%-- 
		test02.jsp 에서 웹브라우저는 서버에 요청을 하고
		서버는 가지고 온 파라미터를 가지고 
		콘솔창에 응답을 준다.
		웹브라우저와 서버와의 대화 단 , 페이지의 이동 없이 응답이 이루어짐
		회원가입 할 때 아이디가 사용 가능한지 알아보기 위해서 서버에 보내봐야 안다.
	--%>
	</script>
</body>
</html>