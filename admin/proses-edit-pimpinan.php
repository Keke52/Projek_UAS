<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['pimpinan_id'];
$nrk=$_POST['nrk'];
$nama_karyawan=$_POST['nama_karyawan'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$jabatan_karyawan=$_POST['jabatan_karyawan'];
$unit_kerja_karyawan=$_POST['unit_kerja_karyawan'];

$ubah=$koneksi->query("update Karyawan_pimpinan1 set nrk='$nrk', nama_karyawan='$nama_karyawan' , jenis_kelamin='$jenis_kelamin' , 
						jabatan_karyawan='$jabatan_karyawan' ,unit_kerja_karyawan='$unit_kerja_karyawan' where pimpinan_id='$id'");

if($ubah==true){

    header("location:tampil-pimpinan.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>