<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>	
	<div><h2>[����]�ڽ����ǽ�</h2></div>
	<table style="border: thin; border-style: solid;">
	<c:forEach var="prf" items="${prflist}">
		<tr style="text-align:center; border-style: solid;">
			<td><h3>${prf.rank}��</h3></td>
			<td><img src=${prf.poster}></td>
			<td><h4>${prf.prfnm}</h4></td>
			<td><h5>��������: ${prf.prfperiod}</h5></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>