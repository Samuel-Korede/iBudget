<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ibudget";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Ended");
}