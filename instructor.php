<?php
require 'db.php';

$instructorSql = "SELECT * FROM Instructor";
$instructorResult = mysqli_query($conn, $instructorSql) or die(mysqli_error($conn));
$insVal = array();
$j = 1;
while ($rowList2 = mysqli_fetch_array($instructorResult)) {
    $ins = array(
        'instructorID' => $rowList2['instructorID'],
        'firstName' => $rowList2['firstName'],
        'lastName' => $rowList2['lastName']
    );
    array_push($insVal, $ins);
    $j++;
}

echo json_encode($ins);
mysqli_close($conn);
?>
