<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>간단한 게임 게시판</title>
<style>
a{text-decoration-line:none;
color:#000;}
</style>
</head>
<body>


	<h1>게임 고르기</h1>
	<button type="button" class="btn btn-outline-secondary"><a href="main.jsp" style="color:orange;" width="100px;">메뉴로 돌아가기</a></button>

	<div>

		<div class="row">

			<div class="col-sm-2"></div>

	
			<div class="col-sm-2">
			<a href="gugudan.jsp">
				<div class="card" style="width:300px">
					<img src="images/gugudan.png" class="card-img-top" alt="..."
						width="300px;">
					<div class="card-body">
						<h5 class="card-title">구구단</h5>
						<p class="card-text">간단한 구구단 게임입니다. 구구단을 보고 답을 맞추면 되는 게임입니다.</p>
						<a href="gugudan.jsp" class="btn btn-primary">구구단 하러가기</a>
					</div>
				</div>
				</a>
			</div>
	
			<div class="col-sm-2">
			<a href="tank.html">
				<div class="card" style="width:300px">
					<img src="images/tank.png" class="card-img-top" alt="..."
						width="300px;">
					<div class="card-body">
						<h5 class="card-title">탱크</h5>
						<p class="card-text">탱크게임입니다. 조준해서 표적을 맞춰보세요</p>
						<a href="tank.html" class="btn btn-primary">탱크게임 하러가기</a>
					</div>
				</div>
				</a>
			</div>

			<div class="col-sm-2">
			<a href="wordle.html">
				<div class="card" style="width:300px">
					<img src="images/wordle.jpg" class="card-img-top" alt="..."
						width="300px;">
					<div class="card-body">
						<h5 class="card-title">Wordle</h5>
						<p class="card-text">단어게임입니다. 첫번째 순서대로 단어를 맞춰보세요<br></p>
						<a href="wordle.html" class="btn btn-primary">Wordle 하러가기</a>
					</div>
				</div>
				</a>
			</div>
			
			
			<div class="col-sm-2">
			<a href="mdn.html">
				<div class="card" style="width:300px">
					<img src="images/mdn.png" class="card-img-top" alt="..." width="300px;">
					<div class="card-body">
						<h5 class="card-title">벽돌꺠기</h5>
						<p class="card-text">벽돌깨기 게임입니다. 방향키를 조종하여서 벽돌을 깨보세요!</p>
						<a href="mdn.html" class="btn btn-primary">벽돌깨기 하러가기</a>
					</div>
				</div>
				</a>
			</div>


			<div class="col-sm-2"></div>
		</div>


	</div>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>