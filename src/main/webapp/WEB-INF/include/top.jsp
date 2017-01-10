<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<meta charset="UTF-8">

<!-- ingyu top/css start-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}
	body{margin: 0;}
	div {padding: 30px 0}
	form {
	  position: relative;
	  width: 300px;
	  margin: 8 auto;
	}

.d1 input {
	  width: 100%;
	  height: 42px;
	  padding-left: 10px;
	  border: 2px solid #99004C;
	  border-radius: 5px;
	  outline: none;
	  background: #F9F0DA;
	  color: #9E9C9C;
}
.d1 button {
	  position: absolute; 
	  top: 0;
	  right: 0px;
	  width: 42px;
	  height: 42px;
	  border: none;
	  background: #99004C;
	  border-radius: 0 5px 5px 0;
	  cursor: pointer;
}
.d1 button:before {
	  content: "\f002";
	  font-family: FontAwesome;
	  font-size: 16px;
	  color: #F9F0DA;
}
</style>
<!-- ingyu top/css END -->
</head>
    <body>
		 <!-- Top menu -->
		<nav class="navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Andia - a super cool design agency...</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<!-- ingyu 검색창 start -->
						<li>
							<div class="d1">
  								<form>
  									<input type="text" placeholder="검색어 입력">
  										<button type="submit"></button>
  								</form>
							</div>
						</li>
						<!-- ingyu 검색창 end -->
						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000">
								<i class="fa fa-home"></i><br>Home <span class="caret"></span>
							</a>
							<ul class="dropdown-menu dropdown-menu-left" role="menu">
								<li class="active"><a href="index.html">Home</a></li>
								<li><a href="index-2.html">Home 2</a></li>
							</ul>
						</li>
						<li>
							<a href="portfolio.html"><i class="fa fa-camera"></i><br>공연정보</a>
						</li>
						<li>
              <a href="/project_final/reservation/main.do"><i class="fa fa-comments"></i><br>공연예매</a>
						<li>
							<a href="services.html"><i class="fa fa-tasks"></i><br>공연2.0</a>
						</li>
						<li>
							<a href="about.html"><i class="fa fa-user"></i><br>MyPage</a>
						</li>
						<li>
							<a href="contact.html"><i class="fa fa-envelope"></i><br>~_~</a>
						</li>
						
					</ul>
					
				</div>
			</div>
		</nav>
    </body>
</html>