<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LLTairLine</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');

body {
    margin: 0;
    font-family: "Hahmlet", serif;
    font-optical-sizing: auto;
    font-weight: 400;
    font-style: normal;
}

/* 전체 레이아웃 */
#outer {
    width: 100%;
    height: 40px;
    background: green;
}
#outer #first {
    width: 1100px;
    height: 40px;
    }

#outer #first #left {
    width: 700px;
    height: 40px;
    line-height: 40px;
    margin: auto;
    text-align: right;
    color: white;
    font-family: 'Hahmlet';
    display:inline-block;
    padding: 0 20px;
}
#outer #first #right {
	width: 300px;
   height: 40px;
   line-height: 40px;
   margin: auto;
	text-align: left;
   color: white;
   font-family: 'Hahmlet';
   display:inline-block;
   padding: 0 20px;
}

header {
    width: 1100px;
    height: 70px;
    margin: auto;
    line-height: 70px;    
}

header #left {
    width: 800px;
    height: 70px;
    line-height: 70px;
    float: left;
}

header #right {
   width: 300px;
   height: 70px;
   line-height: 70px;
   float: right;
   position: relative;
}

header #memberMenu {  /* ul */
    position: absolute;
    left: 130px;
    top: 30px;
    padding-left: 0;
    width: 110px;
    background: white;
    display: none;
    z-index: 10; /* 다른 요소들 위에 표시되도록 설정 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

header #memberMenu > li {   /* 대분류 메뉴 */
    list-style-type: none;
    width: 110px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    cursor: pointer;
    border-bottom: 1px solid #ddd;
}

header a {
    text-decoration: none;
    color: black;
}

header a:hover {
    text-decoration: underline;
    color: green;
}

/* 메뉴와 서브 메뉴 */
nav {
    width: 1100px;
    margin: auto;
    font-family: 'Hahmlet';
    padding: 10px 20px;
    text-align: center;
    border: 1px solid skyblue;
    border-radius: 8px;
}

nav ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

nav ul li {
	width: 20%;
	font-size: 20px;
	font-weight: 600;
	display: inline-block;
   margin: 0 10px;
   position: relative;
}

nav ul li a {
   text-decoration: none;
   color: black;
   font-weight: 700;
}

nav ul li a:hover {
    text-decoration: underline;
    color: green;
}

nav ul li ul {
	
   display: none;
   position: absolute;
   left: 80px;
   top: 100%;
   background-color: white;
   padding: 5px 5px;
   box-shadow: 0 4px 8px rgba(0,0,0,0.1);
   border-radius: 4px;
   text-align: left;
}

nav ul li:hover ul {
    display: block;
}

nav ul li ul li {
	width: 110px;
    display: block;
    font-size: 16px;
    padding: 5px 5px;
    text-align: left;
}

/* 푸터 스타일 */
footer {
    padding-top: 10px;
    padding-bottom: 5px;
    width: 100%;
    height: auto;
    margin: auto;
    font-family: 'Hahmlet';
    margin-top: 30px;
    font-size: 13px;
    background: #9AB973;
    color: white;
    text-align: center;
}

footer table {
    width: 100%;
    max-width: 1000px;
    margin: auto;
}

@media (max-width: 768px) {
    header, #outer #first, nav ul {
        flex-direction: column;
        text-align: center;
    }

    nav ul li {
        display: block;
        margin: 10px 0;
    }

    footer table, footer td {
        font-size: 11px;
    }
}

</style>

<script>
    var h=40;
    function hideX() {
        ss=setInterval(function() {
            h--;
            document.getElementById("first").style.height=h+"px";
            document.getElementById("outer").style.height=h+"px";
            
            if(h==0) {
                document.getElementById("outer").style.display="none";
                clearInterval(ss);
            }
        },10);
    }

    function viewMy() {
        document.getElementById("memberMenu").style.display="block"; // display를 block으로 설정하여 보여줌
    }

    function hideMy() {
        document.getElementById("memberMenu").style.display="none"; // display를 none으로 설정하여 숨김
    }
</script>
</head>
<body>
    <!-- 프로모션 배너 -->
    <div id="outer">
        <div id="first"> 
            <div id="left" class="first"> 오픈 기념! 왕복하면 돌아오는건 공짜! </div> 
            <div id="right" class="first"> <span onclick="hideX()" style="cursor:pointer"> ⓧ </span> </div>
        </div>
    </div>

    <!-- 헤더 영역 -->
    <header>
        <div id="left"> 
            <a href="../main/index"> 
                <img src="../static/resources/123.png" width="25%" height="100%" valign="middle">
            </a> 
        </div>
        <div id="right">
				<c:if test="${userid==null}">
            <a href="#">로그인</a> |
            <a href="#">회원가입</a> |
            <a href="#">고객센터</a>
            </c:if>
            <c:if test="${userid!=null}">
            <span id="myInfo" onmouseover="viewMy()" onmouseout="hideMy()"> OOO 님 |
                <ul id="memberMenu">
                    <li> 회원정보 </li>
                    <li> 예약정보 </li>
                    <li> 나의글 </li>
                    <li> 나의문의 </li>
                </ul>
            </span>
            <a href="#">로그아웃</a> |
            <a href="#">고객센터</a>
            </c:if>
        </div>
    </header>

    <!-- 네비게이션 메뉴 -->
    <nav>
        <ul id="main">
            <li> 예약 
                <ul class="menu">
                    <li> 여행 준비 </li>
                    <li> 여행 </li>
                </ul>
            </li>
            <li> 항공권 
                <ul class="menu">
                    <li> 항공권 예약 </li>
                    <li> 예약 조회 </li>
                    <li> 체크인 </li>
                </ul>
            </li>
            <li> 최저가 
                <ul class="menu">
                    <li> 항공권 예약 </li>
                    <li> 최저가 간편조회 </li>
                    <li> 할인 혜택 </li>
                </ul>
            </li>
        </ul>
    </nav>

    <!-- 메인 콘텐츠 (생략 가능) -->
    <section>
        <sitemesh:write property="body"/>
    </section>

    <!-- 푸터 -->
    <footer>
        <table>
            <tr>
                <td rowspan="5" width="200"></td>
                <td rowspan="5"><img alt="logo" src="../static/resources/123.png" width="80" align="middle"></td>
                <td> 상호명 : LLTA </td>
                <td> 365고객센터 </td>
            </tr>
            <tr>
                <td> 대표이사 : 주인장 </td>
                <td> 080-888-1234(무료) </td>
            </tr>
            <tr>
                <td> 본사 : 경기도 파주시 야당동 </td>
                <td> email : Tmaster@air.co.kr </td>
            </tr>
            <tr>
                <td> 사업자 등록번호 : 444-44-44444 </td>
                <td> 전화번호 : 010-1234-5678 </td>
            </tr>
            <tr>
                <td> 통신판매업신고 : 2023-경기비행-1234 </td>
                <td></td>
            </tr>
        </table>
    </footer>
</body>
</html>