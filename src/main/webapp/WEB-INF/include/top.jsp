<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="kitri.user.vo.*" %>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>  
	select {
	    width: 110px; /* 원하는 너비설정 */
	    padding: .5em .5em; /* 여백으로 높이 설정 */
	    font-family: inherit;  /* 폰트 상속 */
	    background: url('/project_final/assets/img/selected/select.png') no-repeat 100% 25%; /* 네이티브 화살표를 커스텀 화살표로 대체 */
	    border: 2px solid #99004C;
	    border-radius: 0px; /* iOS 둥근모서리 제거 */
	    -webkit-appearance: none; /* 네이티브 외형 감추기 */
	    -moz-appearance: none;
	    appearance: none;
	}

	* {box-sizing: border-box;}  
		body{margin: 0;}  
		div {padding: 15px 0} /* 상단과의 거리 */
		form {  
		  position: relative;  
		}  
	  
	.d1 input {  
		  width: 33%;  
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
    <!-- JSTL부분 승현이형부분 -->    
    <%loginVO user = (loginVO) session.getAttribute("loginUser"); %>
    <%-- <%UserVO user2 = (UserVO) session.getAttribute("loginUser"); %> --%>

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
						<!-- ingyu search start -->
						<li>
							<div class="d1">
  								<form action="/project_final/search/searchResult.do">
  								<select name="tag">
  									<option value="perform">공연</option>
									<option value="plcnm">공연장</option>
								</select>
  									<input type="text" name="search" placeholder="공연명 검색">
  										<button type="submit"></button>
  								</form>
							</div>
						</li>
						<!-- ingyu search end -->

						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000">
								<i class="fa fa-home"></i><br>Home <span class="caret"></span>
							</a>
							<ul class="dropdown-menu dropdown-menu-left" role="menu">
								<li class="active"><a href="/project_final/index.do">Home</a></li>
								<li><a href="index-2.html">Home 2</a></li>
							</ul>
						</li>
						<li>
							<a href="/project_final/perform/prfinfo/select.do"><i class="fa fa-camera"></i><br>공연정보</a>
						</li>
						<li>
							<a href="/project_final/reservation/main.do"><i class="fa fa-comments"></i><br>공연예매</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-tasks"></i><br>공연2.0</a>
						</li>
						<li>
							<a href="/project_final/mypage/mypage.do"><i class="fa fa-user"></i><br>MyPage</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-envelope"></i><br>~_~</a>
						</li>
						<li>
							<a href="/project_final/admin/main.do"><i class="fa fa-user"></i><br>후기관리</a>
						</li>
						<%-- 	<%if(loginUser==null){ %>
						<%}else if(loginUser.getUser_Id().equals("racer")){ %> --%>					
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

        					 아이디 : <input id="login__username" type="text" class="form__input" placeholder="Username" required><br><br>
			 	  			 비밀번호 : <input id="login__password" type="password" class="form__input" placeholder="Password" required>
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
