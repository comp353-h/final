<?php
require 'db.php';

$sqlCommand = "SELECT * FROM Student";
$result = mysqli_query($conn, $sqlCommand) or die(mysqli_error($conn));
$arrVal = array();
$i = 1;
while ($rowList = mysqli_fetch_array($result)) {
    $name = array(
        'studentID' => $rowList['studentID'],
        'firstName' => $rowList['firstName'],
        'lastName' => $rowList['firstName'],
        'phone' => $rowList['phone'],
        'email' => $rowList['email'],
        'dateOfBirth' => $rowList['dateOfBirth'],
        'studentType' => $rowList['studentType'],
        'gpa' => $rowList['gpa']
    );
    array_push($arrVal, $name);
    $i++;
}
echo json_encode($arrVal);
		$instructorSql = "SELECT * FROM Instructor";
		$instructorResult = mysqli_query($conn, $instructorSql) or die(mysqli_error($conn));
		$insVal = array();
		$i = 1;
		while ($rowList = mysqli_fetch_array($instructorResult)) {
			$ins = array(
				'instructorID' => $rowList['instructorID'],
				'firstName' => $rowList['firstName'],
				'lastName' => $rowList['firstName']);
			array_push($insVal, $ins);
   		 $i++;
}
echo json_encode($ins);


mysqli_close($conn);
?>
