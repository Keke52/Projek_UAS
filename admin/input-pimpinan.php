<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php include "header.php";?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="proses-input-pimpinan.php" method="POST">
                    <div class="form-group">
                        <label for="nrk">NRK</label>
                        <input type="number" name="nrk" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="nama_karyawan">NAMA PIMPINAN</label>
                        <input type="text" name="nama_karyawan" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="jenis_kelamin">JENIS KELAMIN</label>
                        <select name="jenis_kelamin" class="form-control">
                            <option value="Laki-laki">Laki-Laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="jabatan_karyawan">JABATAN PIMPINAN</label>
                        <textarea name="jabatan_karyawan" class="form-control"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="unit_kerja_karyawan">UNIT KERJA PIMPINAN</label>
                        <textarea name="unit_kerja_karyawan" class="form-control"></textarea>
                    </div>


                    <input type="submit" name="kirim" value="SIMPAN" class="btn btn-info">
                    <input type="reset" name="kosongkan" value="Kosongkan" class="btn btn-danger">
                </form>
            </div>
        </div>
    </div>
<?php include "footer.php";?>