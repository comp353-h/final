<?php
$conn= mysqli_connect($servername, $username, $password, $dbname) or die ("Could not connect to mysql");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Search results</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<?php
$query = $_GET['query'];
// gets value sent over search form

$min_length = 3;
// you can set minimum length of the query if you want

if(strlen($query) >= $min_length){ // if query length is more or equal minimum length then
    $query = htmlspecialchars($query);
    //$sqlCommand="SELECT * FROM Student";
    // $result = $conn->query($q);
    $result=mysqli_query($conn, $query) or die(mysqli_error($conn));
}
else{ // if query length is less than minimum
    echo "Minimum length is ".$min_length;
}
?>
</body>
</html>