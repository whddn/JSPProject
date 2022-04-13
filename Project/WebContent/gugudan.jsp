<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 페이지</title>
<style>
.menu{color:rainbow; font-size:100px; font-weight:100; text-align:center;}

</style>
</head>
<body>
	<%
		int n1= (int)(Math.random()*8) +2;
		int n2= (int)(Math.random()*9) +1;
		int realDab = n1 * n2;
	%>
	<div class="menu">
	<form action="gugudan_result.jsp" method="post">
	
		<%=n1 %> X <%=n2 %> = <textarea name="userDab" style="width:100px; height:100px;"></textarea>
		<input type = "hidden" name= "realDab" value="<%=realDab %>">
		<input type = "submit" value="결과보기!">
	</div>
	</form>
</body>
</html>