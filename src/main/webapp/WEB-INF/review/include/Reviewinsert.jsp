<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>review���</title>
</head>
<body>
	<div class="col-sm-12">
			<form role="form" class="form-horizontal" action="/project_final/review/write.do" 
				method="post" name="myform">
				<fieldset>

						<div class="form-group">
						<label class="control-label col-sm-2" for="orgid">��������</label>
						<div class="col-sm-3">
							<input type="text" id="prf_id" name="prf_id"
								value="������" class="form-control" required>
						</div>
					</div>
					
					<!-- <div class="form-group">
						<label class="control-label col-sm-2" for="orgno">��Ϲ�ȣ</label>
						<div class="col-sm-3">
							<input type="number" id="orgno" name="revno" class="form-control" value="1">
						</div>
					</div> -->
					
						<div class="form-group">
						<label class="control-label col-sm-2" for="orgid">���̵�</label>
						<div class="col-sm-3">
							<input type="text" id="mem_id" name="mem_id"
								value="����������" class="form-control" required>
						</div>
					</div>
					
					<div class="form-group">
						<!-- ���� -->
						<label class="control-label col-sm-4" for="orgtext">����</label>
						<div class="col-sm-3">
						<input type="text" rows="1" cols="140" id="revcomment" name="revcomment" 
							value="���������� ������źζ� �����缼��" class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="orggrade">�� ��</label>
						<div class="col-sm-3"> 
							<input type="checkbox"  name="revgrade" id="1" value="1"/>1��
							<input type="checkbox"  name="revgrade" id="2" value="2"/>2��
							<input type="checkbox"  name="revgrade" id="3" value="3"/>3��
							<input type="checkbox"  name="revgrade" id="4" value="4"/>4��
							<input type="checkbox"  name="revgrade" id="5" value="5"/>5��
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="orggrade"></label>
						<div class="col-sm-3"> 
							<input type="radio"  name="revgood" id="1" value="1"/>���ƿ�
							<input type="radio"  name="revbad" id="2" value="2"/>�Ⱦ��
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
							<input type="submit" value="����ϱ�" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
			</form>
	</div>
</body>
</html>