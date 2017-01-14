<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<style type="text/css">
		col-sm-8 > tr,td{
			padding: 8px;
			border-style: solid;
			border-width: thin;
		}
	</style>
</head>
<body>
<div class="portfolio-container">
	<div class="container">
		<!-- 상세정보 top -->
		<div class="row">
			<div class="col-sm-12 portfolio-filters wow fadeInLeft">
				<a href="/project_final/perform/prfinfo/select.do">공연보기</a> /
				<a>${prf.prfnm}</a>
			</div>
		</div>
		
		<!-- 상세정보 포스터 -->
		<div class="col-sm-4 well">
			<img style="height: 380px" src="${prf.poster}">
		</div>		
		<!-- 상세정보 -->
		<div class="col-sm-8">
			<table style="">
				<tr>
					<td><h3>${prf.prfnm}</h3></td>
				</tr>
				<tr>
					<td>공연기간: ${prf.prfpdfrom}~${prf.prfpdto}</td>
				</tr>
				<tr>
					<td>공연시간: ${prf.prfdaytime}</td>
				</tr>
				<tr>
					<td>공연장소: ${prf.plcid}</td>
				</tr>
				<tr>
					<td>출연진: </td>
				</tr>
				<tr>
					<td>제작진: </td>
				</tr>
				<tr>
					<td>관람시간: </td>
				</tr>
				<tr>
					<td>관람연령: </td>
				</tr>
				<tr>
					<td>제작사: </td>
				</tr>
				<tr>
					<td>티켓가격: </td>
				</tr>
			</table>
		</div>
		
	</div>
</div>
</body>
</html>