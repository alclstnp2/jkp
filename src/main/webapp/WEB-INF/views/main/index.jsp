<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LLTairLine</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap');

/* 기본 스타일 */
body {
	margin: 0;
	font-family: "Hahmlet", serif;
	font-optical-sizing: auto;
	font-weight: 400;
	font-style: normal;
	background-color: #f5f5f5;
}

/* 메인 섹션 스타일 */
section {
	max-width: 1200px;
	margin: auto;
	padding: 20px;

}

/* 이미지 섹션 */
section #image {
	width: 1200px;
	height: 450px;
	margin: auto;
}

section #image img {
	width: 1100px;
	height: 450px;
	margin: auto;
	align: center;
}

/* 커뮤니티 섹션 */
section #community {
	max-width: 1000px;
	margin: auto;
	text-align: center;
	margin-top: 20px;
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	justify-content: center;
}

section #community .comm {
	width: 300px;
	height: 200px;
	border: 2px dashed green; /* 보더 스타일을 명확히 설정 */
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	padding: 10px;
	border-radius: 8px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

section #community .comm .name {
	width: 90px;
	height: 26px;
	font-size: 13px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin-bottom: 10px;
}

section #community .comm .title {
	width: 220px;
	height: 26px;
	font-size: 16px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

section #community a {
	color: black;
	text-decoration: none;
}

@media (max-width: 768px) {
	section {
		padding: 10px;
	}

	section #community {
		flex-direction: column;
	}

	section #community .comm {
		max-width: 300px;
		margin: auto;
	}
}
</style>
</head>
<body>
<section>
	<!-- 이미지 섹션 -->
	<div id="image">
		<img src="../static/resources/mainair.jpg" width="1100" alt="Main Image">
	</div>
	
	<!-- 커뮤니티 섹션 -->
	<div id="community">
		<div class="comm">
			<div class="name">홍길동</div>
			<div class="title">안녕하세요! 첫 방문입니다.</div>
		</div>
		<div class="comm">
			<div class="name">김철수</div>
			<div class="title">항공권 예약 문의</div>
		</div>
		<div class="comm">
			<div class="name">이영희</div>
			<div class="title">최저가 항공권 정보</div>
		</div>
	</div>
</section>
</body>
</html>
