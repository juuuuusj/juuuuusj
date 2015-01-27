<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- jquery / 부트스트랩  -->	

	<link rel="stylesheet" href="css/main.css">
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">	
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
	
	<script src="./js/jquery.scrollbox.js"></script>
	
	<script>
		
	$(function () {
		
		  $('.main_slider').scrollbox({
		    direction: 'h',
		    switchItems: 2,
		    distance: 670
		  });
		 
		});
	
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body scroll=auto style="overflow-x:hidden">
	 <div id="container">
		<div id="header">
			<div id="top_login">
				<span><a href="#">마이페이지</a></span>
				<span><a href="signUp.html">회원가입</a></span>
				<span><a href="#">로그인</a></span>
			</div>
			<div id="top_guide">
			<a href="/WebProject/index.html"><img id="logo"  src="images/dog.jpg" /></a>
			<div id="logo_name"><b>조팡</b></div>
			  <ul>	
				<div class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#"><ui>메뉴4</ui><span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="#">메뉴4-1</a></li>
					 	<li><a href="#">메뉴4-2</a></li>
					 	<li><a href="#">메뉴4-3</a></li>
					 </ul>
				</div>	
				
				<div class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#"><ui>메뉴3</ui><span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="#">메뉴3-1</a></li>
					 	<li><a href="#">메뉴3-2</a></li>
					 	<li><a href="#">메뉴2-3</a></li>
					 </ul>
				</div>
				
				<div class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#"><ui>메뉴2</ui><span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="#">메뉴2-1</a></li>
					 	<li><a href="#">메뉴2-2</a></li>
					 	<li><a href="#">메뉴2-3</a></li>
						<li><a href="#">메뉴2-4</a></li>
					 </ul>
				</div>
				
				<div class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#"><ui>메뉴1</ui><span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="menu1_1.html">메뉴1-1</a></li>
					 	<li><a href="#">메뉴1-2</a></li>
					 	<li><a href="#">메뉴1-3</a></li>
						<li><a href="#">메뉴1-4</a></li>
					 </ul>         
				</div>					
				</ul>
			</div>
		</div>
	
		