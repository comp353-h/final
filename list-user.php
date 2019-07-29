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
        'lastName' => $rowList['lastName'],
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

mysqli_close($conn);
?>