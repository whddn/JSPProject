<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="mystyle.css">


<title>로그인 페이지</title>
</head>
<body>

<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-default" style="background-color: yellow;">
		<!-- 네비게이션 -->
		<div class="navbar-header">
			<!-- 네비게이션 상단 부분 -->
			<!-- 네비게이션 상단 박스 영역 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- 이 삼줄 버튼은 화면이 좁아지면 우측에 나타난다 -->
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="main.jsp">게임 커뮤니티 사이트</a>
		</div>

		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="gsp.jsp">Q&A게시판</a></li>
				<li><a href="game.jsp">게임</a></li>
			</ul>
			<%
				// 로그인 하지 않았을 때 보여지는 화면
			if (userID == null) {
			%>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">내정보<span class="caret"></span></a> <!-- 드랍다운 아이템 영역 -->
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
			} else {
			%>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">내정보<span class="caret"></span></a> <!-- 드랍다운 아이템 영역 -->
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>


	<!-- 로그인 양식 -->

	<section class="login-form">
		<h1>로그인</h1>
		<form action="loginAction.jsp" method="post">
			<div class="int-area">
				<input type="text" name="userID" id="id" autocomplete="off" required>
				<label for="id">USER ID</label>
			</div>
			<br>
			<div class="int-area">
				<input type="password" name="userPassword" id="pw"
					autocomplete="off" required> <label for="pw">PASSWORD</label>
			</div>
			<div class="btn-area">
				<button type="submit">LOGIN</button>
				<br>
				<br> <a href="kakaoLogin();"> <img
					src="images/kakao_login_medium_narrow.png" /></a>
				<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
				<script>
					Kakao.init('d4026707bdb2d30aa1ab5fcc9c40a3a1'); //발급받은 키 중 javascript키를 사용해준다.
					console.log(Kakao.isInitialized());

					function kakaoLogin() {
						Kakao.Auth.login({
							success : function(response) {
								Kakao.API.request({
									url : '/v2/user/me',
									success : function(response) {
										console.log(response)
									},
									fail : function(error) {
										console.log(error)
									},
								})
							},
							fail : function(error) {
								console.log(error)
							},
						})
					}
					//카카오로그아웃  
					function kakaoLogout() {
						if (Kakao.Auth.getAccessToken()) {
							Kakao.API.request({
								url : '/v1/user/unlink',
								success : function(response) {
									console.log(response)
								},
								fail : function(error) {
									console.log(error)
								},
							})
							Kakao.Auth.setAccessToken(undefined)
						}
					}
				</script>


				<div class="caption">
					<a href="">Forgot Password?</a>
				</div>
			</div>
		</form>

	</section>

	<script>
		let id = $('#id');
		let pw = $('#pw');
		let btn = $('#btn');

		$('#btn').on('click', function() {
			if ($('#id').val() == "") {
				$('#id').next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			} else if ($(pw).val() == "") {
				$('#pw').next('label').addClass('warning');
				setTimeout(function() {
					$('label').removeClass('warning');
				}, 1500);
			}
		});
	</script>









	<!-- 부트스트랩 참조 영역 -->

	<script src="js/bootstrap.js"></script>


</body>