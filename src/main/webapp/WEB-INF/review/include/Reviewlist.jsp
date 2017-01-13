<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>목록</title>
</head>
<body>
<div class>
	<form role="form" class="form-horizontal" action="/project_final/review/Reviewlist.do" method="post" name="myform">
		<fieldset>
			<table class="list">
							<thead>
								<tr>
									<th>제목</th>
									<th>번호</th>
									<th>아이디</th>
									<th>내용</th>
									<th>별점</th>
									<th>좋아요</th>
									<th>싫어요</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="review" items="${reviewlist}">
									<tr>
										<td>${review.prf_id}</td>
										<td>${review.revno}</td>
										<td>${review.mem_id}</td>
										<td>${review.revcomment}</td>
										<td>${review.revgrade}</td>
										<td>${review.revgood}</td>
										<td>${review.revbad}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/project_final/review/write.do"
								style="text-align: right;">글쓰기</a></li>
						</ul>
</body>
</html>