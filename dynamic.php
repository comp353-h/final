<?php
require 'db.php';

$sqlCommand = "SELECT * FROM Student";
$result = mysqli_query($conn, $sqlCommand) or die(mysqli_error($conn));
$arrVal = array();
$i = 1;
//
//$json = array();
//if(mysqli_num_rows($result)){
//    while($row=mysqli_fetch_array($result)){
//        $json['Orders'][]=$row;
//    }
//}

$rows = array();
while($r = mysqli_fetch_assoc($result)) {
    $rows[] = $r;
}
$data = array('Orders' => $rows);
echo json_encode($data);



//echo(json_encode($json));

//while ($rowList = mysqli_fetch_array($result)) {
//    $name = array(
//        'studentID' => $rowList['studentID'],
//        'firstName' => $rowList['firstName'],
//        'lastName' => $rowList['lastName'],
//        'phone' => $rowList['phone'],
//        'email' => $rowList['email'],
//        'dateOfBirth' => $rowList['dateOfBirth'],
//        'studentType' => $rowList['studentType'],
//        'gpa' => $rowList['gpa']
//    );
//    array_push($arrVal, $name);
//    $i++;
//}
//echo json_encode($arrVal);

mysqli_close($conn);
?>