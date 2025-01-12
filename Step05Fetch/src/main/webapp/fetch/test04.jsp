<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test04.jsp</title>
</head>
<body>
	<button id="getBtn">친구이름 목록 받아오기</button>
	<button id="getBtn2">친구 이름 목록 받아오기2</button>		
	<ul id="friendList">
	
	</ul>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<script>
		$("#getBtn").on("click", ()=>{
			fetch("friends.jsp")
			.then(res=>res.json())
			.then(data=>{ 
				//data 는 친구 이름이 순서대로 들어 있는 배열
				console.log(data);
				//반복문 돌면서 
				for(let i=0; i<data.length; i++){
					// li 요소를 만들어서 선택하고 innerText 출력한후 jquery 객체(배열)을 상수에 담기
					const li = $("<li>").text(data[i]);
					// id 가 friendList 인 요소에 추가하기
					$("#friendList").append(li);
				}
			})
			.catch(error=>{
				console.log("에러정보:"+error);
			});
		});
		
		//바닐라 코딩으로 친구 이름 목록 받아오기
		document.querySelector("#getBtn2").addEventListener("click",()=>{
			fetch("friends.jsp")
			.then(res=>res.json())
			.then(data=>{
				for(let i=0;i<data.length;i++){
					//li요소를 생성하고 li 상수에 담아야 함
					//웹 프로그래밍 에선 다음에 이용하기 위해서는 변수나 상우에 무조건 담아야 함.
					const li=document.createElement("li");
					//li요소에 내용 넣기
					li.innerText=data[i];
					//ul에 li요소 추가하기
					document.querySelector("#friendList").append(li);
					}
				})
			
			
			.catch(error=>{
				console.log("에러정보:"+error);
			});
		});
		
		
	</script>
</body>
</html>







