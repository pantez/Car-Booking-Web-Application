<%@page import="com.neu.Rohit.pojo.User" %>
<%@page import="com.neu.Rohit.DAO.UserDao" %>
<%@page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.mapping.Value" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, intialscale=1">
    <title>Car Booking</title>
    <!-- JQuery & JQuery UI -->
    <style>
    	<%@include file="../../resources/css/style.css"%>
    	<%@include file="../../resources/css/bootstrap.css"%>
    </style>
    <script type="text/javascript">
    	<%@include file="../../resources/javascript/jquery-2.2.2.min.js"%>
    	<%@include file="../../resources/javascript/scripts.js"%>
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" type="text/javascript"></script>
    <!-- JQuery UI Css -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
          
		
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
 

</head>
<body>

<% User user= (User)session.getAttribute("User"); %>

<!--Navigation Bar-->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand pull-left" href="index.html">
                	<img src="../../Rohit/resources/images/logo.png" style="margin-top:-16px;" class="img" alt="logo">
                </a>
                
            </div>
            <div class="navbar-header" style="padding-left: 20px; padding-top: 10px">
                <h4><font style="color:green">Welcome <%= user.getName()%></font></h4>
            </div>
           
            <div class="navbar-header" style="float: right; margin-top: 10px" id="LoginForm">
             <form class="form-inline" action="login.htm" method="POST">
             <input type="hidden"  class="btn btn-default" name="action" value="logout"/>
			  <input type="submit"  class="btn btn-default" name="Logout" value="Logout"/>
			   </form>
			</div>
         <div class="navbar-header" style="float: right; margin-top: 10px; margin-right: 10px" id="LoginForm">
              <form class="form-inline" action="account.htm" method="POST">
                <input type="hidden" id="userID" name="userID" value="<%= user.getUserID()%>"/>
       
              <input type="submit"  class="btn btn-default" name="MyAccount" value="My Account"/>
			   </form>
			</div>

         
        </div>
    </div>
    <!--Navigation Bar-->


    <div class="modal-body col-md-3 col-md-offset-1" ><br>
        <div class="form-box">
            <div class="form-bottom">
                <form role="form" action="" method="post" class="registration-form">
            <div class="form-group" id="error" style="color: red;font-family: sans-serif;">
              
            </div>
            <div class="form-group">
                <p><h4>Pick Up Location</h4></p>
            </div>				                                                         	
            <div class="form-group ui-widget"><br>
                <input type="text" name="form-pick-up" placeholder="Enter Address, Zip, City or Airport" class="form-control" id="form-pick-up">
                <span class="error">This field is required</span>
            </div>                                                                                
            <div class="container col-xs-12"> 
                <div class="container col-xs-12">                              
                    <div class="form-group" >
                        <p><h4>Pick Up Date</h4></p>
                    </div>
                </div>                                   				                     				                        
                <div class="container col-xs-6">
                    <div class="form-group">
                        <input type="text" name="pickUp" class="form-control" placeholder="mm/dd/yy" value="" id="pickUpDate"/>
                        <span class="error">This field is required</span>
                    </div>
                </div>                                       
                <div class="container col-xs-6">
                    <div class="form-group">
                        <select name="startTime" id="startTime" class="form-group form-control">
                            <option value="7:00">7:00am</option>
                            <option value="7:30">7:30am</option>
                            <option value="8:00">8:00am</option>
                            <option value="8:30">8:30am</option>
                            <option value="9:00">9:00am</option>
                            <option value="9:30">9:30am</option>
                            <option value="10:00">10:00am</option>
                            <option value="10:30">10:30am</option>
                            <option value="11:00">11:00am</option>
                            <option value="11:30">11:30am</option>
                            <option value="12:00" selected="selected">noon</option>
                            <option value="12:30">12:30pm</option>
                            <option value="13:00">1:00pm</option>
                            <option value="13:30">1:30pm</option>
                            <option value="14:00">2:00pm</option>
                            <option value="14:30">2:30pm</option>
                            <option value="15:00">3:00pm</option>
                            <option value="15:30">3:30pm</option>
                            <option value="16:00">4:00pm</option>
                            <option value="16:30">4:30pm</option>
                            <option value="17:00">5:00pm</option>
                            <option value="17:30">5:30pm</option>
                            <option value="18:00">6:00pm</option>
                            <option value="18:30">6:30pm</option>
                            <option value="19:00">7:00pm</option>
                            <option value="19:30">7:30pm</option>
                            <option value="20:00">8:00pm</option>
                            <option value="20:30">8:30pm</option>
                            <option value="21:00">9:00pm</option>
                            <option value="21:30">9:30pm</option>
                            <option value="22:00">10:00pm</option>
                            <option value="22:30">10:30pm</option>
                            <option value="23:00">11:00pm</option>
                            <option value="23:30">11:30pm</option>
                            <option value="12:00">midnight</option>
                            <option value="12:30">12:30am</option>
                            <option value="1:00">1:00am</option>
                            <option value="1:30">1:30am</option>
                            <option value="2:00">2:00am</option>
                            <option value="2:30">2:30am</option>
                            <option value="3:00">3:00am</option>
                            <option value="3:30">3:30am</option>
                            <option value="4:00">4:00am</option>
                            <option value="4:30">4:30am</option>
                            <option value="5:00">5:00am</option>
                            <option value="5:30">5:30am</option>
                            <option value="6:00">6:00am</option>
                            <option value="6:30">6:30am</option>
                        </select>
                    </div>
                </div>                                       
                <div class="container col-xs-12">
                    <div class="form-group" >
                        <h4>Drop Off Date</h4>
                    </div>
                </div>				                                      
                <div class="container col-xs-6">
                    <div class="form-group">
                        <input type="text" name="" class="form-control" placeholder="mm/dd/yy" value="" id="dropOffDate"/> 
                    </div>
                </div>
                <div class="container col-xs-6">
                    <div class="form-group">
                        <select name="endTime" id="endTime" class="form-group form-control">
                            <option value="7:00">7:00am</option>
                            <option value="7:30">7:30am</option>
                            <option value="8:00">8:00am</option>
                            <option value="8:30">8:30am</option>
                            <option value="9:00">9:00am</option>
                            <option value="9:30">9:30am</option>
                            <option value="10:00">10:00am</option>
                            <option value="10:30">10:30am</option>
                            <option value="11:00">11:00am</option>
                            <option value="11:30">11:30am</option>
                            <option value="12:00" selected="selected">noon</option>
                            <option value="12:30">12:30pm</option>
                            <option value="13:00">1:00pm</option>
                            <option value="13:30">1:30pm</option>
                            <option value="14:00">2:00pm</option>
                            <option value="14:30">2:30pm</option>
                            <option value="15:00">3:00pm</option>
                            <option value="15:30">3:30pm</option>
                            <option value="16:00">4:00pm</option>
                            <option value="16:30">4:30pm</option>
                            <option value="17:00">5:00pm</option>
                            <option value="17:30">5:30pm</option>
                            <option value="18:00">6:00pm</option>
                            <option value="18:30">6:30pm</option>
                            <option value="19:00">7:00pm</option>
                            <option value="19:30">7:30pm</option>
                            <option value="20:00">8:00pm</option>
                            <option value="20:30">8:30pm</option>
                            <option value="21:00">9:00pm</option>
                            <option value="21:30">9:30pm</option>
                            <option value="22:00">10:00pm</option>
                            <option value="22:30">10:30pm</option>
                            <option value="23:00">11:00pm</option>
                            <option value="23:30">11:30pm</option>
                            <option value="12:00">midnight</option>
                            <option value="12:30">12:30am</option>
                            <option value="1:00">1:00am</option>
                            <option value="1:30">1:30am</option>
                            <option value="2:00">2:00am</option>
                            <option value="2:30">2:30am</option>
                            <option value="3:00">3:00am</option>
                            <option value="3:30">3:30am</option>
                            <option value="4:00">4:00am</option>
                            <option value="4:30">4:30am</option>
                            <option value="5:00">5:00am</option>
                            <option value="5:30">5:30am</option>
                            <option value="6:00">6:00am</option>
                            <option value="6:30">6:30am</option>
                        </select>
                    </div>
                </div>
            </div>
                </form>                                         
            <button type="submit" id="btn" class="btn">Submit</button>
            <div id="loading" style="padding-top: 15px; padding-left: 73px"></div>
            </div>
        </div>
    </div>
    
<!--Results-->
<div class="modal-body col-md-3 col-md-offset-1" id="result">

</div>
<div class="modal-body col-md-3" style="padding-top: 32px; padding-left: 30px" id="carResult">

</div>
<!--Results-->
    <div id="LoginForm"><p>HI</p></div>
</body>
</html>
