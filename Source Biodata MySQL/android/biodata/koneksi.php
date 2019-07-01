<?php
	
	$server		= "localhost"; // sesuaikan alamat server anda
	$user		= "root"; // sesuaikan user web server anda
	$password	= ""; // sesuaikan password web server anda
	$database	= "biodata"; // sesuaikan database web server anda
	
	$connect = mysql_connect($server, $user, $password) or die ("Tidak bisa terhubung!");
	mysql_select_db($database) or die ("Database belum siap!");
?>