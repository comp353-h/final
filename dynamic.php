<?php
require 'db.php';

$sqlCommand = "SELECT * FROM Student";
$result = mysqli_query($conn, $sqlCommand) or die(mysqli_error($conn));

$columns = array();
$resultset = array();
while ($row = mysqli_fetch_array($result)) {
    if (empty($columns)) {
        $columns = array_keys($row);
    }
    $resultset[] = $row;
}

echo '<table>';
$columns = array();
$resultset = array();
while ($row = mysqli_fetch_array($result)) {
    if (empty($columns)) {
        $columns = array_keys($row);
        echo '<tr><th>'.implode('</th><th>', $columns).'</th></tr>';
    }
    $resultset[] = $row;
    echo '<tr><td>'.implode('</td><td>', $row).'</td></tr>';
}
echo '</table>';

?>