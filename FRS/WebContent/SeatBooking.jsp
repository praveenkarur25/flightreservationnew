<%@page import = "java.util.*" %>
<%@page import="com.frs.xyz.controller.Register"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.frs.xyz.controller.AddFlight"%>
<%@page import="com.frs.xyz.service.Flight_Details"%>
<%@page import="com.frs.xyz.util.DBUtil"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@ page session="true" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>User Page</title>
   
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

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
	background-color:white;
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
  padding: 0;
  margin: 0;
}
.seats {
 display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  height:13px;
  justify-content: flex-start;
}
.seat {
  display: flex;
  flex: 0 0 12.28571428571429% !important;
  padding: 1px;
  position: relative ;
}
.seat:nth-child(3) {
  margin-right: 14%;
}
.seat:nth-child(6) {
  margin-right: 10%;
}
.seat label:nth-child(7) {
  background: grey;
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
 <a class="navbar-brand" style="color:white;"><i class="fas fa-plane"
				style="font-size: 25px; color: #ffc312;"></i>XYZ FLIGHT SERVICES <i class="fas fa-plane"
				style="font-size: 25px; color: #ffc312;"></i></a>
<!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
<!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
       <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/UserHome.jsp" style="color:#ffc312;"><i class="fas fa-home" style="color:#ffc312;"></i>Home</a>
      </li>
	   <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/SeatBooking.jsp"><i class="fas fa-ticket-alt"></i>My Bookings</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/MyAccount.jsp"><i class="fas fa-user"></i>My Account</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/Logout.jsp" id="logout" onClick="return confirmed()"><i class="fas fa-sign-out-alt"></i>Logout</a>
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
						<h6 class="card-title text-white text-center">Seat Layout</h6>
					<form class="text-center" name="check">
				 	<div class="input-group form-group  d-flex justify-content-start seatClass">
								<p class="text-white ml-5 mb-0">Economy Class</p>
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
				        </li>B
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
				    
				    
				          <p class="text-white ml-4 mb-0">Business Class</p>
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="F1" />
				          <label for="F1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="F2" />
				          <label for="F2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="F3" />
				          <label for="F3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="F4" />
				          <label for="F4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="F5" />
				          <label for="F5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="F6" />
				          <label for="F6">06</label>
				        </li>F
				        
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="G1" />
				          <label for="G1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="G2" />
				          <label for="G2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="G3" />
				          <label for="G3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="G4" />
				          <label for="G4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="G5" />
				          <label for="G5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="G6" />
				          <label for="G6">06</label>
				        </li>G
				       
				      </ol>
				    
				  
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="H1" />
				          <label for="H1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="H2" />
				          <label for="H2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="H3" />
				          <label for="H3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="H4" />
				          <label for="H4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="H5" />
				          <label for="H5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="H6" />
				          <label for="H6">06</label>
				        </li>H
				       
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="I1" />
				          <label for="I1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="I2" />
				          <label for="I2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="I3" />
				          <label for="I3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="I4" />
				          <label for="I4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="I5" />
				          <label for="I5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="I6" />
				          <label for="I6">06</label>
				        </li>I
				        
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="J1" />
				          <label for="J1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="J2" />
				          <label for="J2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="J3" />
				          <label for="J3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="J4" />
				          <label for="J4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="J5" />
				          <label for="J5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="J6" />
				          <label for="J6">06</label>
				        </li>J
				        
				      </ol>
				    
				    
				    <p class="text-white ml-4 mb-0">First Class</p>
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="K1" />
				          <label for="K1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="K2" />
				          <label for="K2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="K3" />
				          <label for="K3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="K4" />
				          <label for="K4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="K5" />
				          <label for="K5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="K6" />
				          <label for="K6">06</label>
				        </li>K
				       
				       </ol>
				 
				    <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="L1" />
				          <label for="L1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="L2" />
				          <label for="L2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="L3" />
				          <label for="L3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="L4" />
				          <label for="L4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="L5" />
				          <label for="L5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="L6" />
				          <label for="L6">06</label>
				        </li>L
				        
				      </ol>
				    
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="M1" />
				          <label for="M1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="M2" />
				          <label for="M2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="M3" />
				          <label for="M3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="M4" />
				          <label for="M4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="M5" />
				          <label for="M5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="M6" />
				          <label for="M6">06</label>
				        </li>M
				        
				      </ol>
				   
				    
				      <ol class="seats" type="A">
				        <li class="seat">
				          <input type="checkbox" id="N1" />
				          <label for="N1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="N2" />
				          <label for="N2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="N3" />
				          <label for="N3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="N4" />
				          <label for="N4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="N5" />
				          <label for="N5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="N6" />
				          <label for="N6">06</label>
				        </li>N
				        </ol>
				      <ol class="seats text-center" type="A">
				        <li class="seat">
				          <input type="checkbox" id="O1" />
				          <label for="O1">01</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="O2" />
				          <label for="O2">02</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="O3" />
				          <label for="O3">03</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="O4" />
				          <label for="O4">04</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="O5" />
				          <label for="O5">05</label>
				        </li>
				        <li class="seat">
				          <input type="checkbox" id="O6"  />
				          <label for="O6">06</label>
				        </li>O
				        </ol>
				    </div> 
			</div>
					<div class="row">
						<div class="col-5">
							<span class="total-score text-white" id="count"><h6 class="mt-2">Seat:<span class="number">0</span></span></h6>
 						</div>
 	
 						<div class="col-3">
							<input type="button" onclick="return validation()" class="btn btn-primary btn-sm-2 ml-5 verify" value="done">
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
			<%int adult = Integer.parseInt(request.getParameter("adult"));
			int children = Integer.parseInt(request.getParameter("children"));
			
			%>
							
							<p class="tname text-black" style="background:#ffc312; width:180px;" >Adults Details</p>
							<table class="table table-hover text-white">
							    <thead>
							      <tr bgcolor=#003973>
					        <th align="center"><font color="white">S.no</font></th>
							      <th align="center"><font color="white">Name</font></th>
							        <th align="center"><font color="white">Age</font></th>
							       <th align="center"><font color="white">Gender</font></th>
							      </tr>
							    </thead>
							    <tbody>
							    <%for(int i=1; i<=adult; i++){ %>
							   <tr>
							        <td><%= i %></td>
							        <td><label for="name"></label>
	    								<input type="text" id="name" required></td>
							        <td><label for="age"></label>
	    								<input type="number" id="age" style="width:70px;" min="6" max="65" required></td>
							        <td><label class="radio-inline"><input type="radio" name="radio1" required>Male</label>
									<label class="radio-inline"><input type="radio" name="radio1" required>Female</label>
									<label class="radio-inline"><input type="radio" name="radio1" required>Other</label></td>
							      </tr>
							    <%   }%>
								</tbody>
							</table><br>
							<p class="tname text-black" style="background:#ffc312; width:180px;">Children Details</p>
							<table class="table table-hover text-white">
							    <thead>
							      <tr bgcolor=#003973>
					        <th align="center"><font color="white">S.no</font></th>
							      <th align="center"><font color="white">Name</font></th>
							        <th align="center"><font color="white">Age</font></th>
							       <th align="center"><font color="white">Gender</font></th>
							      </tr>
							    </thead>
							    <tbody>
							    <%for(int i=1; i<=children; i++){ %>
							      <tr>
							        <td><%= i %></td>
							        <td><label for="name"></label>
	    								<input type="text" id="name"></td>
							        <td><label for="age"></label>
	    								<input type="number" id="age" style="width:70px;" min="1" max="5"></td>
							        <td><label class="radio-inline"><input type="radio" name="radio2" required>Male</label>
									<label class="radio-inline"><input type="radio" name="radio2" required>Female</label>
									<label class="radio-inline"><input type="radio" name="radio2" required>Other</label></td>
							      </tr>
							          <%   }%>
								</tbody>
							</table><br>
							<p class="tname text-black" style="background:#ffc312; width:180px;">Address Details</p>
							
					<% 		
				String userid = (String)session.getAttribute("userid");
						Connection connection = null;
						PreparedStatement preparedStatement = null;
						ResultSet resultSet = null;
						String query = "select street,city,district,state,pincode,phonenumber,email  from frs_tbl_users_profile where userid ='"+userid+"' ";
						try{
							connection = DBUtil.getConnection();
							preparedStatement = connection.prepareStatement(query);
							resultSet = preparedStatement.executeQuery(query);
							while(resultSet.next()){%>
							<div class="row">
								<div class="col2" style="width:65%;">	
									<label for="streetname">Street name&emsp;:</label>
	    							<input type="text" id="streetname" style="width:200px;" value=<%=resultSet.getString("street") %> required>
								</div>
								</div>
								<br>
								<div class="row">
								<div class="col1"style="width:45%;">
									<label for="city">City/Town &emsp;&emsp;:</label>
	    							<input type="text" id="city" style="width:170px;" value=<%=resultSet.getString("city") %> required>
								</div>
								<div class="col2"style="width:55%;">
									<label for="district">District &emsp;:</label>
	    							<input type="text" id="district" style="width:170px;" value=<%=resultSet.getString("district") %> required>
								</div>
								</div><br>
								<div class="row">
								<div class="col2"style="width:45%;">
								<label for="state">State  &emsp;&emsp;&emsp;&emsp; :</label>
	    							<input type="tel" id="state" style="width:170px;" value=<%=resultSet.getString("state") %> required>
								</div>
								<div class="col2"style="width:55%;">
									<label for="pincode">Pincode&emsp;:</label>
	    							<input type="tel" id="pincode" style="width:170px;"maxlength="6" pattern ="[0-9]{6}"  value=<%=resultSet.getString("pincode") %> required>
								</div>
								</div><br>
								<div class="row">
								<div class="col2"style="width:45%;">
								<label for="state">Mobile &emsp; &emsp;&emsp; : </label>
	    							<input type="tel" id="mobile" style="width:170px;" maxlength="10" pattern ="[0-9]{10}" value=<%=resultSet.getString("Phonenumber") %> required>
								</div>
								<div class="col2"style="width:55%;">
									<label for="email">E-mail&emsp;&emsp;:</label>
	    							<input type="email" id="email" style="width:170px;" value=<%=resultSet.getString("email") %> required>
								</div>
								</div><br>
								<div class="text-center">
									<input class="btn btn-primary" onClick="return valid()" style="align:center;" type="submit" value="submit">
								</div>
						</form>
						<%}}catch(Exception e){
					e.printStackTrace();
							}%>
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