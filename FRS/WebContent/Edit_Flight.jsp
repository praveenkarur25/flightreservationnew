<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>edit Flight</title>
   
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');
@import url('https://fonts.googleapis.com/css?family=Gothic+A1|Kaushan+Script|Libre+Baskerville|Lobster');
.body{
	font-family: 'Numans', sans-serif;
	font-size:16px;
	}
	p{
	color:black;
	font-size:1em;
	}
.navbar-brand  span{
	color: #FFC312;
	font-size:25px;font-weight:700;letter-spacing:0.1em;
    font-family: 'Numans', sans-serif;
}
.navbar-brand {
	color: #fff;
	font-size:25px;
    font-family: 'Numans', sans-serif;
	font-weight:700;
	letter-spacing:0.1em;
}
.navbar-nav .nav-item .nav-link{
	padding: 1.1em 1em!important;
	font-size: 120%;
    font-weight: 500;
    letter-spacing: 1px;
    color: #fff;
   font-family: 'Numans', sans-serif;
}
.navbar-nav .nav-item .nav-link:hover{color:#FFC312;}
.navbar-expand-md .navbar-nav .dropdown-menu{
	border-top:3px solid #fed136;
}
.dropdown-item:hover{background-color:#FFC312;color:#fff;}
nav{-webkit-transition: padding-top .3s,padding-bottom .3s;
    -moz-transition: padding-top .3s,padding-bottom .3s;
    transition: padding-top .3s,padding-bottom .3s;
    border: none;
	}
	
 .shrink {
    padding-top: 0;
    padding-bottom: 0;
    background-color: #212529;
}
.text-intro{
	width:90%;
	margin:auto;
	text-align:center;
	padding-top:610px;
}
html,body{
background-image: url('https://static.toiimg.com/thumb/65576160/Airplane.jpg?width=748&height=499');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
.container{
height: 30%;
align-content: center;
}
.card{
height: 360px;
margin-left:200px; 
margin-top: 0px;
margin-bottom: auto;
width: 700px;
background-color: rgba(0,0,0,0.5) !important;
overflow-y:auto;
}
.card-title h1{
color: white;
text-align: center;
padding:20px 10px 0px 30px;
}
.card-header h3{
color: white;
text-align: center;
}
.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}
input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;
}
.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}
.login_btn:hover{
color: black;
background-color: white;
}
.links{
color: white;
}
.links a{
margin-left: 6px;
color:#FFC312;
}
.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #003973;
  overflow-x: auto;
  overflow-y:auto;
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
.sidenav a:active {
	background-color:#ffc312;
	color: black;
}
.sidenav a:focus {
	background-color:#ffc312;
	color: black;
}
.table{
	background-color: rgba(0,0,0,0.5) !important;
	color:white !important;
}
.btn:hover{
	background-color:#ffc312;
	color:black;
	border:none !important;
}
.btn:active{
	background:black;
	border:none !important;
}
.btn:focus{
	background:black;
	border:none !important;
}
.highlight{
	background-color:#ffc312;
	color:black !important;
}
label{
	color:white;
}
form{
	color:white;
}
</style>
<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top" id="banner">
	<div class="container">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><span>ABC</span> FLIGHT SERVICES</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
      
       <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/Login.jsp" id="logout" onClick="return confirmed()">Logout</a>
      </li>
    </ul>
  </div>
	</div>
</nav>


<section id="about">
<div class="container">

</div>
</section>
	<div class="sidenav tab mt-5 pt-5">
	    <a href="http://localhost:9080/FRS/Flights.jsp" class="pt-4 highlight">FLIGHTS</a>
	    <a href="http://localhost:9080/FRS/Route.jsp" class="pt-4">ROUTE</a>
	    <a href="#" class="pt-4">SCHEDULE</a>
	    <a href="#" class="pt-4">PASSENGER DETAILS</a>
	</div>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
		
			<div class="card-header">
				
				<h3>Flight Details</h3>
				
			</div>
			<div class="card-body">
				<form action="register.jsp">
					<div class="form-group">
						Flight name : <input type="text" style="width:170px" id="flightName" name="flightName" value="Flight name" required>
				    </div>
				    <br>
				    <div class="form-group">
				    	From : <input type="text" style="width:150px" name="from" value="CBE" readonly>
				    	Via : <input type="text" style="width:150px" name="from" value="MAS" readonly>
				    	To : <input type="text" style="width:150px" name="from" value="BGR" readonly>
				    </div>
				    <div class="form-group">
				    	Class : <input type="text" style="width:150px" name="class" value="First class" readonly>
				    </div>
				    
    				<div class="form-group">
				      <label for="fare">Fare &#8377</label>
				      <input type="number" style="width:150px" id="fare" name="fare" value="Rs 1200" required>
    				</div>
    				
    				<div class="d-flex justify-content-center">
    				<div>
    					<button type="submit" class="btn btn-primary">Save</button>
					</div>
				</form>
				
				<form>
					<div">
    					<button type="submit" class="btn btn-primary ml-3">cancel</button>
					</div>
				</form>
				</div>
				
				
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script>
$(document).on("scroll", function(){
	if
  ($(document).scrollTop() > 86){
	  $("#banner").addClass("shrink");
	}
	else
	{
		$("#banner").removeClass("shrink");
	}
});
</script>
<script>
function confirmed()
		{
			if(confirm('Are you sure want to logout?')) {
		        return true;
		       
		    }

		    return false;
			}
			</script>
</html>