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
		<!-- ������ top -->
		<div class="row">
			<div class="col-sm-12 portfolio-filters wow fadeInLeft">
				<a href="/project_final/perform/prfinfo/select.do">��������</a> /
				<a>${prf.prfnm}</a>
			</div>
		</div>
		
		<!-- ������ ������ -->
		<div class="col-sm-4 well">
			<img style="height: 380px" src="${prf.poster}">
		</div>		
		<!-- ������ -->
		<div class="col-sm-8">
			<table style="">
				<tr>
					<td><h3>${prf.prfnm}</h3></td>
				</tr>
				<tr>
					<td>�����Ⱓ: ${prf.prfpdfrom}~${prf.prfpdto}</td>
				</tr>
				<tr>
					<td>�����ð�: ${prf.prfdaytime}</td>
				</tr>
				<tr>
					<td>�������: ${prf.plcid}</td>
				</tr>
				<tr>
					<td>�⿬��: </td>
				</tr>
				<tr>
					<td>������: </td>
				</tr>
				<tr>
					<td>�����ð�: </td>
				</tr>
				<tr>
					<td>��������: </td>
				</tr>
				<tr>
					<td>���ۻ�: </td>
				</tr>
				<tr>
					<td>Ƽ�ϰ���: </td>
				</tr>
			</table>
		</div>
		
	</div>
</div>
</body>
</html>