<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   int userDab = Integer.parseInt(request.getParameter("userDab"));
   int realDab = Integer.parseInt(request.getParameter("realDab"));
   String message = userDab==realDab ? "정답" : "땡..";
   %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 결과</title>

<style>
.p{text-align:center; font-size:300px; color:green;}
</style>
</head>
<body>
	
	
	<div class="p"><%= message %></div>
	
	
		
	
</body>
</html>