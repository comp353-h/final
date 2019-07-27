<?php
$servername = "hrc353.encs.concordia.ca";
$username = "hrc353_1";
$password = "w1x3y3z7";
$dbname = "hrc353_1";
$conn= mysqli_connect($servername, $username, $password, $dbname) or die ("Could not connect to mysql");
if(isset($_POST['RUNQUERY'])){
    //check if form was submitted

    $input = $_POST['query'];
    //get input text
    $message = "You ran query";
    $result=mysqli_query($conn, $input) or die(mysqli_error($conn));
}
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:height="http://www.w3.org/1999/xhtml">
<head>
    <title>Search</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Group H</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">Home</a></li>
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>
            <li><a href="runquery.php">Run Query</a></li>
        </ul>
    </div>
</nav>

<form action="" method="POST">

    <textarea rows = "20" cols = "100" name = "query"></textarea>
    <input type="submit" value="Execute" name="RUNQUERY"/>
</form>
</body>
</html>