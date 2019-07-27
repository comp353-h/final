<?php
require 'db.php';

$instructorSql = "SELECT * FROM Instructor";
$instructorResult = mysqli_query($conn, $instructorSql) or die(mysqli_error($conn));
$insVal = array();
$i = 1;
while ($rowList = mysqli_fetch_array($instructorResult)) {
    $ins = array(
        'instructorID' => $rowList['instructorID'],
        'firstName' => $rowList['firstName'],
        'lastName' => $rowList['lastName']
    );
    array_push($insVal, $ins);
    $i++;
}

echo json_encode($ins);
mysqli_close($conn);
?>
