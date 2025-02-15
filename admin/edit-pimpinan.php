<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php include "header.php"; ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="proses-edit-pimpinan.php" method="POST">
                <?php
                $id=$_GET['id'];
                include "../koneksi.php";
                $tampil=$koneksi->query("select * from karyawan_pimpinan1 where pimpinan_id='$id'");
                $row=$tampil->fetch_assoc();
                ?>
                    <div class="form-group">
                        <label for="nrp">NRK</label>
                        <input type="hidden" name="pimpinan_id" value="<?php echo $row['pimpinan_id']?>" class="form-control">
                        <input type="number" name="nrk" value="<?php echo $row['nrk']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="nama">NAMA KARYAWAN</label>
                        <input type="text" name="nama_karyawan" value="<?php echo $row['nama_karyawan']?>" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="jenis_kelamin">JENIS KELAMIN</label>
                        <select name="jenis_kelamin" class="form-control">
                            <option value="<?php echo $row['jenis_kelamin']?>" selected><?php echo $row['jenis_kelamin']?></option>
                            <option value="Laki-laki">Laki-Laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="jabatan_karyawan">jABATAN KARYAWAN</label>
                        <textarea name="jabatan_karyawan" class="form-control"><?php echo $row['jabatan_karyawan']?></textarea>
                    </div>

                     <div class="form-group">
                        <label for="unit_kerja_karyawan">UNIT KERJA KARYAWAN</label>
                        <textarea name="unit_kerja_karyawan" class="form-control"><?php echo $row['unit_kerja_karyawan']?></textarea>
                    </div>
            

                    <input type="submit" name="kirim" value="UBAH" class="btn btn-info">
                    <input type="reset" name="kosongkan" value="Kosongkan" class="btn btn-danger">
                </form>
            </div>
        </div>
    </div>

<?php include "footer.php";?>