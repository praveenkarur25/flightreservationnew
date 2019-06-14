<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>Seat Booking</title>
   
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
height: 10%;

}
.card{
height: 525px;
margin-top: 50;
margin-bottom: auto;
width: 250px;
background-color: rgba(0,0,0,0.5) !important;
}
.card-title h1{
color: white;
text-align: center;
padding:20px 10px 0px 30px;
}
.card-header h6{
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
.seatClass{
	color:white;
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
.inpStyle{
	width:34px;
	height:20px;
	font-size:9.3px;
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


<section id="about">
<div class="container">
	
</div>
</section>
<div class="container">
	<div class="h-100">
		<div class="card">
		
			<div class="card-header">
				
				<h6>Seat Layout</h6>
				
			</div>
			<div class="card-body">
				<form name="login" action="">
					<div class="input-group form-group  d-flex justify-content-center seatClass">
						Economy Class
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="1A" value="1A" onClick="return validation(this);" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="1B" value="1B" onClick="return validatio(this);" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="1C" value="1C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="1D" value="1D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="1E" value="1E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="1F" value="1F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="2A" value="2A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="2B" value="2B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="2C" value="2C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="2D" value="2D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="2E" value="2E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="2F" value="2F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="3A" value="3A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="3B" value="3B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="3C" value="3C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="3D" value="3D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="3E" value="3E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="3F" value="3F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="4A" value="4A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="4B" value="4B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="4C" value="4C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="4D" value="4D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="4E" value="4E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="4F" value="4F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="5A" value="5A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="5B" value="5B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="5C" value="5C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="5D" value="5D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="5E" value="5E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="5F" value="5F" readonly>
						</div>
						First Class
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="6A" value="6A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="6B" value="6B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="6C" value="6C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="6D" value="6D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="6E" value="6E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="6F" value="6F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="7A" value="7A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="7B" value="7B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="7C" value="7C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="7D" value="7D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="7E" value="7E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="7F" value="7F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="8A" value="8A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="8B" value="8B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="8C" value="8C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="8D" value="8D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="8E" value="8E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="8F" value="8F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="9A" value="9A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="9B" value="9B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="9C" value="9C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="9D" value="9D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="9E" value="9E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="9F" value="9F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="10A" value="10A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="10B" value="10B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="10C" value="10C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="10D" value="10D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="10E" value="10E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="10F" value="10F" readonly>
						</div>
						Business Class
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="11A" value="11A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="11B" value="11B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="11C" value="11C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="11D" value="11D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="11E" value="11E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="11F" value="11F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="12A" value="12A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="12B" value="12B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="12C" value="12C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="12D" value="12D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="12E" value="12E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="12F" value="12F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="13A" value="13A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="13B" value="13B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="13C" value="13C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="13D" value="13D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="13E" value="13E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="13F" value="13F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="14A" value="14A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="14B" value="14B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="14C" value="14C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="14D" value="14D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="14E" value="14E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="14F" value="14F" readonly>
						</div>
						<div class="btn-group">
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="15A" value="15A" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="15B" value="15B" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="15C" value="15C" readonly>
							<input class="btn btn-primary btn-sm inpStyle ml-4" type="text" id="15D" value="15D" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="15E" value="15E" readonly>
							<input class="btn btn-primary btn-sm inpStyle" type="text" id="15F" value="15F" readonly>
						</div>
					</div>
					
				</form>
				
			</div>
			<p> Message is: <span id = "display_message"></span> </p>
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
function validation(form)
{
	var message = document.getElementById("1A").value;
	document.getElementById("display_message").innerHTML="1A";
	return false;
}
</script>
<script>
function validatio(form)
{
	var message = document.getElementById("1B").value;
	document.getElementById("display_message").innerHTML="1B";
	return false;
}
</script>
</html>
