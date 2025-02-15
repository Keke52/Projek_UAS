<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['pelaksana_id'];
$nrk=$_POST['nrk'];
$nama_pelaksana=$_POST['nama_pelaksana'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$jabatan_pelaksana=$_POST['jabatan_pelaksana'];

$ubah=$koneksi->query("update karyawan_pelaksana set nrk='$nrk', nama_pelaksana='$nama_pelaksana', jenis_kelamin='$jenis_kelamin', 
						jabatan_pelaksana='$jabatan_pelaksana' where pelaksana_id='$id'");

if($ubah==true){

    header("location:tampil-pelaksana.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>