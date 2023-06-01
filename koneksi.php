<?php 
 
$server = "localhost:3305";
// $user = "root";
// $pass = "";
$user = "bryan";
$pass = "12345";
$database = "sendlogs";
 
$conn = mysqli_connect($server, $user, $pass, $database);
 
if (!$conn) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
 
?>