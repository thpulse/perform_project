<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kitri.user.vo.*" %>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <body>
    <%loginVO user = (loginVO) session.getAttribute("loginUser"); %>
    <%-- <%UserVO user2 = (UserVO) session.getAttribute("loginUser"); %> --%>
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
							<a href="portfolio.html"><i class="fa fa-camera"></i><br>Portfolio</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-comments"></i><br>Blog</a>
						</li>
						<li>
							<a href="services.html"><i class="fa fa-tasks"></i><br>Services</a>
						</li>
						<li>
							<a href="about.html"><i class="fa fa-user"></i><br>About</a>
						</li>
						<li>
							<a href="contact.html"><i class="fa fa-envelope"></i><br>Contact</a>
						</li>
					<%-- 	<%if(loginUser==null){ %>
						<%}else if(loginUser.getUser_Id().equals("racer")){ %> --%>
						
						<li>
							<a href="/project_final/list.do" onclick="list"><i class="fa fa-user"></i><br>회원관리</a>
						</li>
					<%-- 	<%} %> --%>
						
						<li>
							<c:if test="${loginUser.user_id==null}">
							<a href="#" onclick="login" data-toggle="modal" data-target="#myModal"><i class="fa fa-unlock"></i><br>Log-in</a>
							</c:if>
							<c:if test="${loginUser.user_id!=null}">
							<a href="/project_final/logout.do" onclick="logout"><i class="fa fa-lock"></i><br>LogOut</a>
							</c:if>
						<form role="form" action="/project_final/login.do" method="POST">
						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  							<div class="modal-dialog modal-lg" role="document">
    						<div class="modal-content">
      						<div class="modal-header">
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        					
        					  아이디 : <input type="text" name="user_id" type="text" class="form__input" placeholder="Username" required><br><br>
        					 
     					 	  비밀번호 : <input type="password" name="user_pass" type="password" class="form__input" placeholder="Password" required>
     					 </div>
      					
      					 	 <div class="form__field">
         				 			<p><input type="submit"  class="btn btn-info" value="Log-In">
         				 			  <input type="submit" onclick="location.href='/project_final/insert.do'" class="btn btn-info" value="Sign-up"></p>
         				 	 </div>
      					</div>
  						</div>
  						
  					</div>
  					</form>
  						
				</li>
				</ul>
			</div>
			</div>
		</nav>
    </body>
</html>