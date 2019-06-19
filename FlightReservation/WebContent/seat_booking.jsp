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
margin-top: 50;
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
	background:green;
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
ol {
  list-style: none;
  padding: 0;
  margin: 0;
}

.seats {
 display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start;
}
.seat {
  display: flex;
  flex: 0 0 14.28571428571429%;
  padding: 1px;
  position: relative;
}
.seat:nth-child(3) {
  margin-right: 14.28571428571429%;
}
.seat input[type=checkbox] {
  position: absolute;
  opacity: 0;
}
.seat input[type=checkbox]:checked + label {
  background: black;
}
.seat input[type=checkbox]:disabled + label {
  background: grey;
  text-indent: -9999px;
  overflow: hidden;
}
.seat input[type=checkbox]:disabled + label:after {
  content: "X";
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
  font-size: 14px;
  font-weight: bold;
  line-height: 1rem;
  padding: 5px 0;
  background:#007bff;
  border-radius: 5px;
 
}
.seat label:before {
  content: "";
  position: absolute;
  width: 75%;
  height: 75%;
  top: 0px;
  left: 50%;
  transform: translate(-50%, 0%);
  background: rgba(255, 255, 255, 0.4);
  border-radius: 3px;
}
.seat label:hover {
  cursor: pointer;
  box-shadow:black;
  background:#FFC312;
}
.seat label:active {
background:black;
}
.seat label:focus {
background:black;
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
        <a class="nav-link" href="#">Logout</a>
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
		<div class="row">
			<div class="column1">
				<div class="card text-center">
					<div class="card-body">
						<h5 class="card-title text-white text-center">Seat Layout</h5>
						<form class="text-center">
				 	<div class="input-group form-group  d-flex justify-content-center seatClass">
								Economy Class
				    <div>
				  
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="1A" />
				          <label for="1A">1A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="1B" />
				          <label for="1B">1B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="1C" />
				          <label for="1C">1C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="1D" />
				          <label for="1D">1D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="1E" />
				          <label for="1E">1E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="1F" disabled/>
				          <label for="1F">1F</label>
				        </li>
				        </ol>
			
				   
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="2A" />
				          <label for="2A">2A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="2B" />
				          <label for="2B">2B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="2C" />
				          <label for="2C">2C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="2D" />
				          <label for="2D">2D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="2E" />
				          <label for="2E">2E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="2F" />
				          <label for="2F">2F</label>
				        </li>
				      </ol>
				    
				   
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="3A" />
				          <label for="3A">3A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="3B" />
				          <label for="3B">3B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="3C" />
				          <label for="3C">3C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="3D" />
				          <label for="3D">3D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="3E" />
				          <label for="3E">3E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="3F" />
				          <label for="3F">3F</label>
				        </li>
				      </ol>
				   
				   
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="4A" />
				          <label for="4A">4A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="4B" />
				          <label for="4B">4B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="4C" />
				          <label for="4C">4C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="4D" />
				          <label for="4D">4D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="4E" />
				          <label for="4E">4E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="4F" />
				          <label for="4F">4F</label>
				        </li>
				      </ol>
				     
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="5A" />
				          <label for="5A">5A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="5B" />
				          <label for="5B">5B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="5C" />
				          <label for="5C">5C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="5D" />
				          <label for="5D">5D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="5E" />
				          <label for="5E">5E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="5F" />
				          <label for="5F">5F</label>
				        </li>
				      </ol>
				    
				    
				          Business Class
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="6A" />
				          <label for="6A">6A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="6B" />
				          <label for="6B">6B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="6C" />
				          <label for="6C">6C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="6D" />
				          <label for="6D">6D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="6E" />
				          <label for="6E">6E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="6F" />
				          <label for="6F">6F</label>
				        </li>
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="7A" />
				          <label for="7A">7A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="7B" />
				          <label for="7B">7B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="7C" />
				          <label for="7C">7C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="7D" />
				          <label for="7D">7D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="7E" />
				          <label for="7E">7E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="7F" />
				          <label for="7F">7F</label>
				        </li>
				      </ol>
				    
				  
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="8A" />
				          <label for="8A">8A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="8B" />
				          <label for="8B">8B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="8C" />
				          <label for="8C">8C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="8D" />
				          <label for="8D">8D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="8E" />
				          <label for="8E">8E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="8F" />
				          <label for="8F">8F</label>
				        </li>
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="9A" />
				          <label for="9A">9A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="9B" />
				          <label for="9B">9B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="9C" />
				          <label for="9C">9C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="9D" />
				          <label for="9D">9D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="9E" />
				          <label for="9E">9E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="9F" />
				          <label for="9F">9F</label>
				        </li>
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="10A" />
				          <label for="10A">10A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="10B" />
				          <label for="10B">10B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="10C" />
				          <label for="10C">10C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="10D" />
				          <label for="10D">10D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="10E" />
				          <label for="10E">10E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="10F" />
				          <label for="10F">10F</label>
				        </li>
				      </ol>
				    
				    
				    First Class
				    <li class="row row--11">
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="11A" />
				          <label for="11A">11A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="11B" />
				          <label for="11B">11B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="11C" />
				          <label for="11C">11C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="11D" />
				          <label for="11D">11D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="11E" />
				          <label for="11E">11E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="11F" />
				          <label for="11F">11F</label>
				        </li>
				       </ol>
				    </li>
				    <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="12A" />
				          <label for="12A">12A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="12B" />
				          <label for="12B">12B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="12C" />
				          <label for="12C">12C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="12D" />
				          <label for="12D">12D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="12E" />
				          <label for="12E">12E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="12F" />
				          <label for="12F">12F</label>
				        </li>
				      </ol>
				    
				    <li class="row row--13">
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="13A" />
				          <label for="13A">13A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="13B" />
				          <label for="13B">13B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="13C" />
				          <label for="13C">13C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="13D" />
				          <label for="13D">13D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="13E" />
				          <label for="13E">13E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="13F" />
				          <label for="13F">13F</label>
				        </li>
				      </ol>
				    </li>
				    <li class="row row--14">
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="14A" />
				          <label for="14A">14A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="14B" />
				          <label for="14B">14B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="14C" />
				          <label for="14C">14C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="14D" />
				          <label for="14D">14D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="14E" />
				          <label for="14E">14E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="14F" />
				          <label for="14F">14F</label>
				        </li>
				      </ol>
				    </li>
				    <li class="row row--15">
				      <ol class="seats text-center" type="A">
				        <li class="seat">
				          <input type="checkbox" id="15A" />
				          <label for="15A">15A</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="15B" />
				          <label for="15B">15B</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="15C" />
				          <label for="15C">15C</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="15D" />
				          <label for="15D">15D</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="15E" />
				          <label for="15E">15E</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="15F"  />
				          <label for="15F">15F</label>
				        </li>
				      </ol>
				    </li>
				</div> 
			</div>
					<div class="row">
						<div class="col-5">
							<span class="total-score text-white" id="count"><h5>Seat:<span class="number">0</span></span></h5>
 						</div>
 						<div class="col-4"></div>
 						<div class="col-3">
							<button type="submit" class="btn btn-primary">done</button>
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
	    							<input type="text" id="pincode"style="width:150px;"required>
								</div><br>
								<div class="text-center">
									<input class="btn btn-primary" style="align:center;" type="submit" value="submit">
								</div>
						</form>
					</div>
				</div>	
			</div>
		</div>
	</div>
	</div>

</body>
<script type="text/javascript">
//console.clear()
const total = document.querySelector('.total-score .number')
//Option 1 - event delegation
document.querySelector('.wrapper').addEventListener('change', function(event) {
const numberAll = this.querySelectorAll('input[type="checkbox"]:checked').length
total.innerHTML = numberAll

const list = event.target.closest('.list')
const numberList = list.querySelectorAll('input[type="checkbox"]:checked').length
list.querySelector('.list-score.number').innerHTML = numberList})
		</script>
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
