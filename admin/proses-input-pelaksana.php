<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nrk=$_POST['nrk'];
$nama_pelaksana=$_POST['nama_pelaksana'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$jabatan_pelaksana=$_POST['jabatan_pelaksana'];


include "../koneksi.php";

$simpan=$koneksi->query("insert into Karyawan_pelaksana(nrk,nama_pelaksana,jenis_kelamin,jabatan_pelaksana) 
                        values ('$nrk', '$nama_pelaksana', '$jenis_kelamin', '$jabatan_pelaksana')");

if($simpan==true){

    header("location:tampil-pelaksana.php?pesan=inputBerhasil");
} else{
    echo "Error";
}




?>