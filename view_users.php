<?php

// databae connection info 
include ('connection.php');

//sql statement to selete what to search 

$sql="SELECT Id,FirstName,LastName,username FROM user";

// run sql statement
$result= mysql_query($sql) or die(mysql_error());
echo '<body bgcolor="greenyellow"> <center>';

echo '<h1> Report on Users </h1>';


echo'<table border="1">','<tr>','<th> User ID</th>','<th> User First Name </th>','<th> User Last Name</th>','<th>Username</th>','</tr>';


while($row3=mysql_fetch_array($result)){	

		 		$userid=$row3['Id'];
		 		$fname=$row3['FirstName'];
				$lname=$row3['LastName'];
				$username=$row3['username'];

				
				
				echo '<tr>','<td>'.$userid.'</td>','<td>'.$fname.'</td>','<td>'.$lname.'</td>','<td>'.$username.'</td>','</tr>';
}

 echo '</table>','<br>';
echo '</center></body>';
echo '<a href="admin.php"><button>Back</button> </a> <br>';
echo "Password not displayed for security purpose";


mysql_close();

?>