<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php
//Close any seesion 
session_regenerate_id(true);
	//Start session
	session_start();	
	//Unset the variables stored in session
	unset($_SESSION['SESS_ID']);
	unset($_SESSION['SESS_FIRST_NAME']);
	unset($_SESSION['SESS_LAST_NAME']);
?>



<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
		<head>
			 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			 <link rel="stylesheet" href="cheapomail.css" type="text/css" />
			 <title>Cheapomail</title>
			 
        </head>

		<body bgcolor="greenyellow" ><center>
		<div class="main">
		<div class="menubar_container">
			<div class="logo">
				<marquee><h1>Cheapomail</h1>
				<h3 class="tagline">Messaging Made Easy</h3></marquee>
			</div>
			<div class="loginform">
				<form name= "loginform" id="login_form" action="login.php" method="post" style="display: inline;">
						<table cellspacing="0">
							<tr>
								<td colspan="2">
									<!--the code below is used to display the message of the input validation-->
									 <?php
										if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
										echo '<ul class="err">';
										foreach($_SESSION['ERRMSG_ARR'] as $msg) {
											echo '<li>',$msg,'</li>'; 
											}
										echo '</ul>';
										unset($_SESSION['ERRMSG_ARR']);
										}
									?>
								</td>
							</tr>
							<tbody>
								<tr>
									<td class="html7magic">
										<label for="username">User Name</label>
									</td>
									<td class="html7magic">
										<label for="password">Password</label>
									</td>
								</tr>
								<tr>
									<td>
										<input type="text" class="inputtext" name="username" id="username" autofocus="true" tabindex="1" >
									</td>
									<td>
										<input type="password" class="inputtext" name="password" id="password" tabindex="2">
									</td>
									<td>
										<label >
											<input value="Log in" tabindex="3" type="submit">
										</label>
									</td>
								</tr>
								
							</tbody>
						</table>
				</form>
			</div>
				
			
		</div>
		
		<marquee><div class="pagefooter">
			<div class="copyright"><br><br><br><br><br><br><br>
						INFO2180 Project 2014 - Cheapomail - Copyright by Stefan Cooper.
			</div>
		</div> </marquee>

        </div>

		</center></body>
</html>