<?php
	
    $connection = mysqli_connect("localhost", "root", "") or die("Khong the ket noi den database");
    mysqli_select_db($connection, "cinema") or die("Khong tim thay database");
  	mysqli_set_charset($connection, 'UTF8');
	
?>


a,b,c
