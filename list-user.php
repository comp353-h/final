<?php 
	require 'db.php';
 		
 		// $q = "SELECT * FROM user";
 		$sqlCommand="SELECT * FROM user";

		// $result = $conn->query($q);
		$result=mysqli_query($conn, $sqlCommand) or die(mysqli_error($conn));
		$arrVal = array();
		$i=1;

 		while ($rowList = mysqli_fetch_array($result)) {
 								 
						$name = array(
								'num' => $i,
 	 		 	 				'first'=> $rowList['fname'],
	 		 	 				'last'=> $rowList['lname']
 	 		 	 			);		


							array_push($arrVal, $name);	
			$i++;			
	 	}
	 		 echo  json_encode($arrVal);		
 
	 	mysqli_close($conn);
?>