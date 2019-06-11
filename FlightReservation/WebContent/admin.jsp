<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
        crossorigin="anonymous">

    <title>Bootstrap Sandbox</title>
</head>

<style>

body{
	background-image: url("https://www.studentflights.com.au/sites/studentflights.com.au/files/fly_600x314.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	opacity: 0.9;
}

.navbar{
	background-color:#003973;
}
.dropdown-item:hover{
	background-color:#ffc312;
}

.btn-primary.custom-btn {
	background-color: #ffc312;
	border-color: #000;
}
.btn:hover{
	background-color:#003973;
}
.btn-primary.custom-btn:active{
	background:black;
}
.btn-primary.custom-btn:focus{
	background:black;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #003973;
  overflow-x: hidden;
  padding-top: 20px;
}
.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
}
.sidenav a:hover {
  color: #ffc312;
}
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  min-height: 100%;
  width: 100%;
  /*position: absolute;*/
  
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

</style>

<body>
    <div class="sidenav tab mt-5 pt-5">
	    <a href="#" class="tablinks pt-4" onclick="openCity(event, 'FLIGHTS')" id="defaultOpen">FLIGHTS</a>
	    <a href="#" class="tablinks pt-4" onclick="openCity(event, 'ROUTE')">ROUTE</a>
	    <a href="#" class="tablinks pt-4" onclick="openCity(event, 'SCHEDULE')">SCHEDULE</a>
	    <a href="#" class="tablinks pt-4" onclick="openCity(event, 'PASSENGER')">PASSENGER DETAILS</a>
	</div>
    
    <nav class="navbar fixed-top navbar-expand-sm navbar-light">
    	<div class="container">
    		<a class="navbar-brand text-white" href="#"><h1>XYZ FLIGHT SERVICES</h1></a>
    		<ul class="navbar-nav">
    			<li class="nav-item">
    				<a class="nav-item mr-2 text-white" href="#">About</a>
    			</li>
    			<li class="nav-item dropdown">
    				<a href="#" class="nav-item dropdown-toggle mr-3 text-white" data-toggle="dropdown">HELP LINE</a>
    				<div class="dropdown-menu">
    					<a class="dropdown-item">rakhy@gmail.com</a>
    					<a class="dropdown-item">9876543210</a>
    				</div>
    			</li>
    			<li class="nav-item">
    				<input class="btn btn-primary custom-btn" type="submit" value="Logout">
    			</li>
    		</ul>
    	</div>
    </nav>
    
    <div class="main float-right mt-5 pt-5">
		
	</div>
	
    
   
    
    
    <!-- ./container -->
    <div style="margin-top:500px;"></div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>

</html>
