<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>review등록</title>
</head>
<body>
	<div class="col-sm-12">
			<form role="form" class="form-horizontal" action="/project_final/review/write.do" 
				method="post" name="myform">
				<fieldset>

						<div class="form-group">
						<label class="control-label col-sm-2" for="orgid">공연제목</label>
						<div class="col-sm-3">
							<input type="text" id="prf_id" name="prf_id"
								value="도깨비" class="form-control" required>
						</div>
					</div>
					
					<!-- <div class="form-group">
						<label class="control-label col-sm-2" for="orgno">등록번호</label>
						<div class="col-sm-3">
							<input type="number" id="orgno" name="revno" class="form-control" value="1">
						</div>
					</div> -->
					
						<div class="form-group">
						<label class="control-label col-sm-2" for="orgid">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="mem_id" name="mem_id"
								value="공유도깨비" class="form-control" required>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 내용 -->
						<label class="control-label col-sm-4" for="orgtext">내용</label>
						<div class="col-sm-3">
						<input type="text" rows="1" cols="140" id="revcomment" name="revcomment" 
							value="공유도깨비 도깨비신부랑 오래사세요" class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="orggrade">별 점</label>
						<div class="col-sm-3"> 
							<input type="checkbox"  name="revgrade" id="1" value="1"/>1점
							<input type="checkbox"  name="revgrade" id="2" value="2"/>2점
							<input type="checkbox"  name="revgrade" id="3" value="3"/>3점
							<input type="checkbox"  name="revgrade" id="4" value="4"/>4점
							<input type="checkbox"  name="revgrade" id="5" value="5"/>5점
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="orggrade"></label>
						<div class="col-sm-3"> 
							<input type="radio"  name="revgood" id="1" value="1"/>좋아요
							<input type="radio"  name="revbad" id="2" value="2"/>싫어요
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="orgdate"></label>
						<div class="col-sm-3"> 
							<input type="text" id="orgdate" name="revdate"
								value="20160112" class="form-control" required>
						</div>
					</div>
					
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-2">
							<input type="submit" value="등록하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>
	</div>
</body>
</html>