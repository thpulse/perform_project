<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

.wrapper {
  margin: 0 auto;
  padding: 40px;
  max-width: 800px;
}

.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}
@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
}

.row {
  display: table-row;
  background: #f6f6f6;
}
.row:nth-of-type(odd) {
  background: #e9e9e9;
}
.row.header {
  font-weight: 900;
  color: #ffffff;
  background: #761A1A;
}

@media screen and (max-width: 580px) {
  .row {
    padding: 8px 0;
    display: block;
  }
}

.cell {
  padding: 6px 12px;
  display: table-cell;
}
@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 12px;
    display: block;
  }
}

#demo-container{padding:25px 15px 0 15px;background:#761A1A;}

ul#simple-menu{list-style-type:none;width:100%;position:relative;height:27px;font-family:"Trebuchet MS",Arial,sans-serif;font-size:13px;font-weight:bold;margin:0;padding:11px 0 0 0;}
ul#simple-menu li{display:block;float:left;margin:0 0 0 4px;height:27px;}
ul#simple-menu li.left{margin:0;}
ul#simple-menu li a{display:block;float:left;color:#e9e9e9;background:#CC3D3D;line-height:27px;text-decoration:none;padding:0 17px 0 18px;height:27px;}
ul#simple-menu li a.right{padding-right:19px;}
ul#simple-menu li a:hover{background:#FFA7A7;}
ul#simple-menu li a.current{color:#e9e9e9;background:#FFA7A7;}
ul#simple-menu li a.current:hover{color:#D9E5FF;background:#FFA7A7;}
</style>
</head>
<body>
<div id="demo-container">

	<ul id="simple-menu">
		<li><a href="#" title="Home" class="current">Home</a></li>
		<li><a href="#" title="Home">Resources</a></li>
		<li><a href="#" title="Home">Inspiration</a></li>
		<li><a href="#" title="Home">Community Forums</a></li>
		<li><a href="#" title="Home">About Us</a></li>
		<li><a href="#" title="Home">Contact Us</a></li>
	</ul>
</div>


	<div class="wrapper">
  
  <div class="table">
    
    <div class="row header">
      <div class="cell">
        Name
      </div>
      <div class="cell">
        Age
      </div>
      <div class="cell">
        Occupation
      </div>
      <div class="cell">
        Location
      </div>
    </div>
    
    <div class="row">
      <div class="cell">
        Luke Peters
      </div>
      <div class="cell">
        25
      </div>
      <div class="cell">
        Freelance Web Developer
      </div>
      <div class="cell">
        Brookline, MA
      </div>
    </div>
    
    <div class="row">
      <div class="cell">
        Joseph Smith
      </div>
      <div class="cell">
        27
      </div>
      <div class="cell">
        Project Manager
      </div>
      <div class="cell">
        Somerville, MA
      </div>
    </div>
    
    <div class="row">
      <div class="cell">
        Maxwell Johnson
      </div>
      <div class="cell">
        26
      </div>
      <div class="cell">
        UX Architect & Designer
      </div>
      <div class="cell">
        Arlington, MA
      </div>
    </div>
    
    <div class="row">
      <div class="cell">
        Harry Harrison
      </div>
      <div class="cell">
        25
      </div>
      <div class="cell">
        Front-End Developer
      </div>
      <div class="cell">
        Boston, MA
      </div>
    </div>
    
  </div>
  
</div>
</body>
</html>