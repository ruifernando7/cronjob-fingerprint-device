<?php
	ini_set("display_errors", 0);
	error_reporting(0);
	$db_host = "localhost";
	$db_user = "root";
	$db_pass = "";
	$db_name = "elyon";
	$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
	if (!$conn) echo mysqli_connect_error();
?>