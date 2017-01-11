<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
						</li>
						<li>
							<a href="services.html"><i class="fa fa-tasks"></i><br>공연2.0</a>
						</li>
						<li>
							<a href="about.html"><i class="fa fa-user"></i><br>MyPage</a>
						</li>
						<li>
							<a href="contact.html"><i class="fa fa-envelope"></i><br>~_~</a>
						</li>
						<li>
							<a href="about.html"><i class="fa fa-user"></i><br>관리자</a>
						</li>
						<li>
							<a href="#" onclick="login" data-toggle="modal" data-target="#myModal"><i class="fa fa-lock"></i><br>Log-in</a>
						
						
						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  							<div class="modal-dialog modal-lg" role="document">
    						<div class="modal-content">
      						<div class="modal-header">
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        					
        					 아이디 : <input id="login__username" type="text" class="form__input" placeholder="Username" required><br><br>
        					 
     					 	  비밀번호 : <input id="login__password" type="password" class="form__input" placeholder="Password" required>
     					 	</div>
      						
      					
      					
      					 	 <div class="form__field">
         				 			<p><input type="submit" onclick="location.href='/project_final/login.do'" class="btn btn-info" value="Log-In">
         				 			   <input type="submit" onclick="location.href='/project_final/insert.do'" class="btn btn-info" value="Sign-up"></p>
      						 </div>
      						
      					
    						</div>
  						</div>
  					</div>
					</li>
					
					</ul>
			</div>
			</div>
		</nav>
    </body>
</html>