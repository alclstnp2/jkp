<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@100..900&display=swap');
	* {
		margin: 0;
	}
	body {
		margin: 0;
	}
	header {
		width: 100%;
		margin: auto;
	}
	#section1 {
		width: 100%;
		height: 80px;
		margin: auto;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	#section1 #logo {
		width: 200px;
		height: 75px;
		margin-left: 50px;
	}
	#section1 #loginMenu {
		width: 375px;
	}
	#section1 #loginMenu a {
		text-decoration: none;
		color: black;
	}
	#section1 #loginMenu a:hover {
		text-decoration: underline;
		color: green;
	}
	#section1 #loginMenu #memberMenu {
		position: absolute;
		left: 1670px;
		top: 52px;
		padding-left: 0;
		width: 110px;
		background: white;
		display: none;
		z-index: 10;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}
	#section1 #loginMenu #memberMenu > li {
		list-style-type: none;
		width: 110px;
		height: 30px;
		line-height: 30px;
		text-align: center;
		cursor: pointer;
		border-bottom: 1px solid #ddd;
	}
	#section1 #loginMenu #memberMenu > li:hover {
		text-decoration: underline;
		color: green;
	}
	header > nav {
		width: 1200px;
		height: 70px;
		margin: auto;
		line-height: 50px;
	}
	header > nav a {
		text-decoration: none;
		color: black;
	}
	header > nav a:hover {
		text-decoration: underline;
		color: green;
	}
	header > nav #main {
		padding-left: 0;
		margin-left: 100px;
	}
	header > nav #main > li {
		display: inline-block;
		list-style-type: none;
		width: 200px;
		height: 50px;
		line-height: 30px;
		text-align: center;
		font-weight: 900;
		position: relative;
		z-index: 5;
	}
	header > nav #main > li > .menu {
		padding-left: 0;
		position: absolute;
		left: 0;
		top: 48px;
		background: white;
		visibility: hidden;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}
	header > nav #main > li > .menu > li {
		list-style-type: none;
		width: 200px;
		height: 35px;
		line-height: 35px;
		border-bottom: 1px solid #ddd;
	}
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
	function viewMenu(n) {
		document.getElementsByClassName("menu")[n].style.visibility = "visible";
	}
	
	function hideMenu(n) {
		document.getElementsByClassName("menu")[n].style.visibility = "hidden";
	}
	
	function viewMy() {
		document.getElementById("memberMenu").style.display = "block";
	}
	
	function hideMy() {
		document.getElementById("memberMenu").style.display = "none";
	}
</script>

    <sitemesh:write property="head"/>
    
</head>
<body>
    <header>
        <div id="section1">
            <div id="logo">
                <a href="../main/index">
                    <img src="../static/resources/123.png" width="200px" height="75px">
                </a>
            </div>

            <div id="loginMenu">
                <c:if test="${userid==null}">
                    <a href="../member/member"> 회원가입 </a> |
                    <a href="../login/login"> 로그인 </a> |
                    <span id="myInfo" onmouseover="viewMy()" onmouseout="hideMy()"> 고객서비스
                        <ul id="memberMenu">
                            <li> 회원정보 </li>
                            <li> 예약정보 </li>
                            <li> 자유게시판 </li>
                        </ul>
                    </span>
                </c:if>

                <c:if test="${userid!=null}">
                    <a href="../member/content"> XXX님 </a> |
                    <a href="../login/logout"> 로그아웃 </a> |
                    <span id="myInfo" onmouseover="viewMy()" onmouseout="hideMy()"> 고객서비스
                        <ul id="memberMenu">
                            <li> 회원정보 </li>
                            <li> 예약정보 </li>
                            <li> 자유게시판 </li>
                        </ul>
                    </span>
                </c:if>
            </div>
        </div>

        <nav>
            <ul id="main">
                <li onmouseover="viewMenu(0)" onmouseout="hideMenu(0)"> 예약
                    <ul class="menu">
                        <li><a href="../menu/index1">여행 준비</a></li>
                        <li><a href="../menu/index2">여행</a></li>
                        <li><a href="../menu/index3">예약 취소</a></li>
                    </ul>
                </li>
                <li onmouseover="viewMenu(1)" onmouseout="hideMenu(1)"> 항공권
                    <ul class="menu">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </li>
                <li onmouseover="viewMenu(2)" onmouseout="hideMenu(2)"> 최저가
                    <ul class="menu">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </li>
                <li onmouseover="viewMenu(3)" onmouseout="hideMenu(3)"> 여행지
                    <ul class="menu">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </li>
                <li onmouseover="viewMenu(4)" onmouseout="hideMenu(4)"> 호텔
                    <ul class="menu">
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <sitemesh:write property="body"/>

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