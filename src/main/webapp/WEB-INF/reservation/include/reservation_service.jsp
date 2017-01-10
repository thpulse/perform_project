<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script type="text/javascript">
$(document).ready(function(){
	    day31_Val = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31];
		day30_Val = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,30];
		day28_Val = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28];
		day29_Val = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29];
		
		$("#month_select").change(function(){
			var month_Val = $("#month_select option:selected").val();
			$("#day_select").html("");
			if(month_Val % 2 == 1 || month_Val == 8){
				for(i = 0; i < day31_Val.length; i++){
					$("#day_select").append("<option value=" + day31_Val[i] + ">" + day31_Val[i] +"</option>");	
				}
			}else if(month_Val % 2 == 0){
				for(i = 0; i < day30_Val.length; i++){
					$("#day_select").append("<option value=" + day30_Val[i] + ">" + day30_Val[i] +"</option>");	
				}		  					
			}else if(month_Val/4 && month_Val%4 !=0 ){
				//윤년체크
				for(i = 0; i < day29_Val.length; i++){
					$("#day_select").append("<option value=" + day29_Val[i] + ">" + day29_Val[i] +"</option>");	
				}		  				
			}else if(month_Val==2) {
				for(i = 0; i < day28_Val.length; i++){
					$("#day_select").append("<option value=" + day28_Val[i] + ">" + day28_Val[i] +"</option>");	
				}		  				
			}
		})
	
})

</script>
<body>
	 <!-- Services -->
        <div class="services-container">
	        <div class="container">
	            <div class="row">
	            	<div class="col-sm-3">
		                <div class="service wow fadeInUp">
		                <!-- fa fa-eye" -->
		                    <div class="service-icon"><i class="fa fa-table"></i></div>
		                    <h3>날짜선택</h3>
		                    <select class="selectpicker" data-size="5">
		                    <option>1월</option>
		                    <option>2월</option>
		                    <option>3월</option>
		                    <option>4월</option>
		                    <option>5월</option>
		                    <option>6월</option>
		                    <option>7월</option>
		                    <option>8월</option>
		                    <option>9월</option>
		                    <option>10월</option>
		                    <option>11월</option>
		                    <option>12월</option>		                     
		                    </select>
		                    <select class="selectpicker" data-size="5">
		                    <option>1일</option>
		                    </select>
		                </div>
					</div>
					<div class="col-sm-3">
		                <div class="service wow fadeInDown">
		                    <div class="service-icon"><i class="fa fa-magic"></i></div>
		                    <h3>영화관선택</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...</p>
		                </div>
	                </div>
	                <div class="col-sm-3">
		                <div class="service wow fadeInUp">
		                    <div class="service-icon"><i class="fa fa-magic"></i></div>
		                    <h3>공연선택</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...</p>
		                </div>
	                </div>
	                <div class="col-sm-3">
		                <div class="service wow fadeInDown">
		                    <div class="service-icon"><i class="fa fa-print"></i></div>
		                    <h3>공연시간선택</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et...</p>
		                </div>
	                </div>
	            </div>
	        </div>
        </div>

</body>
</html>