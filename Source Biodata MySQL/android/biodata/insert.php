<?php

	include "koneksi.php";
	
	$nama = isset($_POST['nama']) ? $_POST['nama'] : '';
	$tlp = isset($_POST['tlp']) ? $_POST['tlp'] : '';
	$email = isset($_POST['email']) ? $_POST['email'] : '';
	
	class emp{}
	
	if (empty($nama) || empty($tlp) || empty($email)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Kolom isian tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		$query = mysql_query("INSERT INTO kontak (id,nama,tlp,email) VALUES(0,'".$nama."','".$tlp."','".$email."')");
		
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Data berhasil di simpan";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Error simpan Data";
			die(json_encode($response)); 
		}	
	}
?>