<?php
 function doDB() {
 global $mysqli;

 $mysqli = mysqli_connect("localhost", "root", "", "project1");

 //if connection fails, stop script execution
 if (mysqli_connect_errno()) {
 printf("Connect failed: %s\n", mysqli_connect_error());
 exit();
 }
 }
 ?>