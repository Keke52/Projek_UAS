<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nrk=$_POST['nrk'];
$nama=$_POST['nama_karyawan'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$jabatan=$_POST['jabatan_karyawan'];
$unit_kerja=$_POST['unit_kerja_karyawan'];


include "../koneksi.php";

$simpan=$koneksi->query("insert into Karyawan_pimpinan1(nrk,nama_karyawan,jenis_kelamin,jabatan_karyawan,unit_kerja_karyawan) 
                        values ('$nrk', '$nama', '$jenis_kelamin', '$jabatan','$unit_kerja')");

if($simpan==true){

    header("location:tampil-pimpinan.php?pesan=inputBerhasil");
} else{
    echo "Error";
}




?>