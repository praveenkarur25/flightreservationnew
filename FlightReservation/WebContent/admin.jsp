<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>admin-main</title>
   
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
background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1IPcJIr28ZsLvA-PvXHsWOg3__DJYxfwc1Mjzts_eALouWEDaAA');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
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
        <a class="nav-link" href="#">About us</a>
      </li>
	   
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Helpline
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" >080-655412626</a>
        <a class="dropdown-item" >abcflights@helpline.com</a>
      </div>
    </li>
    </ul>
  </div>
	</div>
</nav>

	<div class="sidenav tab mt-5 pt-5">
	    <a href="http://localhost:8037/My_website/refer_n_test.jsp" class="pt-4">FLIGHTS</a>
	    <a href="#" class="pt-4">ROUTE</a>
	    <a href="#" class="pt-4">SCHEDULE</a>
	    <a href="#" class="pt-4">PASSENGER DETAILS</a>
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
</html>
