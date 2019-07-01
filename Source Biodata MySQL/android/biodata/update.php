<?php
	include "koneksi.php";
	
	$id = isset($_POST['id']) ? $_POST['id'] : '';
	$nama = isset($_POST['nama']) ? $_POST['nama'] : '';
	$tlp = isset($_POST['tlp']) ? $_POST['tlp'] : '';
	$email = isset($_POST['email']) ? $_POST['email'] : '';
	
	class emp{}
	
	if (empty($id) || empty($nama) || empty($tlp) || empty($email)) { 
		$response = new emp();
		$response->success = 0;
		$response->message = "Kolom isian tidak boleh kosong"; 
		die(json_encode($response));
	} else {
		$query = mysql_query("UPDATE kontak SET nama='".$nama."', tlp='".$tlp."', email='".$email."' WHERE id='".$id."'");
		
		if ($query) {
			$response = new emp();
			$response->success = 1;
			$response->message = "Data berhasil di update";
			die(json_encode($response));
		} else{ 
			$response = new emp();
			$response->success = 0;
			$response->message = "Error update Data";
			die(json_encode($response)); 
		}	
	}
?>