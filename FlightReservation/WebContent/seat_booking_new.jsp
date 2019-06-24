<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>User Page</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
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
	h2{
	color:white;
	font-family: 'Numans', sans-serif;
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
	padding-top:90px;
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
/* Float four columns side by side */
.column1 {
  float: left;
  width: 25%;
  padding: 0 10px;
}
.column2 {
  float: left;
  width: 75%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column1 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
  .column2 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
.card{
height: 525px;
margin-top: 10;
margin-bottom: auto;
background-color: rgba(0,0,0,0.5) !important;
overflow-x:auto;
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
	margin-left:0px;
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
		border:none !important;
}
.btn:disabled{
	background:grey;
	border:none !important;
}
.tname{
	background:#007bff;
}
<!-- SEAT LAYOUT -->
.ol {
  list-style: none;

}
.seats {
 display: flex;
 

  height:20px;

}
.seat {
  display: flex;
  flex: 0 0 12.28571428571429% !important;
  padding: 2px;
  position: relative ;
  width:40px;
  height:20px;
}
.seat:nth-child(3) {
  margin-right: 7%;
}

.seat:nth-child(6) {
  margin-right: 5%;
}

.seat input[type=checkbox] {
  
  position: absolute;
  opacity: 0;
}
.seat input[type=checkbox]:checked + label {
  background: blue;
}
.seat input[type=checkbox]:disabled + label {
  background: grey;
  overflow: hidden;
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 15px;
  font-weight: bold;
  line-height: 1rem;
  padding: 5px 2px !important;
  border-radius: 3px;
  margin-bottom: -0.9rem;
}
.seat input[type=checkbox]:disabled + label:after {
  content: "";
  text-indent: 0;
  position: absolute;
  top: 5px;
  left: 50%;
  transform: translate(-50%, 0%);
}
.seat input[type=checkbox]:disabled + label:hover {
  box-shadow: none;
  cursor: not-allowed;
}
.seat label {
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  line-height: 1rem;
  padding: 5px 2px !important;
  background:#007bff;
  border-radius: 3px;
  margin-bottom: -.9rem;
 
}
.seat label:before {
  content: "";
  position: absolute;
  width: 75%;
  top: 0px;
  left: 50%;
  transform: translate(-50%, 0%);
  background: rgba(255, 255, 255, 0.4);
  border-radius: 3px;
}
.seat label:hover {
  cursor: pointer;
  box-shadow:blue;
  background:#FFC312;
}
.seat label:active {
background:blue;
}
.seat label:focus {
background:blue;
}
</style>
<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top" id="banner">
	<div class="container">
  <!-- Brand -->
  <a class="navbar-brand" href="#">ABC FLIGHT SERVICES</a>
<!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
<!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
       <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/FlightReservation/user.jsp"><i class="fas fa-home" ></i>Home</a>
      </li>
	   <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/FlightReservation/Aboutus.jsp"><i class="fas fa-ticket-alt"></i>My Bookings</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/FlightReservation/Aboutus.jsp" style="color:#ffc312;"><i class="fas fa-user" style="color:#ffc312;"></i>My Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/FlightReservation/login.jsp" id="logout" onClick="return confirmed()"><i class="fas fa-sign-out-alt"></i>Logout</a>
      </li> 
    </ul>
  </div>
	</div>
</nav>
<section id="about">
<div class="container">
	<div class="text-intro">
</div>
</div>
</section>
 <div class="container">
	<div class="h-100">
		<div class="row">
			<div class="column1">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title text-white text-start">Seat Layout</h2><br><br>
					<form class="text-center" name="check">
				 	<div class="input-group form-group  d-flex justify-content-center seatClass">
								<h6 class="text-white ml-3 mb-0">Economy Class</h6><br><br>
				    <div class="wrapper">
				  
				      <ol class="seats" type="A">
				        <li class="seat">
				         <input type="checkbox" id="A1" />
				          <label for="A1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="A2" />
				          <label for="A2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="A3" />
				          <label for="A3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="A4" />
				          <label for="A4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="A5" />
				          <label for="A5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="A6"/>
				          <label for="A6">06</label>
				        </li>A
				        </ol>
			          <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="B1" />
				          <label for="B1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="B2" />
				          <label for="B2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="B3" />
				          <label for="B3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="B4" />
				          <label for="B4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="B5" />
				          <label for="B5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="B6" />
				          <label for="B6">06</label>
				        </li>
				        B
				        </ol>
				    <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="C1" />
				          <label for="C1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="C2" />
				          <label for="C2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="C3" />
				          <label for="C3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="C4" />
				          <label for="C4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="C5" />
				          <label for="C5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="C6" />
				          <label for="C6">06</label>
				        </li>C
				        </ol>
				        <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="D1" />
				          <label for="D1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="D2" />
				          <label for="D2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="D3" />
				          <label for="D3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="D4" />
				          <label for="D4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="D5" />
				          <label for="D5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="D6" />
				          <label for="D6">06</label>
				        </li>D
				      </ol>
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="E1" />
				          <label for="E1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="E2" />
				          <label for="E2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="E3" />
				          <label for="E3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="E4" />
				          <label for="E4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="E5" />
				          <label for="E5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="E6" />
				          <label for="E6">06</label>
				        </li>E
				       </ol>
				    </div> 
			</div>
					<div class="row">
						<div class="col-5">
							<span class="total-score text-white" id="count"><h6 class="mt-2">Seat : <span class="number">0</span></span></h6>
 						</div>
 	
 						<div class="col-3">
							<input type="submit" onclick="return validation()" class="btn btn-primary btn-sm-2 ml-4 verify " value="done">
 						</div>
 					</div>		
 				</form>
			</div>
		</div>
	</div>
			<div class="column2">
				<div class="card text-white">
					<div class="card-body">
						<h5 class="card-title text-center">Passenger Details</h5><br>
						<form>
							<div class="row">
								<div class="col">
									<label for="from">From:</label>
	    							<input type="text" id="from" readonly>
								</div>
								<div class="col">
									<label for="to">To:</label>
	    							<input type="text" id="to" readonly>
								</div>
							</div><br>
							<div class="row">
								<div class="col">
									<label for="arr_time">Arrival Time:</label>
	    							<input type="text" id="arr_time" style="width:100px;" readonly>
								</div>
								<div class="col">
									<label for="dept_time">Departure Time:</label>
	    							<input type="text" id="dept_time" style="width:100px;" readonly>
								</div>
							</div><br>
							<p class="tname text-white">Adults Details</p>
							<table class="table table-hover text-white">
							    <thead>
							      <tr>
							        <th>S.no</th>
							        <th>Name</th>
							        <th>Age</th>
							        <th>Gender</th>
							      </tr>
							    </thead>
							    <tbody>
							      <tr>
							        <td>1</td>
							        <td><label for="name"></label>
	    								<input type="text" id="name" required></td>
							        <td><label for="age"></label>
	    								<input type="number" id="age" style="width:70px;" min="6" max="65" required></td>
							        <td><label class="radio-inline"><input type="radio" name="radio1" checked>Male</label>
									<label class="radio-inline"><input type="radio" name="radio1">Female</label>
									<label class="radio-inline"><input type="radio" name="radio1">Other</label></td>
							      </tr>
								</tbody>
							</table><br>
							<p class="tname text-white">Children Details</p>
							<table class="table table-hover text-white">
							    <thead>
							      <tr>
							        <th>S.no</th>
							        <th>Name</th>
							        <th>Age</th>
							        <th>Gender</th>
							      </tr>
							    </thead>
							    <tbody>
							      <tr>
							        <td>1</td>
							        <td><label for="name"></label>
	    								<input type="text" id="name"></td>
							        <td><label for="age"></label>
	    								<input type="number" id="age" style="width:70px;" min="1" max="5"></td>
							        <td><label class="radio-inline"><input type="radio" name="radio2" checked>Male</label>
									<label class="radio-inline"><input type="radio" name="radio2">Female</label>
									<label class="radio-inline"><input type="radio" name="radio2">Other</label></td>
							      </tr>
								</tbody>
							</table><br>
							<p class="tname text-white">Address Details</p>
							<div class="row">
								<div class="col1" style="width:35%;">
									<label for="doorno">Door no/Flat no:</label>
	    							<input type="text" id="doorno" style="width:60px;" required>
								</div>
								<div class="col2" style="width:65%;">
									<label for="streetname">Streetname:</label>
	    							<input type="text" id="streetname" style="width:300px;" required>
								</div><br><br>
								</div>
								<div class="row">
								<label for="addressline">Address Line1:</label>
	    							<input type="text" id="addressline"style="width:560px;"  required>
								</div><br>
								<div class="row">
								<div class="col1"style="width:45%;">
									<label for="city">City/Town:</label>
	    							<input type="text" id="city" style="width:230px;" required>
								</div>
								<div class="col2"style="width:55%;">
									<label for="state">State:</label>
	    							<input type="text" id="state" style="width:230px;" required>
								</div>
								</div><br>
								<div class="row">
								<label for="pincode">Pincode:</label>
	    							<input type="tel" id="pincode" style="width:150px;" maxlength="6" pattern ="[0-9]{6}" required>
								</div><br>
								<div class="text-center">
									<input class="btn btn-primary" onClick="return valid()" style="align:center;" type="submit" value="submit">
								</div>
						</form>
					</div>
				</div>	
			</div>
		</div>
	</div>
	</div>
</body>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/main.js"></script>
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
<script type="text/javascript">
		var count=0;
		var prev_numall = 0;
		var numberAll=0;
		const chex = document.querySelectorAll('input[type="checkbox"]');
		const total = document.querySelector('.total-score .number')
		document.querySelector('.wrapper').addEventListener('change', function(event) {
		numberAll = this.querySelectorAll('input[type="checkbox"]:checked').length
		if(prev_numall != numberAll){
			count=0;
			prev_numall = numberAll;
		}
		
		total.innerHTML = numberAll
		
		
		
		const list = event.target.closest('.list')
		const numberList = list.querySelectorAll('input[type="checkbox"]:checked').length
		list.querySelector('.list-score.number').innerHTML = numberList})
</script>
<script type="text/javascript">
		function validation()
		{
			if(numberAll>4 || numberAll<4){
				alert("Please select only the no of seats u requested.");
				return false;
			}else{
				count++;
			}

		}
</script>
<script type="text/javascript">
		function valid()
		{
			if(count>0){
				return true;
			}else{
				alert("Please press DONE button");
				return false;
			}
		}
</script>

</html>
