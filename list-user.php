<?php 
	require 'db.php';
 		
 		// $q = "SELECT * FROM user";
 		$sqlCommand="SELECT * FROM Student";

		// $result = $conn->query($q);
		$result=mysqli_query($conn, $sqlCommand) or die(mysqli_error($conn));
		$arrVal = array();
		$i=1;

 		while ($rowList = mysqli_fetch_array($result)) {

						$name = array(
								'studentID' => $i,
 	 		 	 				'firstName'=> $rowList['fname'],
	 		 	 				'lastName'=> $rowList['lname'],
	 		 	 				'phone'=> $rowList['phone'],
	 		 	 				'email'=> $rowList['email'],
	 		 	 				'dateOfBirth'=> $rowList['dateOfBirth'],
	 		 	 				'studentType'=> $rowList['studentType'],
	 		 	 				'gpa'=> $rowList['gpa']
 	 		 	 			);
							array_push($arrVal, $name);	
			$i++;			
	 	}
	 		 echo  json_encode($arrVal);		
 
	 	mysqli_close($conn);
?>
